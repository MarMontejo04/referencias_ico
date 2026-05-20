import express from "express";

import {
  mostrarLogin,
  iniciarSesion,
  cerrarSesion,
} from "../controllers/loginController.js";

import {
  getUsuario as mostrarRegistro,
  crearUsuario,
} from "../controllers/registroController.js";

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

import {
  listarAreas,
  mostrarFormularioNuevaArea,
  crearArea,
  verArea,
  mostrarFormularioEditarArea,
  actualizarArea,
  eliminarArea,
  listarMaterias,
  mostrarFormularioNuevaMateria,
  crearMateria,
  verMateria,
  mostrarFormularioEditarMateria,
  actualizarMateria,
  eliminarMateria,
  mostrarFormularioNuevoTema,
  crearTema,
  mostrarFormularioEditarTema,
  actualizarTema,
  eliminarTema,
} from "../controllers/areaMateriaController.js";

const router = express.Router();

// ── Auth ───────────────────────────────────────────────────────────────────────
router.get( "/",            mostrarLogin);
router.post("/auth/login",  iniciarSesion);
router.post("/auth/logout",    cerrarSesion);
router.get( "/auth/registrar", mostrarRegistro);
router.post("/auth/registrar", crearUsuario);

// ── Referencias ────────────────────────────────────────────────────────────────
router.get( "/referencias",              requiereLogin, listarReferencias);
router.get( "/referencias/nueva",        requiereLogin, mostrarFormularioNueva);
router.post("/referencias",              requiereLogin, crearReferencia);
router.get( "/referencias/:id",          requiereLogin, verReferencia);
router.get( "/referencias/:id/editar",   requiereLogin, mostrarFormularioEditar);
router.post("/referencias/:id/editar",   requiereLogin, actualizarReferencia);
router.post("/referencias/:id/eliminar", requiereLogin, eliminarReferencia);

// ── Citas ──────────────────────────────────────────────────────────────────────
router.get( "/referencias/:id/citar",    requiereLogin, mostrarFormularioCita);
router.post("/referencias/:id/citar",    requiereLogin, generarCita);
router.get( "/mis-citas",                requiereLogin, listarMisCitas);
router.post("/mis-citas/:id/eliminar",   requiereLogin, eliminarCita);

// ── Autores ────────────────────────────────────────────────────────────────────
router.get( "/autores",                  requiereLogin, listarAutores);
router.get( "/autores/nuevo",            requiereLogin, autorNuevoForm);
router.post("/autores",                  requiereLogin, crearAutor);
router.get( "/autores/:id",              requiereLogin, verAutor);
router.get( "/autores/:id/editar",       requiereLogin, autorEditarForm);
router.post("/autores/:id/editar",       requiereLogin, actualizarAutor);
router.post("/autores/:id/eliminar",     requiereLogin, eliminarAutor);

// ── Áreas ──────────────────────────────────────────────────────────────────────
router.get( "/areas",                    requiereLogin, listarAreas);
router.get( "/areas/nueva",              requiereLogin, mostrarFormularioNuevaArea);
router.post("/areas",                    requiereLogin, crearArea);
router.get( "/areas/:id",                requiereLogin, verArea);
router.get( "/areas/:id/editar",         requiereLogin, mostrarFormularioEditarArea);
router.post("/areas/:id/editar",         requiereLogin, actualizarArea);
router.post("/areas/:id/eliminar",       requiereLogin, eliminarArea);

// ── Materias ────────────────────────────────────────────────────────────────
router.get( "/Materias",                                  requiereLogin, listarMaterias);
router.get( "/Materias/nueva",                            requiereLogin, mostrarFormularioNuevaMateria);
router.post("/Materias",                                  requiereLogin, crearMateria);
router.get( "/Materias/:id",                              requiereLogin, verMateria);
router.get( "/Materias/:id/editar",                       requiereLogin, mostrarFormularioEditarMateria);
router.post("/Materias/:id/editar",                       requiereLogin, actualizarMateria);
router.post("/Materias/:id/eliminar",                     requiereLogin, eliminarMateria);

// ── Temas (anidados bajo Materia) ───────────────────────────────────────────
router.get( "/Materias/:id_Materia/temas/nuevo",       requiereLogin, mostrarFormularioNuevoTema);
router.post("/Materias/:id_Materia/temas",             requiereLogin, crearTema);
router.get( "/temas/:id/editar",                             requiereLogin, mostrarFormularioEditarTema);
router.post("/temas/:id/editar",                             requiereLogin, actualizarTema);
router.post("/temas/:id/eliminar",                           requiereLogin, eliminarTema);

export default router;