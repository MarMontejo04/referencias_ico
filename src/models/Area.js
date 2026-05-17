import { DataTypes } from "sequelize";
import db from "../../config/db.js";

const Area = db.define("area", {

  id_area: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },

  nombre: {
    type: DataTypes.STRING(150),
    allowNull: false,
    unique: true,
  },

  descripcion: {
    type: DataTypes.TEXT,
    allowNull: true,
  },

}, {
  freezeTableName:true,
  timestamps: false,
});

export default Area;
