import { DataTypes } from "sequelize";
import db from "../../config/db.js";

const PaginaWeb = db.define("pagina_web", {

  id_referencia: {
    type: DataTypes.INTEGER,
    primaryKey: true,
  },

  nombre_sitio: {
    type: DataTypes.STRING(255),
    allowNull: true,
  },

  fecha_consulta: {
    type: DataTypes.DATEONLY,
    allowNull: true,
  },

  fecha_publicacion: {
    type: DataTypes.DATEONLY,
    allowNull: true,
  },

}, {
  freezeTableName:true,
  timestamps: false,
});

export default PaginaWeb;
