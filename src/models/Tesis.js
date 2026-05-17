import { DataTypes } from "sequelize";
import db from "../../config/db.js";

const Tesis = db.define("tesis", {

  id_referencia: {
    type: DataTypes.INTEGER,
    primaryKey: true,
  },

  grado: {
    type: DataTypes.ENUM("Licenciatura", "Especialidad", "Maestria", "Doctorado"),
    allowNull: false,
  },

  institucion: {
    type: DataTypes.STRING(255),
    allowNull: false,
  },

  facultad: {
    type: DataTypes.STRING(255),
    allowNull: true,
  },

  departamento: {
    type: DataTypes.STRING(255),
    allowNull: true,
  },

  ciudad: {
    type: DataTypes.STRING(100),
    allowNull: true,
  },

  pais: {
    type: DataTypes.STRING(100),
    allowNull: true,
  },

  director_tesis: {
    type: DataTypes.STRING(255),
    allowNull: true,
  },

  codirector: {
    type: DataTypes.STRING(255),
    allowNull: true,
  },

  total_paginas: {
    type: DataTypes.INTEGER,
    allowNull: true,
  },

}, {
  freezeTableName:true,
  timestamps: false,
});

export default Tesis;
