import { DataTypes } from "sequelize";
import db from "../../config/db.js";

const CitaGenerada = db.define("cita_generada", {

  id_cita: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },

  id_referencia: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },

  id_formato: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },

  id_usuario: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },

  texto_cita: {
    type: DataTypes.TEXT,
    allowNull: false,
  },

  texto_referencia_completa: {
    type: DataTypes.TEXT,
    allowNull: false,
  },

  verificada: {
    type: DataTypes.TINYINT,
    defaultValue: 0,
  },

}, {
  freezeTableName:true,
  timestamps: false,
  indexes: [
    {
      unique: true,
      fields: ["id_referencia", "id_formato", "id_usuario"],
    },
  ],
});

export default CitaGenerada;
