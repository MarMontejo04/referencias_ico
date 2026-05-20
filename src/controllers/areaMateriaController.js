import {
  Area,
  Materia,
  Tema,
} from "../models/index.js";


// ══════════════════════════════════════════════════════════
//  ÁREAS
// ══════════════════════════════════════════════════════════

// GET /areas
export const listarAreas = async (req, res) => {
  try {
    const areas = await Area.findAll({
      include: [{ model: Materia, as: "materias" }],
      order: [["nombre", "ASC"]],
    });
    return res.render("areas/lista", {
      areas,
      usuario: req.session.usuario,
      pageTitle: "Áreas",
      activePage: "areas",
      error: null,
      exito: null,
    });
  } catch (error) {
    console.error("listarAreas:", error);
    return res.status(500).send("Error al cargar las áreas.");
  }
};

// GET /areas/nueva
export const mostrarFormularioNuevaArea = (req, res) => {
  return res.render("areas/nueva", {
    usuario: req.session.usuario,
    pageTitle: "Nueva Área",
    activePage: "areas",
    error: null,
  });
};

// POST /areas
export const crearArea = async (req, res) => {
  const { nombre, descripcion } = req.body;

  if (!nombre?.trim()) {
    return res.render("areas/nueva", {
      usuario: req.session.usuario,
      pageTitle: "Nueva Área",
      activePage: "areas",
      error: "El nombre del área es obligatorio.",
    });
  }

  try {
    await Area.create({
      nombre:      nombre.trim(),
      descripcion: descripcion || null,
    });
    return res.redirect("/areas");
  } catch (error) {
    console.error("crearArea:", error);
    return res.render("areas/nueva", {
      usuario: req.session.usuario,
      pageTitle: "Nueva Área",
      activePage: "areas",
      error: "Error al guardar. ¿Ya existe un área con ese nombre?",
    });
  }
};

// GET /areas/:id
export const verArea = async (req, res) => {
  try {
    const area = await Area.findByPk(req.params.id, {
      include: [{
        model: Materia,
        include: [{ model: Tema, as: "temas", order: [["numero_tema", "ASC"]] }],
      }],
    });
    if (!area) return res.status(404).send("Área no encontrada.");

    return res.render("areas/detalle", {
      area,
      usuario: req.session.usuario,
      pageTitle: area.nombre,
      activePage: "areas",
    });
  } catch (error) {
    console.error("verArea:", error);
    return res.status(500).send("Error al cargar el área.");
  }
};

// GET /areas/:id/editar
export const mostrarFormularioEditarArea = async (req, res) => {
  try {
    const area = await Area.findByPk(req.params.id);
    if (!area) return res.status(404).send("Área no encontrada.");

    return res.render("areas/editar", {
      area,
      usuario: req.session.usuario,
      pageTitle: "Editar Área",
      activePage: "areas",
      error: null,
    });
  } catch (error) {
    console.error("mostrarFormularioEditarArea:", error);
    return res.status(500).send("Error al cargar el formulario.");
  }
};

// POST /areas/:id/editar
export const actualizarArea = async (req, res) => {
  const { nombre, descripcion } = req.body;
  try {
    const area = await Area.findByPk(req.params.id);
    if (!area) return res.status(404).send("Área no encontrada.");

    await area.update({
      nombre:      nombre?.trim() || area.nombre,
      descripcion: descripcion    || null,
    });
    return res.redirect(`/areas/${area.id_area}`);
  } catch (error) {
    console.error("actualizarArea:", error);
    return res.status(500).send("Error al actualizar el área.");
  }
};

// POST /areas/:id/eliminar  (solo Administrador)
export const eliminarArea = async (req, res) => {
  if (req.session.usuario?.rol !== "Administrador") {
    return res.status(403).send("Solo un Administrador puede eliminar áreas.");
  }
  try {
    const area = await Area.findByPk(req.params.id);
    if (!area) return res.status(404).send("Área no encontrada.");
    await area.destroy();
    return res.redirect("/areas");
  } catch (error) {
    console.error("eliminarArea:", error);
    return res.status(500).send("Error al eliminar el área.");
  }
};

