import {
  Usuario,
} from "../models/index.js";


// GET /auth/registrar
const getUsuario = (req, res) => {
  if (req.session?.usuario) {
    return res.redirect("/referencias");
  }
  return res.render("auth/registrar", { error: null, exito: null });
};

// POST /auth/registrar
const crearUsuario = async (req, res) => {
  const { nombre, ap_paterno, ap_materno, email, rol, password, confirmar_password } = req.body;

  // Validaciones básicas
  if (!nombre || !ap_paterno || !email || !rol || !password) {
    return res.render("auth/registrar", {
      error: "Todos los campos obligatorios deben estar completos.",
      exito: null,
    });
  }

  if (password !== confirmar_password) {
    return res.render("auth/registrar", {
      error: "Las contraseñas no coinciden.",
      exito: null,
    });
  }

  if (!["Profesor", "Alumno"].includes(rol)) {
    return res.render("auth/registrar", {
      error: "Rol no válido.",
      exito: null,
    });
  }

  try {
    // Verificar si el correo ya existe
    const existe = await Usuario.findOne({ where: { email } });

    if (existe) {
      return res.render("auth/registrar", {
        error: "El correo ya está registrado. Intenta con otro.",
        exito: null,
      });
    }

    // Crear usuario
    await Usuario.create({
      nombre:     nombre.trim(),
      ap_paterno: ap_paterno.trim(),
      ap_materno: ap_materno?.trim() || null,
      email:      email.trim().toLowerCase(),
      rol,
      password,
    });

    // Redirigir al login con mensaje de éxito
    return res.render("auth/login", {
      error: null,
      exito: "Cuenta creada correctamente. Ya puedes iniciar sesión.",
    });

  } catch (error) {
    console.error("registroController.crearUsuario:", error);
    return res.render("auth/registrar", {
      error: "Error en el servidor. Intenta de nuevo.",
      exito: null,
    });
  }
};

export { getUsuario, crearUsuario };