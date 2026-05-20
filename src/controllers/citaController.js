import {
  CitaGenerada,
  FormatoCita,
  Referencia,
  TipoFuente,
  Autor,
  Libro,
  Tesis,
  ArticuloRevista,
  PaginaWeb,
} from "../models/index.js";


// Ayudantes para formato

// Ordena autores por orden_autor
const ordenarAutores = (autores) =>
  [...autores].sort(
    (a, b) => (a.referencia_autor?.orden_autor ?? 0) - (b.referencia_autor?.orden_autor ?? 0)
  );

// "Apellido, I." para APA / Chicago
const apellidoInicial = (a) => {
  const inicial = a.nombres ? a.nombres.charAt(0).toUpperCase() + "." : "";
  return `${a.apellido_paterno}${a.apellido_materno ? " " + a.apellido_materno : ""}, ${inicial}`;
};

// "I. Apellido" para IEEE
const inicialApellido = (a) => {
  const inicial = a.nombres ? a.nombres.charAt(0).toUpperCase() + ". " : "";
  return `${inicial}${a.apellido_paterno}`;
};

// "Nombre Apellido" para MLA
const nombreCompleto = (a) =>
  `${a.nombres} ${a.apellido_paterno}${a.apellido_materno ? " " + a.apellido_materno : ""}`;

// Lista de autores en distintos formatos
const listaAutoresAPA = (autores) => {
  const a = ordenarAutores(autores).map(apellidoInicial);
  if (a.length === 0) return "Autor desconocido";
  if (a.length === 1) return a[0];
  if (a.length <= 20) return a.slice(0, -1).join(", ") + " & " + a.at(-1);
  return a.slice(0, 19).join(", ") + ", ... " + a.at(-1);
};

const listaAutoresIEEE = (autores) => {
  const a = ordenarAutores(autores).map(inicialApellido);
  if (a.length === 0) return "Autor desconocido";
  if (a.length <= 3) return a.join(", ");
  return a[0] + " et al.";
};

const listaAutoresMLA = (autores) => {
  const a = ordenarAutores(autores);
  if (a.length === 0) return "Desconocido";
  if (a.length === 1) return `${a[0].apellido_paterno}, ${a[0].nombres}`;
  if (a.length === 2) return `${a[0].apellido_paterno}, ${a[0].nombres} y ${nombreCompleto(a[1])}`;
  return `${a[0].apellido_paterno}, ${a[0].nombres}, et al.`;
};

const listaAutoresChicago = (autores) => {
  const a = ordenarAutores(autores);
  if (a.length === 0) return "Autor desconocido";
  const primero = `${a[0].apellido_paterno}, ${a[0].nombres}`;
  if (a.length === 1) return primero;
  const resto = a.slice(1).map(nombreCompleto);
  if (a.length <= 3) return primero + " y " + resto.join(" y ");
  return primero + " et al.";
};