// ══════════════════════════════════════════════════════════
//  MATERIAS
// ══════════════════════════════════════════════════════════

// GET /materias  (opcional: lista global)
export const listarMaterias = async (req, res) => {
  try {
    const materias = await Materia.findAll({
      include: [
        { model: Area, as: "area" },
        { model: Tema, as: "temas", order: [["numero_tema", "ASC"]] },
      ],
      order: [["nombre", "ASC"]],
    });
    const areas = await Area.findAll({ order: [["nombre", "ASC"]] });

    return res.render("materias/lista", {
      materias,
      areas,
      usuario: req.session.usuario,
      pageTitle: "Materias",
      activePage: "materias",
      error: null,
      exito: null,
    });
  } catch (error) {
    console.error("listarMaterias:", error);
    return res.status(500).send("Error al cargar las materias.");
  }
};

// GET /materias/nueva
export const mostrarFormularioNuevaMateria = async (req, res) => {
  try {
    const areas = await Area.findAll({ order: [["nombre", "ASC"]] });
    return res.render("materias/nueva", {
      areas,
      // Pre-seleccionar área si viene como query param (?id_area=1)
      id_area_preseleccionada: req.query.id_area || null,
      usuario: req.session.usuario,
      pageTitle: "Nueva Materia",
      activePage: "materias",
      error: null,
    });
  } catch (error) {
    console.error("mostrarFormularioNuevaMateria:", error);
    return res.status(500).send("Error al cargar el formulario.");
  }
};

// POST /materias
export const crearMateria = async (req, res) => {
  const { id_area, nombre, descripcion } = req.body;

  if (!id_area || !nombre?.trim()) {
    const areas = await Area.findAll({ order: [["nombre", "ASC"]] });
    return res.render("materias/nueva", {
      areas,
      id_area_preseleccionada: id_area || null,
      usuario: req.session.usuario,
      pageTitle: "Nueva Materia",
      activePage: "materias",
      error: "El área y el nombre de la materia son obligatorios.",
    });
  }

  try {
    await Materia.create({
      id_area,
      nombre:      nombre.trim(),
      descripcion: descripcion || null,
    });
    return res.redirect("/materias");
  } catch (error) {
    console.error("crearMateria:", error);
    const areas = await Area.findAll({ order: [["nombre", "ASC"]] });
    return res.render("materias/nueva", {
      areas,
      id_area_preseleccionada: id_area || null,
      usuario: req.session.usuario,
      pageTitle: "Nueva Materia",
      activePage: "materias",
      error: "Error al guardar. ¿Ya existe esa materia en el área?",
    });
  }
};

// GET /materias/:id
export const verMateria = async (req, res) => {
  try {
    const materia = await Materia.findByPk(req.params.id, {
      include: [
        { model: Area, as: "area" },
        { model: Tema, as: "temas", order: [["numero_tema", "ASC"]] },
      ],
    });
    if (!materia) return res.status(404).send("Materia no encontrada.");

    return res.render("materias/detalle", {
      materia,
      usuario: req.session.usuario,
      pageTitle: materia.nombre,
      activePage: "materias",
    });
  } catch (error) {
    console.error("verMateria:", error);
    return res.status(500).send("Error al cargar la materia.");
  }
};

// GET /materias/:id/editar
export const mostrarFormularioEditarMateria = async (req, res) => {
  try {
    const [materia, areas] = await Promise.all([
      Materia.findByPk(req.params.id),
      Area.findAll({ order: [["nombre", "ASC"]] }),
    ]);
    if (!materia) return res.status(404).send("Materia no encontrada.");

    return res.render("materias/editar", {
      materia,
      areas,
      usuario: req.session.usuario,
      pageTitle: "Editar Materia",
      activePage: "materias",
      error: null,
    });
  } catch (error) {
    console.error("mostrarFormularioEditarMateria:", error);
    return res.status(500).send("Error al cargar el formulario.");
  }
};

