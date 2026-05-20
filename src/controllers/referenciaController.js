import Referencia    from "../models/Referencia.js";
import TipoFuente   from "../models/TipoFuente.js";
import Autor        from "../models/Autor.js";
import ReferenciaAutor  from "../models/ReferenciaAutor.js";
import PalabraClave from "../models/PalabraClave.js";
import ReferenciaPalabra from "../models/ReferenciaPalabra.js";
import Libro        from "../models/Libro.js";
import Tesis        from "../models/Tesis.js";
import ArticuloRevista from "../models/ArticuloRevista.js";
import PaginaWeb    from "../models/PaginaWeb.js";
import Area           from "../models/Area.js";
import Materia        from "../models/Materia.js";
import Tema           from "../models/Tema.js";
import ReferenciaTema from "../models/ReferenciaTema.js";

// ─── Helper: serializa el árbol Area→Materia→Tema a JSON seguro para Pug ──────
const serializarAreas = (areas) => JSON.stringify(
  areas.map(a => ({
    id_area:  a.id_area,
    nombre:   a.nombre,
    materias: (a.materias || []).map(m => ({
      id_materia: m.id_materia,
      nombre:     m.nombre,
      temas:      (m.temas || []).map(t => ({
        id_tema:     t.id_tema,
        nombre:      t.nombre,
        numero_tema: t.numero_tema,
      })),
    })),
  }))
);

// ─── Helper: middleware de sesión ──────────────────────────────────────────────
export const requiereLogin = (req, res, next) => {
  if (!req.session?.usuario) {
    return res.redirect("/");
  }
  next();
};

// ─── Helper: carga completa de una referencia con todas sus relaciones ─────────
const cargarReferencia = (id_referencia) =>
  Referencia.findByPk(id_referencia, {
    include: [
      { model: TipoFuente },
      { model: Autor, through: { attributes: ["orden_autor", "rol_autor"] } },
      { model: PalabraClave },
      { model: Libro        },
      { model: Tesis        },
      { model: ArticuloRevista },
      { model: PaginaWeb    },
      { model: Tema, include: [{ model: Materia, include: [{ model: Area }] }] },
    ],
  });

// ─── Helper: sub-tabla según tipo ─────────────────────────────────────────────
const SUBMODELOS = {
  "Libro":               Libro,
  "Tesis":               Tesis,
  "Artículo de Revista": ArticuloRevista,
  "Página Web":          PaginaWeb,
};

// Cuando dos inputs comparten el mismo name, Express genera un array.
// Esta función siempre devuelve el primer valor string o null.
const scalar = (val) => {
  if (val === undefined || val === "" || val === null) return null;
  if (Array.isArray(val)) {
    const first = val.find(v => v !== "");
    return first !== undefined ? String(first) : null;
  }
  return String(val);
};

const CAMPOS_SUBTIPO = {
  "Libro": [
    "isbn13","isbn10","editorial","ciudad_publicacion",
    "pais_publicacion","edicion","numero_edicion","total_paginas",
    "volumen_libro",          // nombre único en el form; se mapea abajo
  ],
  "Tesis": [
    "grado","institucion","facultad","departamento",
    "ciudad","pais","director_tesis","codirector","total_paginas",
  ],
  "Artículo de Revista": [
    "nombre_revista","issn","eissn",
    "volumen_art",            // nombre único en el form
    "numero","pagina_inicio","pagina_fin",
    "editorial_art",          // nombre único en el form
  ],
  "Página Web": [
    "nombre_sitio","fecha_consulta","fecha_publicacion",
  ],
};

// Mapeo form-name → columna real en BD para campos con nombre único
const ALIAS_CAMPO = {
  volumen_libro: "volumen",
  volumen_art:   "volumen",
  editorial_art: "editorial",
};

