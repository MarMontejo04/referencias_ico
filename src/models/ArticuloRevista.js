import { DataTypes } from "sequelize";
import db from "../../config/db.js";

const ArticuloRevista = db.define("articulo_revista", {

  id_referencia: {
    type: DataTypes.INTEGER,
    primaryKey: true,
  },

  nombre_revista: {
    type: DataTypes.STRING(500),
    allowNull: false,
  },

  issn: {
    type: DataTypes.STRING(9),
    allowNull: true,
  },

  eissn: {
    type: DataTypes.STRING(9),
    allowNull: true,
  },

  volumen: {
    type: DataTypes.STRING(20),
    allowNull: true,
  },

  numero: {
    type: DataTypes.STRING(20),
    allowNull: true,
  },

  pagina_inicio: {
    type: DataTypes.STRING(10),
    allowNull: true,
  },

  pagina_fin: {
    type: DataTypes.STRING(10),
    allowNull: true,
  },

  editorial: {
    type: DataTypes.STRING(255),
    allowNull: true,
  },

}, {
  freezeTableName:true,
  timestamps: false,
});

export default ArticuloRevista;