//Aqui se genera la referencia completa
const generarAPA = (ref, autores, subtipo, tipo) => {
  const a   = listaAutoresAPA(autores);
  const año = ref.anio_publicacion ? `(${ref.anio_publicacion})` : "(s.f.)";
  const titulo = `*${ref.titulo}${ref.subtitulo ? ": " + ref.subtitulo : ""}*`;

  switch (tipo) {
    case "Libro": {
      const ed  = subtipo?.editorial || "Editorial desconocida";
      const num = subtipo?.numero_edicion ? ` (${subtipo.numero_edicion}.ª ed.)` : "";
      return {
        cita:       `(${a.split(",")[0]}, ${ref.anio_publicacion || "s.f."})`,
        referencia: `${a} ${año}. ${titulo}${num}. ${ed}.`,
      };
    }
    case "Tesis": {
      const grado = subtipo?.grado || "Tesis";
      const inst  = subtipo?.institucion || "";
      return {
        cita:       `(${a.split(",")[0]}, ${ref.anio_publicacion || "s.f."})`,
        referencia: `${a} ${año}. ${titulo} [${grado}, ${inst}].`,
      };
    }
    case "Artículo de Revista": {
      const rev = subtipo?.nombre_revista ? `*${subtipo.nombre_revista}*` : "";
      const vol = subtipo?.volumen ? `, *${subtipo.volumen}*` : "";
      const num = subtipo?.numero  ? `(${subtipo.numero})`   : "";
      const pag = subtipo?.pagina_inicio
        ? `, ${subtipo.pagina_inicio}${subtipo.pagina_fin ? "–" + subtipo.pagina_fin : ""}`
        : "";
      const doi = ref.doi ? ` https://doi.org/${ref.doi}` : ref.url ? ` ${ref.url}` : "";
      return {
        cita:       `(${a.split(",")[0]}, ${ref.anio_publicacion || "s.f."})`,
        referencia: `${a} ${año}. ${ref.titulo}. ${rev}${vol}${num}${pag}.${doi}`,
      };
    }
    case "Página Web": {
      const fecha = subtipo?.fecha_consulta
        ? ` Recuperado el ${subtipo.fecha_consulta}`
        : "";
      const sitio = subtipo?.nombre_sitio ? `${subtipo.nombre_sitio}.` : "";
      return {
        cita:       `(${a.split(",")[0]}, ${ref.anio_publicacion || "s.f."})`,
        referencia: `${a} ${año}. ${ref.titulo}. ${sitio}${fecha}. ${ref.url || ""}`,
      };
    }
    default:
      return {
        cita:       `(${a.split(",")[0]}, ${ref.anio_publicacion || "s.f."})`,
        referencia: `${a} ${año}. ${titulo}.`,
      };
  }
};

const generarIEEE = (ref, autores, subtipo, tipo) => {
  const a   = listaAutoresIEEE(autores);
  const año = ref.anio_publicacion || "s.f.";

  switch (tipo) {
    case "Libro": {
      const ed  = subtipo?.editorial || "Editorial desconocida";
      const num = subtipo?.numero_edicion ? `, ${subtipo.numero_edicion}ª ed.` : "";
      return {
        cita:       `[N]`,   // el número se asigna en la vista al indexar
        referencia: `${a}, *${ref.titulo}*${num}. ${ed}, ${año}.`,
      };
    }
    case "Tesis": {
      const grado = subtipo?.grado || "Tesis";
      const inst  = subtipo?.institucion || "";
      return {
        cita:       `[N]`,
        referencia: `${a}, "${ref.titulo}," ${grado} thesis, ${inst}, ${año}.`,
      };
    }
    case "Artículo de Revista": {
      const rev = subtipo?.nombre_revista || "Revista";
      const vol = subtipo?.volumen ? `, vol. ${subtipo.volumen}` : "";
      const num = subtipo?.numero  ? `, no. ${subtipo.numero}`  : "";
      const pag = subtipo?.pagina_inicio
        ? `, pp. ${subtipo.pagina_inicio}${subtipo.pagina_fin ? "–" + subtipo.pagina_fin : ""}`
        : "";
      return {
        cita:       `[N]`,
        referencia: `${a}, "${ref.titulo}," *${rev}*${vol}${num}${pag}, ${año}.`,
      };
    }
    case "Página Web": {
      const fecha = subtipo?.fecha_consulta ? ` (accedido ${subtipo.fecha_consulta})` : "";
      return {
        cita:       `[N]`,
        referencia: `${a}, "${ref.titulo}," ${ref.url || ""}${fecha}.`,
      };
    }
    default:
      return {
        cita:       `[N]`,
        referencia: `${a}, "${ref.titulo}," ${año}.`,
      };
  }
};

