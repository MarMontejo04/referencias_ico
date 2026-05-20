import Usuario from "../models/Usuario.js";

const getUsuario = async (req, res) => {
  return res.render("auth/registrar");
};

const crearUsuario = async (req, res) => {
  const { nombre, ap_materno, ap_paterno, email, rol, password } = req.body;

  try {
    const usuario = await Usuario.findOne({ where: { email } });

    if (usuario) {
      return res.render("auth/registrar", {
        error: "Correo ya registrado",
        exito: null,
      });
    } else {
      usuario = await Usuario.create({
        nombre: nombre,
        ap_paterno: ap_paterno,
        ap_materno: ap_materno,
        email: email,
        rol: rol,
        password: password,
      });
    }

    res.render("auth/login", {
      error: null,
      exito: "Usuario creado con éxito",
    });
  } catch (error) {
    console.error("loginController.iniciarSesion:", error);
    return res.render("auth/login", {
      error: "Error en el servidor.",
      exito: null,
    });
  }
};

export { getUsuario, crearUsuario };