// POST /materias/:id/editar
export const actualizarMateria = async (req, res) => {
  const { id_area, nombre, descripcion } = req.body;
  try {
    const materia = await Materia.findByPk(req.params.id);
    if (!materia) return res.status(404).send("Materia no encontrada.");

    await materia.update({
      id_area:     id_area     || materia.id_area,
      nombre:      nombre?.trim() || materia.nombre,
      descripcion: descripcion || null,
    });
    return res.redirect(`/materias/${materia.id_materia}`);
  } catch (error) {
    console.error("actualizarMateria:", error);
    return res.status(500).send("Error al actualizar la materia.");
  }
};

// POST /materias/:id/eliminar
export const eliminarMateria = async (req, res) => {
  if (req.session.usuario?.rol !== "Administrador") {
    return res.status(403).send("Solo un Administrador puede eliminar materias.");
  }
  try {
    const materia = await Materia.findByPk(req.params.id);
    if (!materia) return res.status(404).send("Materia no encontrada.");
    await materia.destroy();
    return res.redirect("/materias");
  } catch (error) {
    console.error("eliminarMateria:", error);
    return res.status(500).send("Error al eliminar la materia.");
  }
};

// ══════════════════════════════════════════════════════════
//  TEMAS
// ══════════════════════════════════════════════════════════

// GET /materias/:id_materia/temas/nuevo
export const mostrarFormularioNuevoTema = async (req, res) => {
  try {
    const materia = await Materia.findByPk(req.params.id_materia, {
      include: [{ model: Area, as: "area" }],
    });
    if (!materia) return res.status(404).send("Materia no encontrada.");

    return res.render("temas/nuevo", {
      materia,
      usuario: req.session.usuario,
      pageTitle: "Nuevo Tema",
      activePage: "materias",
      error: null,
    });
  } catch (error) {
    console.error("mostrarFormularioNuevoTema:", error);
    return res.status(500).send("Error al cargar el formulario.");
  }
};

// POST /materias/:id_materia/temas
export const crearTema = async (req, res) => {
  const { nombre, numero_tema } = req.body;
  const { id_materia } = req.params;

  if (!nombre?.trim()) {
    const materia = await Materia.findByPk(id_materia, { include: [{ model: Area, as: "area" }] });
    return res.render("temas/nuevo", {
      materia,
      usuario: req.session.usuario,
      pageTitle: "Nuevo Tema",
      activePage: "materias",
      error: "El nombre del tema es obligatorio.",
    });
  }

  try {
    await Tema.create({
      id_materia,
      nombre:      nombre.trim(),
      numero_tema: numero_tema || null,
    });
    return res.redirect(`/materias/${id_materia}`);
  } catch (error) {
    console.error("crearTema:", error);
    return res.status(500).send("Error al guardar el tema.");
  }
};

// GET /temas/:id/editar
export const mostrarFormularioEditarTema = async (req, res) => {
  try {
    const tema = await Tema.findByPk(req.params.id, {
      include: [{ model: Materia, include: [{ model: Area, as: "area" }] }],
    });
    if (!tema) return res.status(404).send("Tema no encontrado.");

    return res.render("temas/editar", {
      tema,
      usuario: req.session.usuario,
      pageTitle: "Editar Tema",
      activePage: "materias",
      error: null,
    });
  } catch (error) {
    console.error("mostrarFormularioEditarTema:", error);
    return res.status(500).send("Error al cargar el formulario.");
  }
};

// POST /temas/:id/editar
export const actualizarTema = async (req, res) => {
  const { nombre, numero_tema } = req.body;
  try {
    const tema = await Tema.findByPk(req.params.id);
    if (!tema) return res.status(404).send("Tema no encontrado.");

    await tema.update({
      nombre:      nombre?.trim() || tema.nombre,
      numero_tema: numero_tema    || null,
    });
    return res.redirect(`/materias/${tema.id_materia}`);
  } catch (error) {
    console.error("actualizarTema:", error);
    return res.status(500).send("Error al actualizar el tema.");
  }
};

// POST /temas/:id/eliminar
export const eliminarTema = async (req, res) => {
  try {
    const tema = await Tema.findByPk(req.params.id);
    if (!tema) return res.status(404).send("Tema no encontrado.");
    const id_materia = tema.id_materia;
    await tema.destroy();
    return res.redirect(`/materias/${id_materia}`);
  } catch (error) {
    console.error("eliminarTema:", error);
    return res.status(500).send("Error al eliminar el tema.");
  }
};