const generarMLA = (ref, autores, subtipo, tipo) => {
  const a   = listaAutoresMLA(autores);
  const año = ref.anio_publicacion || "s.f.";

  switch (tipo) {
    case "Libro": {
      const ed  = subtipo?.editorial || "Editorial desconocida";
      return {
        cita:       `(${a.split(",")[0]} ${año})`,
        referencia: `${a}. *${ref.titulo}*. ${ed}, ${año}.`,
      };
    }
    case "Tesis": {
      const grado = subtipo?.grado || "Tesis";
      const inst  = subtipo?.institucion || "";
      return {
        cita:       `(${a.split(",")[0]} ${año})`,
        referencia: `${a}. "${ref.titulo}." ${grado}, ${inst}, ${año}.`,
      };
    }
    case "Artículo de Revista": {
      const rev = subtipo?.nombre_revista || "Revista";
      const vol = subtipo?.volumen ? `, vol. ${subtipo.volumen}` : "";
      const num = subtipo?.numero  ? `, no. ${subtipo.numero}`  : "";
      const pag = subtipo?.pagina_inicio
        ? `, pp. ${subtipo.pagina_inicio}${subtipo.pagina_fin ? "–" + subtipo.pagina_fin : ""}`
        : "";
      return {
        cita:       `(${a.split(",")[0]} ${año})`,
        referencia: `${a}. "${ref.titulo}." *${rev}*${vol}${num}${pag}, ${año}.`,
      };
    }
    case "Página Web": {
      const fecha = subtipo?.fecha_consulta ? ` Accedido ${subtipo.fecha_consulta}.` : "";
      return {
        cita:       `(${a.split(",")[0]})`,
        referencia: `${a}. "${ref.titulo}." ${ref.url || ""}.${fecha}`,
      };
    }
    default:
      return {
        cita:       `(${a.split(",")[0]} ${año})`,
        referencia: `${a}. *${ref.titulo}*. ${año}.`,
      };
  }
};

const generarChicago = (ref, autores, subtipo, tipo) => {
  const a   = listaAutoresChicago(autores);
  const año = ref.anio_publicacion || "s.f.";

  switch (tipo) {
    case "Libro": {
      const ed  = subtipo?.editorial || "Editorial desconocida";
      return {
        cita:       `(${a.split(",")[0]} ${año})`,
        referencia: `${a}. *${ref.titulo}*. ${ed}, ${año}.`,
      };
    }
    case "Tesis": {
      const grado = subtipo?.grado || "Tesis";
      const inst  = subtipo?.institucion || "";
      return {
        cita:       `(${a.split(",")[0]} ${año})`,
        referencia: `${a}. "${ref.titulo}." ${grado} thesis, ${inst}, ${año}.`,
      };
    }
    case "Artículo de Revista": {
      const rev = subtipo?.nombre_revista || "Revista";
      const vol = subtipo?.volumen ? ` ${subtipo.volumen}` : "";
      const num = subtipo?.numero  ? `, no. ${subtipo.numero}` : "";
      const pag = subtipo?.pagina_inicio
        ? `: ${subtipo.pagina_inicio}${subtipo.pagina_fin ? "–" + subtipo.pagina_fin : ""}`
        : "";
      return {
        cita:       `(${a.split(",")[0]} ${año})`,
        referencia: `${a}. "${ref.titulo}." *${rev}*${vol}${num} (${año})${pag}.`,
      };
    }
    case "Página Web": {
      const fecha = subtipo?.fecha_consulta ? `. Accedido ${subtipo.fecha_consulta}` : "";
      return {
        cita:       `(${a.split(",")[0]})`,
        referencia: `${a}. "${ref.titulo}." ${ref.url || ""}${fecha}.`,
      };
    }
    default:
      return {
        cita:       `(${a.split(",")[0]} ${año})`,
        referencia: `${a}. *${ref.titulo}*. ${año}.`,
      };
  }
};

const GENERADORES = {
  APA:     generarAPA,
  IEEE:    generarIEEE,
  MLA:     generarMLA,
  Chicago: generarChicago,
};

// ─── Helper: carga referencia completa ────────────────────────────────────────
const cargarReferenciaCompleta = async (id_referencia) => {
  const ref = await Referencia.findByPk(id_referencia, {
    include: [
      { model: TipoFuente },
      { model: Autor },
      { model: Libro         },
      { model: Tesis         },
      { model: ArticuloRevista },
      { model: PaginaWeb     },
    ],
  });
  return ref;
};

// ─── GET /referencias/:id/citar ────────────────────────────────────────────────
// Muestra el formulario para elegir formato y genera la vista previa
export const mostrarFormularioCita = async (req, res) => {
  const { id } = req.params;

  try {
    const referencia = await cargarReferenciaCompleta(id);

    if (!referencia) {
      return res.status(404).send("Referencia no encontrada.");
    }

    const formatos = await FormatoCita.findAll({ where: { activo: 1 } });

    // Citas ya generadas para esta referencia por este usuario
    const citasGuardadas = await CitaGenerada.findAll({
      where: {
        id_referencia: id,
        id_usuario:    req.session.usuario.id_usuario,
      },
      include: [{ model: FormatoCita }],
    });

    return res.render("referencias/citar", {
      referencia,
      formatos,
      citasGuardadas,
      usuario: req.session.usuario,
      error:   null,
      exito:   null,
    });

  } catch (error) {
    console.error("mostrarFormularioCita:", error);
    return res.status(500).send("Error al cargar el generador de citas.");
  }
};

