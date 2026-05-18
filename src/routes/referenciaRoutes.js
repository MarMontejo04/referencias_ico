import express from "express";

import {
  mostrarLogin,
  iniciarSesion,
  cerrarSesion,
} from "../controllers/loginController.js";

import {
  requiereLogin,
  listarReferencias,
  mostrarFormularioNueva,
  crearReferencia,
  verReferencia,
  mostrarFormularioEditar,
  actualizarReferencia,
  eliminarReferencia,
} from "../controllers/referenciaController.js";

import {
  mostrarFormularioCita,
  generarCita,
  listarMisCitas,
  eliminarCita,
} from "../controllers/citaController.js";

import {
  listarAutores,
  mostrarFormularioNuevo  as autorNuevoForm,
  crearAutor,
  verAutor,
  mostrarFormularioEditar as autorEditarForm,
  actualizarAutor,
  eliminarAutor,
} from "../controllers/autorController.js";

const router = express.Router();

router.get( "/",            mostrarLogin);
router.post("/auth/login",  iniciarSesion);
router.post("/auth/logout", cerrarSesion);

router.get( "/referencias",                  requiereLogin, listarReferencias);
router.get( "/referencias/nueva",            requiereLogin, mostrarFormularioNueva);
router.post("/referencias",                  requiereLogin, crearReferencia);
router.get( "/referencias/:id",              requiereLogin, verReferencia);
router.get( "/referencias/:id/editar",       requiereLogin, mostrarFormularioEditar);
router.post("/referencias/:id/editar",       requiereLogin, actualizarReferencia);
router.post("/referencias/:id/eliminar",     requiereLogin, eliminarReferencia);

router.get( "/referencias/:id/citar",        requiereLogin, mostrarFormularioCita);
router.post("/referencias/:id/citar",        requiereLogin, generarCita);
router.get( "/mis-citas",                    requiereLogin, listarMisCitas);
router.post("/mis-citas/:id/eliminar",       requiereLogin, eliminarCita);

router.get( "/autores",                      requiereLogin, listarAutores);
router.get( "/autores/nuevo",                requiereLogin, autorNuevoForm);
router.post("/autores",                      requiereLogin, crearAutor);
router.get( "/autores/:id",                  requiereLogin, verAutor);
router.get( "/autores/:id/editar",           requiereLogin, autorEditarForm);
router.post("/autores/:id/editar",           requiereLogin, actualizarAutor);
router.post("/autores/:id/eliminar",         requiereLogin, eliminarAutor);

export default router;