// ─── GET /referencias ──────────────────────────────────────────────────────────
// Lista todas las referencias del usuario en sesión
export const listarReferencias = async (req, res) => {
  const { id_usuario, rol } = req.session.usuario;

  try {
    // Los Administradores ven todas; alumnos y profesores ven solo las suyas
    const where = rol === "Administrador" ? {} : { id_usuario };

    const [referencias, areas] = await Promise.all([
      Referencia.findAll({
        where,
        include: [
          { model: TipoFuente },
          { model: Autor, through: { attributes: ["orden_autor", "rol_autor"] } },
          { model: Tema, include: [{ model: Materia, include: [{ model: Area }] }] },
        ],
        order: [["fecha_registro", "DESC"]],
      }),
      Area.findAll({
        include: [{ model: Materia, include: [{ model: Tema, order: [["numero_tema","ASC"]] }] }],
        order: [["nombre", "ASC"]],
      }),
    ]);

    return res.render("referencias/lista", {
      referencias,
      areas,
      areasJSON: serializarAreas(areas),
      usuario: req.session.usuario,
      error: null,
      exito: null,
    });

  } catch (error) {
    console.error("listarReferencias:", error);
    return res.status(500).send("Error al cargar las referencias.");
  }
};

// ─── GET /referencias/nueva ────────────────────────────────────────────────────
export const mostrarFormularioNueva = async (req, res) => {
  try {
    const [tiposFuente, areas] = await Promise.all([
      TipoFuente.findAll(),
      Area.findAll({
        include: [{ model: Materia, include: [{ model: Tema, order: [["numero_tema","ASC"]] }] }],
        order: [["nombre", "ASC"]],
      }),
    ]);

    return res.render("referencias/nueva", {
      tiposFuente,
      areas,
      areasJSON: serializarAreas(areas),
      usuario: req.session.usuario,
      error: null,
    });

  } catch (error) {
    console.error("mostrarFormularioNueva:", error);
    return res.status(500).send("Error al cargar el formulario.");
  }
};

