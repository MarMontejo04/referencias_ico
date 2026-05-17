import { DataTypes } from "sequelize";
import db from "../../config/db.js";

const PalabraClave = db.define("palabra_clave", {

  id_palabra: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },

  palabra: {
    type: DataTypes.STRING(100),
    allowNull: false,
    unique: true,
  },

}, {
  freezeTableName:true,
  timestamps: false,
});

export default PalabraClave;
