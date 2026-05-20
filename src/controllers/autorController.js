import {
  Autor,
  Referencia,
} from "../models/index.js";


// ─── GET /autores ──────────────────────────────────────────────────────────────
export const listarAutores = async (req, res) => {
  try {
    const autores = await Autor.findAll({
      order: [
        ["apellido_paterno", "ASC"],
        ["nombres",          "ASC"],
      ],
    });

    return res.render("autores/lista", {
      autores,
      usuario: req.session.usuario,
      error:   null,
      exito:   null,
    });

  } catch (error) {
    console.error("listarAutores:", error);
    return res.status(500).send("Error al cargar los autores.");
  }
};

// ─── GET /autores/nuevo ────────────────────────────────────────────────────────
export const mostrarFormularioNuevo = (req, res) => {
  return res.render("autores/nuevo", {
    usuario: req.session.usuario,
    error:   null,
  });
};

// ─── POST /autores ─────────────────────────────────────────────────────────────
export const crearAutor = async (req, res) => {
  const {
    nombres, apellido_paterno, apellido_materno,
    institucion_afiliacion, email,
  } = req.body;

  if (!nombres || !apellido_paterno) {
    return res.render("autores/nuevo", {
      usuario: req.session.usuario,
      error:   "Nombre y apellido paterno son obligatorios.",
    });
  }

  try {
    await Autor.create({
      nombres:               nombres.trim(),
      apellido_paterno:      apellido_paterno.trim(),
      apellido_materno:      apellido_materno  || null,
      institucion_afiliacion: institucion_afiliacion || null,
      email:                 email             || null,
    });

    return res.redirect("/autores");

  } catch (error) {
    console.error("crearAutor:", error);
    return res.render("autores/nuevo", {
      usuario: req.session.usuario,
      error:   "Error al guardar el autor. Verifica los datos.",
    });
  }
};

// ─── GET /autores/:id ──────────────────────────────────────────────────────────
export const verAutor = async (req, res) => {
  const { id } = req.params;

  try {
    const autor = await Autor.findByPk(id, {
      include: [{ model: Referencia }],
    });

    if (!autor) {
      return res.status(404).send("Autor no encontrado.");
    }

    return res.render("autores/detalle", {
      autor,
      usuario: req.session.usuario,
    });

  } catch (error) {
    console.error("verAutor:", error);
    return res.status(500).send("Error al cargar el autor.");
  }
};

// ─── GET /autores/:id/editar ───────────────────────────────────────────────────
export const mostrarFormularioEditar = async (req, res) => {
  const { id } = req.params;

  try {
    const autor = await Autor.findByPk(id);

    if (!autor) {
      return res.status(404).send("Autor no encontrado.");
    }

    return res.render("autores/editar", {
      autor,
      usuario: req.session.usuario,
      error:   null,
    });

  } catch (error) {
    console.error("mostrarFormularioEditar (autor):", error);
    return res.status(500).send("Error al cargar el formulario.");
  }
};

// ─── POST /autores/:id/editar ──────────────────────────────────────────────────
export const actualizarAutor = async (req, res) => {
  const { id } = req.params;
  const {
    nombres, apellido_paterno, apellido_materno,
    institucion_afiliacion, email,
  } = req.body;

  try {
    const autor = await Autor.findByPk(id);

    if (!autor) {
      return res.status(404).send("Autor no encontrado.");
    }

    await autor.update({
      nombres:               nombres?.trim()           || autor.nombres,
      apellido_paterno:      apellido_paterno?.trim()   || autor.apellido_paterno,
      apellido_materno:      apellido_materno           || null,
      institucion_afiliacion: institucion_afiliacion    || null,
      email:                 email                      || null,
    });

    return res.redirect("/autores");

  } catch (error) {
    console.error("actualizarAutor:", error);
    return res.status(500).send("Error al actualizar el autor.");
  }
};

// ─── POST /autores/:id/eliminar ────────────────────────────────────────────────
export const eliminarAutor = async (req, res) => {
  const { id }  = req.params;
  const { rol } = req.session.usuario;

  if (rol !== "Administrador") {
    return res.status(403).send("Solo un Administrador puede eliminar autores.");
  }

  try {
    const autor = await Autor.findByPk(id);

    if (!autor) {
      return res.status(404).send("Autor no encontrado.");
    }

    await autor.destroy();
    return res.redirect("/autores");

  } catch (error) {
    console.error("eliminarAutor:", error);
    return res.status(500).send("Error al eliminar el autor.");
  }
};