// ─── POST /referencias/:id/citar ──────────────────────────────────────────────
// Genera y guarda la cita en el formato elegido
export const generarCita = async (req, res) => {
  const { id }         = req.params;
  const { id_formato } = req.body;
  const { id_usuario } = req.session.usuario;

  try {
    const referencia = await cargarReferenciaCompleta(id);
    const formato    = await FormatoCita.findByPk(id_formato);

    if (!referencia || !formato) {
      return res.status(404).send("Referencia o formato no encontrado.");
    }

    const tipo     = referencia.tipos_fuente?.nombre;
    const autores  = referencia.autors || [];
    const subtipo  =
      referencia.libro          ||
      referencia.tesi           ||
      referencia.articulo_revista ||
      referencia.pagina_web     ||
      null;

    const generador = GENERADORES[formato.nombre];

    let textoCita = "(cita no disponible)";
    let textoRef  = referencia.titulo;

    if (generador) {
      const resultado = generador(referencia, autores, subtipo, tipo);
      textoCita = resultado.cita;
      textoRef  = resultado.referencia;
    }

    // Upsert: si ya existe para esa combinación, actualizar
    const [cita] = await CitaGenerada.findOrCreate({
      where: {
        id_referencia: referencia.id_referencia,
        id_formato,
        id_usuario,
      },
      defaults: {
        texto_cita:                textoCita,
        texto_referencia_completa: textoRef,
        verificada:                0,
      },
    });

    // Si ya existía, actualizar el texto (por si cambió la referencia)
    if (!cita._options?.isNewRecord) {
      await cita.update({
        texto_cita:                textoCita,
        texto_referencia_completa: textoRef,
      });
    }

    const formatos = await FormatoCita.findAll({ where: { activo: 1 } });
    const citasGuardadas = await CitaGenerada.findAll({
      where: { id_referencia: id, id_usuario },
      include: [{ model: FormatoCita }],
    });

    return res.render("referencias/citar", {
      referencia,
      formatos,
      citasGuardadas,
      citaGenerada: { texto_cita: textoCita, texto_referencia_completa: textoRef, formato },
      usuario:      req.session.usuario,
      error:        null,
      exito:        `Cita ${formato.nombre} generada correctamente.`,
    });

  } catch (error) {
    console.error("generarCita:", error);
    return res.status(500).send("Error al generar la cita.");
  }
};

// ─── GET /mis-citas ─────────────────────────────────────────────────────────
// Lista todas las citas generadas por el usuario
export const listarMisCitas = async (req, res) => {
  const { id_usuario } = req.session.usuario;

  try {
    const citas = await CitaGenerada.findAll({
      where: { id_usuario },
      include: [
        {
          model: Referencia,
          include: [{ model: TipoFuente }, { model: Autor }],
        },
        { model: FormatoCita },
      ],
      order: [["id_cita", "DESC"]],
    });

    return res.render("referencias/mis_citas", {
      citas,
      usuario: req.session.usuario,
      error:   null,
    });

  } catch (error) {
    console.error("listarMisCitas:", error);
    return res.status(500).send("Error al cargar las citas.");
  }
};

// ─── POST /mis-citas/:id/eliminar ─────────────────────────────────────────────
export const eliminarCita = async (req, res) => {
  const { id }         = req.params;
  const { id_usuario } = req.session.usuario;

  try {
    const cita = await CitaGenerada.findByPk(id);

    if (!cita || cita.id_usuario !== id_usuario) {
      return res.status(403).send("No puedes eliminar esta cita.");
    }

    await cita.destroy();
    return res.redirect("/mis-citas");

  } catch (error) {
    console.error("eliminarCita:", error);
    return res.status(500).send("Error al eliminar la cita.");
  }
};