// ─── POST /referencias ─────────────────────────────────────────────────────────
// Crea referencia base + subtipo + autores + palabras clave en una sola operación
export const crearReferencia = async (req, res) => {
  const { id_usuario } = req.session.usuario;

  const {
    id_tipo_fuente, titulo, subtitulo, anio_publicacion,
    idioma, doi, url, resumen,
    // Autores: arreglos paralelos enviados desde el form
    autor_nombres, autor_ap, autor_am, autor_orden, autor_rol,
    // Palabras clave separadas por coma
    palabras_clave,
    // Campos de subtipo (todos opcionales según tipo)
    ...camposExtra
  } = req.body;

  if (!titulo || !id_tipo_fuente) {
    const tiposFuente = await TipoFuente.findAll();
    return res.render("referencias/nueva", {
      tiposFuente,
      usuario: req.session.usuario,
      error: "El título y el tipo de fuente son obligatorios.",
    });
  }

  try {
    // 1. Crear referencia base
    const referencia = await Referencia.create({
      id_usuario,
      id_tipo_fuente,
      titulo,
      subtitulo:         subtitulo         || null,
      anio_publicacion:  anio_publicacion   || null,
      idioma:            idioma             || null,
      doi:               doi                || null,
      url:               url                || null,
      resumen:           resumen            || null,
    });

    // 2. Crear subtipo según tipo de fuente
    const tipoFuente = await TipoFuente.findByPk(id_tipo_fuente);
    const nombreTipo = tipoFuente?.nombre;
    const SubModelo  = SUBMODELOS[nombreTipo];

    if (SubModelo) {
      const campos = CAMPOS_SUBTIPO[nombreTipo] || [];
      const datosSubtipo = { id_referencia: referencia.id_referencia };

      campos.forEach(campo => {
        const val = scalar(camposExtra[campo]);
        if (val !== null) {
          const colName = ALIAS_CAMPO[campo] ?? campo;
          datosSubtipo[colName] = val;
        }
      });

      await SubModelo.create(datosSubtipo);
    }

    // 3. Crear/vincular autores
    const nombres  = [].concat(autor_nombres || []);
    const aps      = [].concat(autor_ap      || []);
    const ams      = [].concat(autor_am      || []);
    const ordenes  = [].concat(autor_orden   || []);
    const roles    = [].concat(autor_rol     || []);

    for (let i = 0; i < nombres.length; i++) {
      if (!nombres[i] || !aps[i]) continue;

      // findOrCreate para reutilizar autores existentes
      const [autor] = await Autor.findOrCreate({
        where: {
          nombres:          nombres[i].trim(),
          apellido_paterno: aps[i].trim(),
        },
        defaults: {
          apellido_materno:       ams[i]  || null,
          institucion_afiliacion: null,
          email:                  null,
        },
      });

      await ReferenciaAutor.create({
        id_referencia: referencia.id_referencia,
        id_autor:      autor.id_autor,
        orden_autor:   parseInt(ordenes[i]) || i + 1,
        rol_autor:     roles[i] || "Autor",
      });
    }

    // 4. Palabras clave
    if (palabras_clave) {
      const lista = String(palabras_clave)
        .split(",")
        .map(p => p.trim().toLowerCase())
        .filter(Boolean);

      for (const palabra of lista) {
        const [pc] = await PalabraClave.findOrCreate({ where: { palabra } });
        await ReferenciaPalabra.findOrCreate({
          where: {
            id_referencia: referencia.id_referencia,
            id_palabra:    pc.id_palabra,
          },
        });
      }
    }

    // 5. Temas (checkboxes múltiples → array de ids)
    const temaIds = [].concat(req.body.temas || []).map(Number).filter(Boolean);
    for (const id_tema of temaIds) {
      await ReferenciaTema.findOrCreate({
        where: { id_referencia: referencia.id_referencia, id_tema },
      });
    }

    return res.redirect(`/referencias/${referencia.id_referencia}`);

  } catch (error) {
    console.error("crearReferencia:", error);
    const [tiposFuente, areas] = await Promise.all([
      TipoFuente.findAll(),
      Area.findAll({
        include: [{ model: Materia, include: [{ model: Tema, order: [["numero_tema","ASC"]] }] }],
        order: [["nombre", "ASC"]],
      }),
    ]);
    return res.render("referencias/nueva", {
      tiposFuente,
      areas,
      areasJSON: serializarAreas(areas),
      usuario: req.session.usuario,
      error: "Error al guardar la referencia. Revisa los datos.",
    });
  }
};

// ─── GET /referencias/:id ──────────────────────────────────────────────────────
export const verReferencia = async (req, res) => {
  const { id } = req.params;

  try {
    const referencia = await cargarReferencia(id);

    if (!referencia) {
      return res.status(404).send("Referencia no encontrada.");
    }

    return res.render("referencias/detalle", {
      referencia,
      usuario: req.session.usuario,
      error: null,
      exito: null,
    });

  } catch (error) {
    console.error("verReferencia:", error);
    return res.status(500).send("Error al cargar la referencia.");
  }
};

// ─── GET /referencias/:id/editar ───────────────────────────────────────────────
export const mostrarFormularioEditar = async (req, res) => {
  const { id } = req.params;
  const { id_usuario, rol } = req.session.usuario;

  try {
    const [referencia, tiposFuente, areas] = await Promise.all([
      cargarReferencia(id),
      TipoFuente.findAll(),
      Area.findAll({
        include: [{ model: Materia, include: [{ model: Tema, order: [["numero_tema","ASC"]] }] }],
        order: [["nombre", "ASC"]],
      }),
    ]);

    if (!referencia) {
      return res.status(404).send("Referencia no encontrada.");
    }

    // Solo el dueño o un Administrador puede editar
    if (referencia.id_usuario !== id_usuario && rol !== "Administrador") {
      return res.status(403).send("No tienes permiso para editar esta referencia.");
    }

    // IDs de temas ya asociados (para marcar checkboxes)
    const temasSeleccionados = (referencia.temas || []).map(t => t.id_tema);

    return res.render("referencias/editar", {
      referencia,
      tiposFuente,
      areas,
      areasJSON: serializarAreas(areas),
      temasSeleccionados,
      temasJSON: JSON.stringify(temasSeleccionados),
      usuario: req.session.usuario,
      error: null,
    });

  } catch (error) {
    console.error("mostrarFormularioEditar:", error);
    return res.status(500).send("Error al cargar el formulario.");
  }
};

