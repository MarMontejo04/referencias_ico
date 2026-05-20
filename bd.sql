SET NAMES utf8mb4;

DROP DATABASE IF EXISTS referencias_ico;
CREATE DATABASE referencias_ico;

USE referencias_ico;

CREATE TABLE usuario (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(150) NOT NULL,
    ap_paterno VARCHAR(150) NOT NULL,
    ap_materno VARCHAR(150),
    email VARCHAR(255) UNIQUE NOT NULL,
    rol ENUM(
        'Administrador',
        'Profesor',
        'Alumno'
    ) NOT NULL,
    password VARCHAR(255) NOT NULL,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE tipos_fuente (
    id_tipo INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE referencia (
    id_referencia INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT NOT NULL,
    id_tipo_fuente INT NOT NULL,
    titulo VARCHAR(500) NOT NULL,
    subtitulo VARCHAR(500),
    anio_publicacion YEAR,
    idioma VARCHAR(50),
    doi VARCHAR(255),
    url TEXT,
    resumen TEXT,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario)
        REFERENCES usuario(id_usuario)
        ON DELETE CASCADE,
    FOREIGN KEY (id_tipo_fuente)
        REFERENCES tipos_fuente(id_tipo)
);


CREATE TABLE autor (
    id_autor INT PRIMARY KEY AUTO_INCREMENT,
    nombres VARCHAR(150) NOT NULL,
    apellido_paterno VARCHAR(100) NOT NULL,
    apellido_materno VARCHAR(100),
    institucion_afiliacion VARCHAR(255),
    email VARCHAR(255)
);

CREATE TABLE referencia_autor (
    id_referencia INT,
    id_autor INT,
    orden_autor INT NOT NULL,
    rol_autor ENUM(
        'Autor',
        'Coautor',
        'Editor',
        'Compilador'
    ) DEFAULT 'Autor',
    PRIMARY KEY (id_referencia, id_autor),
    FOREIGN KEY (id_referencia)
        REFERENCES referencia(id_referencia)
        ON DELETE CASCADE,
    FOREIGN KEY (id_autor)
        REFERENCES autor(id_autor)
        ON DELETE CASCADE
);

CREATE TABLE palabra_clave (
    id_palabra INT PRIMARY KEY AUTO_INCREMENT,
    palabra VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE referencia_palabra (
    id_referencia INT,
    id_palabra INT,
    PRIMARY KEY (id_referencia, id_palabra),
    FOREIGN KEY (id_referencia)
        REFERENCES referencia(id_referencia)
        ON DELETE CASCADE,
    FOREIGN KEY (id_palabra)
        REFERENCES palabra_clave(id_palabra)
        ON DELETE CASCADE
);

CREATE TABLE libro (
    id_referencia INT PRIMARY KEY,
    isbn13 VARCHAR(17),
    isbn10 VARCHAR(13),
    editorial VARCHAR(255) NOT NULL,
    ciudad_publicacion VARCHAR(100),
    pais_publicacion VARCHAR(100),
    edicion VARCHAR(20),
    numero_edicion INT,
    total_paginas INT,
    volumen VARCHAR(255),
    CHECK (
        isbn13 IS NULL
        OR isbn13 REGEXP '^[0-9-]+$'
    ),
    FOREIGN KEY (id_referencia)
        REFERENCES referencia(id_referencia)
        ON DELETE CASCADE
);

CREATE TABLE tesis (
    id_referencia INT PRIMARY KEY,
    grado ENUM(
        'Licenciatura',
        'Especialidad',
        'Maestria',
        'Doctorado'
    ) NOT NULL,
    institucion VARCHAR(255) NOT NULL,
    facultad VARCHAR(255),
    departamento VARCHAR(255),
    ciudad VARCHAR(100),
    pais VARCHAR(100),
    director_tesis VARCHAR(255),
    codirector VARCHAR(255),
    total_paginas INT,
    FOREIGN KEY (id_referencia)
        REFERENCES referencia(id_referencia)
        ON DELETE CASCADE
);

CREATE TABLE articulo_revista (
    id_referencia INT PRIMARY KEY,
    nombre_revista VARCHAR(500) NOT NULL,
    issn VARCHAR(9),
    eissn VARCHAR(9),
    volumen VARCHAR(20),
    numero VARCHAR(20),
    pagina_inicio VARCHAR(10),
    pagina_fin VARCHAR(10),
    editorial VARCHAR(255),
    CHECK (
        issn IS NULL
        OR issn REGEXP '^[0-9]{4}-[0-9]{4}$'
    ),
    FOREIGN KEY (id_referencia)
        REFERENCES referencia(id_referencia)
        ON DELETE CASCADE
);

CREATE TABLE pagina_web (
    id_referencia INT PRIMARY KEY,
    nombre_sitio VARCHAR(255),
    fecha_consulta DATE,
    fecha_publicacion DATE,
    FOREIGN KEY (id_referencia)
        REFERENCES referencia(id_referencia)
        ON DELETE CASCADE
);

CREATE TABLE formato_cita (
    id_formato INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) UNIQUE NOT NULL,
    version VARCHAR(20),
    descripcion TEXT,
    activo TINYINT(1) DEFAULT 1
);

CREATE TABLE cita_generada (
    id_cita INT PRIMARY KEY AUTO_INCREMENT,
    id_referencia INT NOT NULL,
    id_formato INT NOT NULL,
    id_usuario INT NOT NULL,
    texto_cita TEXT NOT NULL,
    texto_referencia_completa TEXT NOT NULL,
    verificada TINYINT(1) DEFAULT 0,
    UNIQUE (
        id_referencia,
        id_formato,
        id_usuario
    ),
    FOREIGN KEY (id_referencia)
        REFERENCES referencia(id_referencia)
        ON DELETE CASCADE,
    FOREIGN KEY (id_formato)
        REFERENCES formato_cita(id_formato),
    FOREIGN KEY (id_usuario)
        REFERENCES usuario(id_usuario)
        ON DELETE CASCADE
);

CREATE TABLE area (
    id_area INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(150) UNIQUE NOT NULL,
    descripcion TEXT
);

CREATE TABLE materia (
    id_materia INT PRIMARY KEY AUTO_INCREMENT,
    id_area INT NOT NULL,
    nombre VARCHAR(150) NOT NULL,
    descripcion TEXT,
    UNIQUE(nombre, id_area),
    FOREIGN KEY (id_area)
        REFERENCES area(id_area)
        ON DELETE CASCADE
);

CREATE TABLE tema (
    id_tema INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    numero_tema INT,
    id_materia INT NOT NULL,
    FOREIGN KEY (id_materia)
        REFERENCES materia(id_materia)
        ON DELETE CASCADE
);

CREATE TABLE referencia_tema (
    id_referencia INT,
    id_tema       INT,
    PRIMARY KEY (id_referencia, id_tema),
    FOREIGN KEY (id_referencia) REFERENCES referencia(id_referencia) ON DELETE CASCADE,
    FOREIGN KEY (id_tema)       REFERENCES tema(id_tema)             ON DELETE CASCADE
);

INSERT INTO tipos_fuente(nombre)
VALUES
('Libro'),
('Tesis'),
('Artículo de Revista'),
('Página Web');

INSERT INTO formato_cita(
    nombre,
    version,
    descripcion
)
VALUES
(
    'APA',
    '7',
    'American Psychological Association'
),
(
    'IEEE',
    '2024',
    'Institute of Electrical and Electronics Engineers'
),
(
    'MLA',
    '9',
    'Modern Language Association'
),
(
    'Chicago',
    '17',
    'Chicago Manual of Style'
);
