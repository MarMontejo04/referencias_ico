import { DataTypes } from "sequelize";
import db from "../../config/db.js";

const ReferenciaTema = db.define("referencia_tema", {

  id_referencia: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    allowNull: false,
  },

  id_tema: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    allowNull: false,
  },

}, {
  freezeTableName: true,
  timestamps: false,
});

export default ReferenciaTema;