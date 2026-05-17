import { DataTypes } from "sequelize";
import db from "../../config/db.js";

const ReferenciaPalabra = db.define("referencia_palabra", {

  id_referencia: {
    type: DataTypes.INTEGER,
    primaryKey: true,
  },

  id_palabra: {
    type: DataTypes.INTEGER,
    primaryKey: true,
  },

}, {
  freezeTableName:true,
  timestamps: false,
});

export default ReferenciaPalabra;
