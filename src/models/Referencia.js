import { DataTypes } from "sequelize";
import db from "../../config/db.js";

const Referencia = db.define("referencia", {

  id_referencia: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },

  id_usuario: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },

  id_tipo_fuente: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },

  titulo: {
    type: DataTypes.STRING(500),
    allowNull: false,
  },

  subtitulo: {
    type: DataTypes.STRING(500),
    allowNull: true,
  },

  anio_publicacion: {
    type: DataTypes.INTEGER, // YEAR en MySQL se puede manejar como INTEGER
    allowNull: true,
  },

  idioma: {
    type: DataTypes.STRING(50),
    allowNull: true,
  },

  doi: {
    type: DataTypes.STRING(255),
    allowNull: true,
  },

  url: {
    type: DataTypes.TEXT,
    allowNull: true,
  },

  resumen: {
    type: DataTypes.TEXT,
    allowNull: true,
  },

  fecha_registro: {
    type: DataTypes.DATE,
    defaultValue: DataTypes.NOW,
  },

}, {
  freezeTableName:true,
  timestamps: false,
});

export default Referencia;
