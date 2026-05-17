import { DataTypes } from "sequelize";
import db from "../../config/db.js";

const Tema = db.define("tema", {

  id_tema: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },

  nombre: {
    type: DataTypes.STRING(255),
    allowNull: false,
  },

  numero_tema: {
    type: DataTypes.INTEGER,
    allowNull: true,
  },

  id_materia: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },

}, {
  freezeTableName:true,
  timestamps: false,
});

export default Tema;
