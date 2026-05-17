import Usuario from "./Usuario.js";
import TipoFuente from "./TipoFuente.js";
import Referencia from "./Referencia.js";
import Autor from "./Autor.js";
import ReferenciaAutor from "./ReferenciaAutor.js";
import PalabraClave from "./PalabraClave.js";
import ReferenciaPalabra from "./ReferenciaPalabra.js";
import Libro from "./Libro.js";
import Tesis from "./Tesis.js";
import ArticuloRevista from "./ArticuloRevista.js";
import PaginaWeb from "./PaginaWeb.js";
import FormatoCita from "./FormatoCita.js";
import CitaGenerada from "./CitaGenerada.js";
import Area from "./Area.js";
import Materia from "./Materia.js";
import Tema from "./Tema.js";

// ── Usuario ──────────────────────────────────────────────
Usuario.hasMany(Referencia, { foreignKey: "id_usuario" });
Referencia.belongsTo(Usuario, { foreignKey: "id_usuario" });

Usuario.hasMany(CitaGenerada, { foreignKey: "id_usuario" });
CitaGenerada.belongsTo(Usuario, { foreignKey: "id_usuario" });

// ── TipoFuente ───────────────────────────────────────────
TipoFuente.hasMany(Referencia, { foreignKey: "id_tipo_fuente" });
Referencia.belongsTo(TipoFuente, { foreignKey: "id_tipo_fuente" });

// ── Referencia <-> Autor (N:M con tabla pivot) ────────────
Referencia.belongsToMany(Autor, {
  through: ReferenciaAutor,
  foreignKey: "id_referencia",
  otherKey: "id_autor",
});
Autor.belongsToMany(Referencia, {
  through: ReferenciaAutor,
  foreignKey: "id_autor",
  otherKey: "id_referencia",
});

// ── Referencia <-> PalabraClave (N:M con tabla pivot) ─────
Referencia.belongsToMany(PalabraClave, {
  through: ReferenciaPalabra,
  foreignKey: "id_referencia",
  otherKey: "id_palabra",
});
PalabraClave.belongsToMany(Referencia, {
  through: ReferenciaPalabra,
  foreignKey: "id_palabra",
  otherKey: "id_referencia",
});

// ── Subtipos de Referencia (1:1) ──────────────────────────
Referencia.hasOne(Libro, { foreignKey: "id_referencia" });
Libro.belongsTo(Referencia, { foreignKey: "id_referencia" });

Referencia.hasOne(Tesis, { foreignKey: "id_referencia" });
Tesis.belongsTo(Referencia, { foreignKey: "id_referencia" });

Referencia.hasOne(ArticuloRevista, { foreignKey: "id_referencia" });
ArticuloRevista.belongsTo(Referencia, { foreignKey: "id_referencia" });

Referencia.hasOne(PaginaWeb, { foreignKey: "id_referencia" });
PaginaWeb.belongsTo(Referencia, { foreignKey: "id_referencia" });

// ── CitaGenerada ──────────────────────────────────────────
Referencia.hasMany(CitaGenerada, { foreignKey: "id_referencia" });
CitaGenerada.belongsTo(Referencia, { foreignKey: "id_referencia" });

FormatoCita.hasMany(CitaGenerada, { foreignKey: "id_formato" });
CitaGenerada.belongsTo(FormatoCita, { foreignKey: "id_formato" });

// ── Area -> Materia -> Tema ───────────────────────────────
Area.hasMany(Materia, { foreignKey: "id_area" });
Materia.belongsTo(Area, { foreignKey: "id_area" });

Materia.hasMany(Tema, { foreignKey: "id_materia" });
Tema.belongsTo(Materia, { foreignKey: "id_materia" });

export {
  Usuario,
  TipoFuente,
  Referencia,
  Autor,
  ReferenciaAutor,
  PalabraClave,
  ReferenciaPalabra,
  Libro,
  Tesis,
  ArticuloRevista,
  PaginaWeb,
  FormatoCita,
  CitaGenerada,
  Area,
  Materia,
  Tema,
};
