import { DataTypes } from "sequelize";
import db from "../../config/db.js";

const Autor = db.define("autor", {

  id_autor: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },

  nombres: {
    type: DataTypes.STRING(150),
    allowNull: false,
  },

  apellido_paterno: {
    type: DataTypes.STRING(100),
    allowNull: false,
  },

  apellido_materno: {
    type: DataTypes.STRING(100),
    allowNull: true,
  },

  institucion_afiliacion: {
    type: DataTypes.STRING(255),
    allowNull: true,
  },

  email: {
    type: DataTypes.STRING(255),
    allowNull: true,
  },

}, {
  freezeTableName:true,
  timestamps: false,
});

export default Autor;
