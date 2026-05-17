import { DataTypes } from "sequelize";
import db from "../../config/db.js";

const Usuario = db.define("usuario", {

  id_usuario: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },

  nombre: {
    type: DataTypes.STRING(150),
    allowNull: false,
  },

  ap_paterno: {
    type: DataTypes.STRING(150),
    allowNull: false,
  },

  ap_materno: {
    type: DataTypes.STRING(150),
    allowNull: true,
  },

  email: {
    type: DataTypes.STRING(255),
    allowNull: false,
    unique: true,
  },

  rol: {
    type: DataTypes.ENUM("Administrador", "Profesor", "Alumno"),
    allowNull: false,
  },

  password: {
    type: DataTypes.STRING(255),
    allowNull: false,
  },

  fecha_registro: {
    type: DataTypes.DATE,
    defaultValue: DataTypes.NOW,
  },

}, {
  freezeTableName:true,
  timestamps: false,
});

export default Usuario;
