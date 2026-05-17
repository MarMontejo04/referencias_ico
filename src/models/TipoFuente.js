import { DataTypes } from "sequelize";
import db from "../../config/db.js";

const TipoFuente = db.define("tipos_fuente", {

  id_tipo: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },

  nombre: {
    type: DataTypes.STRING(100),
    allowNull: false,
    unique: true,
  },

}, {
  freezeTableName:true,
  timestamps: false,
});

export default TipoFuente;