// ─── POST /referencias/:id/editar ─────────────────────────────────────────────
export const actualizarReferencia = async (req, res) => {
  const { id } = req.params;
  const { id_usuario, rol } = req.session.usuario;

  try {
    const referencia = await Referencia.findByPk(id);

    if (!referencia) {
      return res.status(404).send("Referencia no encontrada.");
    }

    if (referencia.id_usuario !== id_usuario && rol !== "Administrador") {
      return res.status(403).send("No tienes permiso para editar esta referencia.");
    }

    const {
      titulo, subtitulo, anio_publicacion, idioma, doi, url, resumen,
      palabras_clave,
      ...camposExtra
    } = req.body;

    await referencia.update({
      titulo:           titulo            || referencia.titulo,
      subtitulo:        subtitulo         || null,
      anio_publicacion: anio_publicacion  || null,
      idioma:           idioma            || null,
      doi:              doi               || null,
      url:              url               || null,
      resumen:          resumen           || null,
    });

    // Actualizar subtipo si existe
    const tipoFuente = await TipoFuente.findByPk(referencia.id_tipo_fuente);
    const nombreTipo = tipoFuente?.nombre;
    const SubModelo  = SUBMODELOS[nombreTipo];

    if (SubModelo) {
      const campos = CAMPOS_SUBTIPO[nombreTipo] || [];
      const datosSubtipo = {};

      campos.forEach(campo => {
        if (camposExtra[campo] !== undefined) {
          const colName = ALIAS_CAMPO[campo] ?? campo;
          datosSubtipo[colName] = scalar(camposExtra[campo]);
        }
      });

      await SubModelo.update(datosSubtipo, {
        where: { id_referencia: referencia.id_referencia },
      });
    }

    // Actualizar palabras clave: borrar relaciones previas y recrear
    await ReferenciaPalabra.destroy({ where: { id_referencia: referencia.id_referencia } });

    if (palabras_clave) {
      const lista = String(palabras_clave)
        .split(",")
        .map(p => p.trim().toLowerCase())
        .filter(Boolean);

      for (const palabra of lista) {
        const [pc] = await PalabraClave.findOrCreate({ where: { palabra } });
        await ReferenciaPalabra.create({
          id_referencia: referencia.id_referencia,
          id_palabra:    pc.id_palabra,
        });
      }
    }

    // Actualizar temas: borrar y recrear
    await ReferenciaTema.destroy({ where: { id_referencia: referencia.id_referencia } });
    const temaIds = [].concat(req.body.temas || []).map(Number).filter(Boolean);
    for (const id_tema of temaIds) {
      await ReferenciaTema.create({ id_referencia: referencia.id_referencia, id_tema });
    }

    return res.redirect(`/referencias/${referencia.id_referencia}`);

  } catch (error) {
    console.error("actualizarReferencia:", error);
    return res.status(500).send("Error al actualizar la referencia.");
  }
};

// ─── POST /referencias/:id/eliminar ───────────────────────────────────────────
export const eliminarReferencia = async (req, res) => {
  const { id } = req.params;
  const { id_usuario, rol } = req.session.usuario;

  try {
    const referencia = await Referencia.findByPk(id);

    if (!referencia) {
      return res.status(404).send("Referencia no encontrada.");
    }

    if (referencia.id_usuario !== id_usuario && rol !== "Administrador") {
      return res.status(403).send("No tienes permiso para eliminar esta referencia.");
    }

    await referencia.destroy();

    return res.redirect("/referencias");

  } catch (error) {
    console.error("eliminarReferencia:", error);
    return res.status(500).send("Error al eliminar la referencia.");
  }
};