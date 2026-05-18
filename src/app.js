import express      from "express";
import session      from "express-session";
import db           from "../config/db.js";
import path         from "path";
import { fileURLToPath } from "url";

import "../src/models/index.js";
import referenciaRoutes from "./routes/referenciaRoutes.js";

const __filename = fileURLToPath(import.meta.url);
const __dirname  = path.dirname(__filename);

const app = express();

app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.use(session({
  secret:            process.env.SESSION_SECRET || "referencias_ico_secret",
  resave:            false,
  saveUninitialized: false,
  cookie:            { maxAge: 1000 * 60 * 60 * 4 },
}));

app.set("view engine", "pug");
app.set("views",       path.join(__dirname, "views"));

app.use(express.static(path.join(__dirname, "public")));
app.use("/bootstrap", express.static(
  path.resolve("node_modules/bootstrap/dist")
));

app.use("/", referenciaRoutes);

try {
  await db.authenticate();
  await db.sync();
  console.log("Conexión exitosa con la BD");
} catch (error) {
  console.error(error);
}

const port = process.env.PORT || 4000;
app.listen(port, () => console.log(`Servidor en puerto ${port}`));
