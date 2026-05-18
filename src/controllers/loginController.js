import Usuario from "../models/Usuario.js";

// GET /  → mostrar formulario de login
export const mostrarLogin = (req, res) => {
  // Si ya hay sesión activa, redirigir al panel
  if (req.session?.usuario) {
    return res.redirect("/referencias");
  }
  return res.render("auth/login", { error: null, exito: null });
};

// POST /auth/login  → procesar credenciales
export const iniciarSesion = async (req, res) => {
  const { email, password } = req.body;

  // Validación básica
  if (!email || !password) {
    return res.render("auth/login", {
      error: "Correo y contraseña son obligatorios.",
      exito: null,
    });
  }

  try {
    const usuario = await Usuario.findOne({ where: { email } });

    if (!usuario) {
      return res.render("auth/login", {
        error: "Correo no registrado.",
        exito: null,
      });
    }

    // Comparación directa (igual que inscripciones_ico).
    // Si en el futuro se usa bcrypt, cambiar por: bcrypt.compareSync(password, usuario.password)
    if (usuario.password !== password) {
      return res.render("auth/login", {
        error: "Contraseña incorrecta.",
        exito: null,
      });
    }

    // Guardar datos de sesión
    req.session.usuario = {
      id_usuario:  usuario.id_usuario,
      nombre:      usuario.nombre,
      ap_paterno:  usuario.ap_paterno,
      email:       usuario.email,
      rol:         usuario.rol,   // 'Administrador' | 'Profesor' | 'Alumno'
    };

    return res.redirect("/referencias");

  } catch (error) {
    console.error("loginController.iniciarSesion:", error);
    return res.render("auth/login", {
      error: "Error en el servidor.",
      exito: null,
    });
  }
};

// POST /auth/logout
export const cerrarSesion = (req, res) => {
  req.session.destroy(() => {
    return res.render("auth/login", {
      error: null,
      exito: "Sesión cerrada correctamente.",
    });
  });
};
