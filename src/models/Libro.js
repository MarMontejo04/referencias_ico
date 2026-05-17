import { DataTypes } from "sequelize";
import db from "../../config/db.js";

const Libro = db.define("libro", {

  id_referencia: {
    type: DataTypes.INTEGER,
    primaryKey: true,
  },

  isbn13: {
    type: DataTypes.STRING(17),
    allowNull: true,
  },

  isbn10: {
    type: DataTypes.STRING(13),
    allowNull: true,
  },

  editorial: {
    type: DataTypes.STRING(255),
    allowNull: false,
  },

  ciudad_publicacion: {
    type: DataTypes.STRING(100),
    allowNull: true,
  },

  pais_publicacion: {
    type: DataTypes.STRING(100),
    allowNull: true,
  },

  edicion: {
    type: DataTypes.STRING(20),
    allowNull: true,
  },

  numero_edicion: {
    type: DataTypes.INTEGER,
    allowNull: true,
  },

  total_paginas: {
    type: DataTypes.INTEGER,
    allowNull: true,
  },

  volumen: {
    type: DataTypes.STRING(255),
    allowNull: true,
  },

}, {
  freezeTableName:true,
  timestamps: false,
});

export default Libro;
