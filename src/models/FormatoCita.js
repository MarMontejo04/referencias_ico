import { DataTypes } from "sequelize";
import db from "../../config/db.js";

const FormatoCita = db.define("formato_cita", {

  id_formato: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },

  nombre: {
    type: DataTypes.STRING(50),
    allowNull: false,
    unique: true,
  },

  version: {
    type: DataTypes.STRING(20),
    allowNull: true,
  },

  descripcion: {
    type: DataTypes.TEXT,
    allowNull: true,
  },

  activo: {
    type: DataTypes.TINYINT,
    defaultValue: 1,
  },

}, {
  freezeTableName:true,
  timestamps: false,
});

export default FormatoCita;
