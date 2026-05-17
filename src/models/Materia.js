import { DataTypes } from "sequelize";
import db from "../../config/db.js";

const Materia = db.define("materia", {

  id_materia: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },

  id_area: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },

  nombre: {
    type: DataTypes.STRING(150),
    allowNull: false,
  },

  descripcion: {
    type: DataTypes.TEXT,
    allowNull: true,
  },

}, {
  freezeTableName:true,
  timestamps: false,
  indexes: [
    {
      unique: true,
      fields: ["nombre", "id_area"],
    },
  ],
});

export default Materia;
