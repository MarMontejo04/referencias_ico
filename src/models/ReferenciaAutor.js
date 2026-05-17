import { DataTypes } from "sequelize";
import db from "../../config/db.js";

const ReferenciaAutor = db.define("referencia_autor", {

  id_referencia: {
    type: DataTypes.INTEGER,
    primaryKey: true,
  },

  id_autor: {
    type: DataTypes.INTEGER,
    primaryKey: true,
  },

  orden_autor: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },

  rol_autor: {
    type: DataTypes.ENUM("Autor", "Coautor", "Editor", "Compilador"),
    defaultValue: "Autor",
  },

}, {
  freezeTableName:true,
  timestamps: false,
});

export default ReferenciaAutor;
