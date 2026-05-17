import express from "express";
import db from "../config/db.js";
import cookieParser from "cookie-parser";
import csurf from "csurf";

// Crear aplicación
const app = express();

// Acceso a datos formulario
app.use(express.urlencoded({ extended: true }));

//Habilitar cookie parser
app.use(cookieParser())

//csurf
app.use(csurf({cookie:true}))

// Pug
app.set("view engine", "pug");
app.set("views", "./src/views");

// Archivos estáticos
app.use(express.static("public"));


// Routes



// Conexion con BD
try {
  await db.authenticate();
  await db.sync();
  console.log("Conexión exitosa con la BD");
} catch (error) {
  console.log(error);
}

const port = 4800;

app.listen(port, () => {
  console.log(`Esperando peticiones del puerto ${port}`);
});
