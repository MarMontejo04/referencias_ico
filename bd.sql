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

INSERT INTO area (id_area, nombre, descripcion) VALUES
(1, 'Matemáticas',
    'Fundamentos matemáticos que sustentan el análisis, modelado y resolución de problemas en ingeniería en computación.'),
(2, 'Programación e Ingeniería de Software',
    'Desarrollo, diseño y análisis de software; abarca desde la programación estructurada hasta metodologías ágiles e ingeniería de sistemas.'),
(3, 'Entorno Social',
    'Habilidades de comunicación, emprendimiento, ética profesional y vinculación con el entorno empresarial y social.'),
(4, 'Arquitectura de Computadoras',
    'Estudio del hardware: circuitos digitales, microprocesadores, microcontroladores y sistemas embebidos.'),
(5, 'Tratamiento de Información',
    'Gestión, almacenamiento, análisis y explotación de datos mediante bases de datos, minería de datos e inteligencia artificial.'),
(6, 'Software de Base',
    'Sistemas que sirven de plataforma al software de aplicación: sistemas operativos, compiladores y lenguajes formales.'),
(7, 'Redes',
    'Diseño, configuración y seguridad de redes de computadoras; protocolos de comunicación y seguridad informática.'),
(8, 'Interacción Hombre-Máquina',
    'Interfaces, visualización de datos, instrumentación, control y tecnologías orientadas a la interacción entre personas y sistemas.');
 
 
-- Semestre 1
INSERT INTO materia (id_area, nombre, descripcion) VALUES
(1, 'Álgebra',
    'Introducción al álgebra: conjuntos, números reales y complejos, polinomios y combinatoria básica.'),
(1, 'Geometría Analítica',
    'Estudio de figuras geométricas mediante coordenadas; trigonometría, vectores y geometría en 2D y 3D.'),
(1, 'Cálculo Diferencial e Integral',
    'Funciones, límites, derivadas e integrales; aplicaciones en modelado continuo de fenómenos físicos e ingenieriles.'),
(2, 'Computadoras y Programación',
    'Fundamentos de computación y programación estructurada en lenguaje C.'),
(3, 'Introducción a la Ingeniería en Computación',
    'Panorama de la carrera: plan de vida, uso de herramientas básicas, Linux y valores del ingeniero.'),
 
-- Semestre 2
(1, 'Álgebra Lineal',
    'Sistemas de ecuaciones, matrices, determinantes, espacios vectoriales y transformaciones lineales.'),
(1, 'Cálculo Vectorial',
    'Extensión del cálculo a funciones de varias variables: derivadas parciales, integrales múltiples y cálculo vectorial.'),
(2, 'Programación Orientada a Objetos',
    'Paradigma orientado a objetos aplicado en Java; interfaces gráficas y principios de diseño OO.'),
(3, 'Comunicación',
    'Habilidades de comunicación oral, escrita, no verbal y en grupo para el entorno académico y profesional.'),
(3, 'Emprendimiento 1',
    'Fundamentos de la empresa: constitución, contabilidad básica, costos y presupuesto.'),
(3, 'Taller de Creatividad e Innovación',
    'Identificación de necesidades humanas y generación de soluciones creativas e innovadoras.'),
 
-- Semestre 3
(4, 'Electricidad y Magnetismo',
    'Principios de campo eléctrico, magnético, circuitos eléctricos e inducción electromagnética con laboratorio.'),
(2, 'Estructura de Datos',
    'Estructuras fundamentales: listas, árboles, grafos y algoritmos de ordenamiento y búsqueda.'),
(1, 'Métodos Numéricos',
    'Técnicas computacionales para resolver problemas matemáticos: interpolación, integración y ecuaciones diferenciales.'),
(1, 'Ecuaciones Diferenciales',
    'Ecuaciones diferenciales ordinarias, sistemas lineales, transformada de Laplace y series de Fourier.'),
(3, 'Emprendimiento 2',
    'Contexto macroeconómico, mercado, dinero y balanza de pagos aplicados al emprendimiento.'),
 
-- Semestre 4
(1, 'Probabilidad y Estadística',
    'Estadística descriptiva, teoría de probabilidad, variables aleatorias, inferencia estadística y regresión lineal.'),
(5, 'Bases de Datos 1',
    'Fundamentos de bases de datos relacionales: modelado, diseño lógico y físico, y manejo de SGBD.'),
(3, 'Emprendimiento 3',
    'Entorno financiero, flujos de efectivo, valuación económica y plan de negocios.'),
(1, 'Matemáticas Discretas',
    'Lógica, conjuntos, relaciones, inducción matemática, teoría de grafos y conteo.'),
(4, 'Dispositivos Electrónicos',
    'Semiconductores, diodos, transistores, amplificadores operacionales y reguladores de tensión con laboratorio.'),
 
-- Semestre 5
(6, 'Lenguajes Formales y Autómatas',
    'Gramáticas, autómatas finitos, autómatas de pila y máquinas de Turing; bases teóricas de la computación.'),
(2, 'Diseño y Análisis de Algoritmos',
    'Diseño, análisis de complejidad y comparación de algoritmos; grafos y algoritmos no deterministas.'),
(3, 'Administración de Proyectos',
    'Dirección de proyectos de TI: marcos de referencia, áreas de conocimiento y metodologías ágiles.'),
(2, 'Programación Web 1',
    'Fundamentos del desarrollo web: HTML, CSS, XML y principios de diseño y planificación de sitios.'),
(4, 'Diseño Lógico',
    'Sistemas digitales, álgebra de Boole, circuitos combinacionales y secuenciales con laboratorio.'),
 
-- Semestre 6
(6, 'Compiladores',
    'Fases de compilación: análisis léxico, sintáctico, semántico, generación y optimización de código.'),
(6, 'Sistemas Operativos',
    'Gestión de procesos, memoria, entrada/salida y sistema de archivos en sistemas operativos modernos.'),
(4, 'Diseño de Sistemas Digitales',
    'Máquinas de estado, memorias, dispositivos lógicos programables y lenguajes de descripción de hardware.'),
(2, 'Ingeniería de Software',
    'Patrones de diseño, arquitecturas de software, gestión de calidad y metodologías ágiles como Scrum.'),
 
-- Semestre 7
(5, 'Sistemas de Información',
    'Planeación, desarrollo y gobierno de TI; Business Intelligence e inteligencia social.'),
(2, 'Programación Web 2',
    'JavaScript avanzado: DOM, eventos, objetos y programación del lado del cliente.'),
(7, 'Redes de Computadoras 1',
    'Fundamentos de redes: componentes, estándares, protocolos de comunicación y modelo TCP/IP con laboratorio.'),
(4, 'Microprocesadores y Microcontroladores',
    'Arquitectura de microprocesadores, conjunto de instrucciones, puertos, interrupciones y aplicaciones prácticas.'),
 
-- Semestre 8
(5, 'Bases de Datos 2',
    'Temas avanzados: respaldo, concurrencia, seguridad, bases distribuidas y gestión de datos masivos.'),
(2, 'Programación Móvil 1',
    'Desarrollo de aplicaciones móviles: interfaz, datos, sensores, multimedia y publicación.'),
(7, 'Redes de Computadoras 2',
    'Diseño avanzado de redes: IPv4, VLANs, conmutación multicapa y protocolos OSPF y BGP.'),
(2, 'Habilidades Directivas',
    'Habilidades personales, interpersonales, liderazgo y gestión de la tecnología en el ámbito profesional.'),
 
-- Semestre 9
(2, 'Inteligencia Artificial',
    'Agentes inteligentes, búsqueda, representación del conocimiento, razonamiento y aprendizaje automático.'),
(7, 'Seguridad Informática',
    'Criptografía, arquitecturas de seguridad, normatividad, seguridad en redes y legislación digital.'),
(5, 'Minería de Datos',
    'Extracción y procesamiento de datos, metodologías de minería y Data Warehouse.');
 
 
INSERT INTO materia (id_area, nombre, descripcion) VALUES
(8, 'Adquisición de Datos',
    'Sistemas de instrumentación virtual, tecnologías de adquisición y diseño de instrumentos virtuales.'),
(8, 'Modelado y Simulación',
    'Fundamentos del modelado y simulación de sistemas físicos, biológicos y económicos.'),
(2, 'Administración de Sistemas Multiusuario',
    'Gestión de centros de datos, servidores Linux y Windows, y administración de recursos.'),
(2, 'Cómputo Distribuido y Paralelo',
    'Programación en paralelo, procesos distribuidos, particionamiento de funciones y herramientas de paralelismo.'),
(5, 'Temas Especiales de Bases de Datos',
    'Tópicos avanzados y emergentes en el área de bases de datos según el semestre.'),
(2, 'Seminario Ingeniería en Computación',
    'Análisis y discusión de temas actuales y de frontera en ingeniería en computación.'),
(8, 'Bioingeniería',
    'Sistemas fisiológicos de control, modelación neuronal, bio-dispositivos y gestión de datos médicos.'),
(3, 'Movilidad 1',
    'Estancia académica en otra institución nacional o internacional. Temas según la institución receptora.'),
(2, 'Temas Especiales de Computación 1',
    'Tópicos especiales en computación: nuevas tecnologías y tendencias emergentes según el semestre.'),
(3, 'Movilidad 2',
    'Estancia académica en otra institución nacional o internacional. Temas según la institución receptora.'),
(1, 'Programación de Videojuegos 1',
    'Introducción al desarrollo de videojuegos: arquitectura, motores, programación y producción.'),
(5, 'Temas Especiales de Computación 2',
    'Tópicos especiales en computación: nuevas tecnologías y tendencias emergentes según el semestre.'),
(3, 'Movilidad 3',
    'Estancia académica en otra institución nacional o internacional. Temas según la institución receptora.'),
(3, 'Movilidad 4',
    'Estancia académica en otra institución nacional o internacional. Temas según la institución receptora.'),
(1, 'Programación de Videojuegos 2',
    'Programación en C#, realidad virtual y aumentada, y desarrollo de un videojuego completo.'),
(8, 'Temas Especiales de Computación 3',
    'Tópicos especiales en computación: nuevas tecnologías y tendencias emergentes según el semestre.'),
(7, 'Temas Especiales de Computación 4',
    'Tópicos especiales en computación: nuevas tecnologías y tendencias emergentes según el semestre.'),
(6, 'Temas Especiales de Programación 1',
    'Lenguajes, paradigmas y técnicas de programación avanzadas según el semestre.'),
(5, 'Análisis de Macrodatos',
    'Big Data: características, gestión, fuentes de datos, arquitecturas y analítica de grandes volúmenes.'),
(1, 'Aprendizaje Automático',
    'Algoritmos supervisados y no supervisados: SVM, clustering, redes neuronales y modelos probabilísticos.'),
(1, 'Cómputo en la Nube',
    'Servicios en la nube: cómputo, almacenamiento, redes, seguridad y continuidad de negocios.'),
(4, 'Internet de las Cosas',
    'Paradigma IoT: redes de sensores, actuadores, comunicaciones locales y con la nube.'),
(3, 'Movilidad 5',
    'Estancia académica en otra institución nacional o internacional. Temas según la institución receptora.'),
(3, 'Movilidad 6',
    'Estancia académica en otra institución nacional o internacional. Temas según la institución receptora.'),
(2, 'Programación Móvil 2',
    'Gráficos 2D/3D, realidad virtual y aumentada, y desarrollo de videojuegos en plataformas móviles.'),
(2, 'Temas Especiales de Computación 5',
    'Tópicos especiales en computación: nuevas tecnologías y tendencias emergentes según el semestre.'),
(2, 'Temas Especiales de Computación 6',
    'Tópicos especiales en computación: nuevas tecnologías y tendencias emergentes según el semestre.'),
(5, 'Temas Especiales de Hardware',
    'Tópicos avanzados de hardware: arquitecturas emergentes y tecnologías de circuitos integrados.'),
(2, 'Temas Especiales de Programación 2',
    'Lenguajes, paradigmas y técnicas de programación avanzadas según el semestre.'),
(7, 'Temas Especiales de Redes',
    'Tópicos avanzados en redes: protocolos emergentes, SDN y tendencias en comunicaciones.'),
(7, 'Temas Especiales de Seguridad Informática',
    'Tópicos avanzados en seguridad: amenazas emergentes, análisis forense y nuevas normativas.'),
(3, 'Vinculación Empresarial',
    'Proyecto en colaboración con la industria; aplicación de competencias profesionales en un entorno real.'),
(8, 'Visualización',
    'Técnicas y herramientas para la representación visual de datos y creación de aplicaciones de visualización.'),
(5, 'Procesamiento Digital de Señales',
    'Diseño de filtros digitales y procesamiento de audio e imagen mediante técnicas numéricas.'),
(5, 'Reconocimiento de Patrones',
    'Clasificación de patrones usando funciones de distancia, likelihood y algoritmos adaptables.'),
(3, 'Proyecto Escuela-Industria',
    'Desarrollo de un proyecto real en vinculación con el sector productivo o de servicios.'),
(8, 'Instrumentación y Control',
    'Sistemas de medición y control, sensores, técnicas de análisis y manejo de datos experimentales.'),
(2, 'Graficación por Computadora',
    'Primitivas gráficas, transformaciones 2D/3D, diseño de curvas, iluminación y sombreado por computadora.'),
(5, 'Procesamiento Digital de Imágenes',
    'Técnicas de procesamiento y análisis de imágenes digitales: filtrado, segmentación y reconocimiento.'),
(4, 'Robótica',
    'Fundamentos de robótica: cinemática, dinámica, sensores, actuadores y programación de robots.'),
(2, 'Sistemas Expertos',
    'Sistemas basados en conocimiento: representación, razonamiento, incertidumbre y aplicaciones de IA simbólica.');


-- ÁLGEBRA (id_materia=1)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (1, 1, 'Conceptos de álgebra básica');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (1, 2, 'Lógica y teoría de conjuntos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (1, 3, 'Números reales');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (1, 4, 'Números complejos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (1, 5, 'Polinomios');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (1, 6, 'Introducción a las ordenaciones, permutaciones y combinaciones');

-- CÁLCULO DIFERENCIAL E INTEGRAL (id_materia=3)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (3, 1, 'Funciones, límites y continuidad');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (3, 2, 'Aplicaciones inmediatas de la derivada');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (3, 3, 'Derivada y diferencial de una función');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (3, 4, 'Aplicaciones inmediatas de la integral');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (3, 5, 'Integral indefinida, fórmulas de reducción');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (3, 6, 'Integral definida, aplicaciones');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (3, 7, 'Sucesiones y series');

-- COMPUTADORAS Y PROGRAMACIÓN (id_materia=4)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (4, 1, 'Conceptos básicos de computación');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (4, 2, 'Metodología de la programación estructurada');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (4, 3, 'Lenguaje C');

-- GEOMETRÍA ANALÍTICA (id_materia=2)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (2, 1, 'Elementos de trigonometría y geometría analítica en el espacio de dos dimensiones');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (2, 2, 'Álgebra vectorial');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (2, 3, 'La recta y el plano en el espacio de tres dimensiones');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (2, 4, 'Ecuaciones paramétricas y en coordenadas polares');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (2, 5, 'Curvas y superficies en tres dimensiones');

-- INTRODUCCIÓN A LA INGENIERÍA EN COMPUTACIÓN (id_materia=5)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (5, 1, 'Plan de vida');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (5, 2, 'Manejo básico de software');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (5, 3, 'Manejo básico de Linux');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (5, 4, 'Método general de la ingeniería');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (5, 5, 'Los valores del ingeniero en computación');

-- ÁLGEBRA LINEAL (id_materia=6)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (6, 1, 'Sistemas de ecuaciones lineales');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (6, 2, 'Matrices y determinantes');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (6, 3, 'Espacios vectoriales');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (6, 4, 'Espacios con producto interno');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (6, 5, 'Transformaciones lineales');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (6, 6, 'Operadores lineales en espacios con producto interno');

-- CÁLCULO VECTORIAL (id_materia=7)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (7, 1, 'Funciones, límites, continuidad para funciones de más de una variable independiente');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (7, 2, 'Derivadas parciales, diferenciales exactas');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (7, 3, 'Aplicaciones');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (7, 4, 'Integrales dobles y triples');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (7, 5, 'Aplicaciones de las integrales múltiples');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (7, 6, 'Funciones vectoriales');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (7, 7, 'Integrales de línea');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (7, 8, 'Integrales de superficie');

-- COMUNICACIÓN (id_materia=9)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (9, 1, 'Comunicación humana');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (9, 2, 'Comunicación escrita');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (9, 3, 'Comunicación oral');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (9, 4, 'Comunicación no verbal (kinésica)');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (9, 5, 'Comunicación en grupo');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (9, 6, 'Presentación estratégica de mensajes');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (9, 7, 'La vida académica y profesional');

-- EMPRENDIMIENTO 1 (id_materia=10)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (10, 1, 'El empresario');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (10, 2, 'La empresa, constitución, desarrollo y consolidación');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (10, 3, 'La empresa y la contabilidad');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (10, 4, 'La empresa y el costo');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (10, 5, 'La empresa y el presupuesto');

-- PROGRAMACIÓN ORIENTADA A OBJETOS (id_materia=8)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (8, 1, 'La programación orientada a objetos (POO)');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (8, 2, 'Java primera parte');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (8, 3, 'Java segunda parte');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (8, 4, 'Interfaz gráfica de usuario en Java');

-- TALLER DE CREATIVIDAD E INNOVACIÓN (id_materia=11)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (11, 1, 'Problemas y soluciones a necesidades fisiológicas');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (11, 2, 'Problemas y soluciones a necesidades de seguridad');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (11, 3, 'Problemas y soluciones a necesidades de pertenencia');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (11, 4, 'Problemas y soluciones a necesidades de autoestima');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (11, 5, 'Problemas y soluciones a necesidades del ser');

-- ECUACIONES DIFERENCIALES (id_materia=15)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (15, 1, 'Conceptos y aplicaciones de las ecuaciones diferenciales de primer orden');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (15, 2, 'Ecuaciones diferenciales lineales');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (15, 3, 'Sistemas de ecuaciones lineales');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (15, 4, 'Transformada de Laplace');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (15, 5, 'Series de Fourier');

-- ELECTRICIDAD Y MAGNETISMO (id_materia=12)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (12, 1, 'Campo y potencial eléctrico');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (12, 2, 'Capacitancia y dieléctricos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (12, 3, 'Circuitos eléctricos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (12, 4, 'Campo magnético');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (12, 5, 'Inducción electromagnética');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (12, 6, 'Propiedades magnéticas de la materia');

-- EMPRENDIMIENTO 2 (id_materia=16)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (16, 1, 'Concepto básico de economía');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (16, 2, 'Entorno macroeconómico');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (16, 3, 'El mercado, la empresa y el emprendedor');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (16, 4, 'El dinero y la empresa');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (16, 5, 'La balanza de pagos y el tipo de cambio');

-- ESTRUCTURA DE DATOS (id_materia=13)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (13, 1, 'Fundamentos de estructura de datos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (13, 2, 'Listas ligadas');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (13, 3, 'Métodos de ordenamiento');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (13, 4, 'Árboles y grafos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (13, 5, 'Diccionarios');

-- MÉTODOS NUMÉRICOS (id_materia=14)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (14, 1, 'Ceros de una función');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (14, 2, 'Series de Taylor y de McLaurin');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (14, 3, 'Matrices y sistemas lineales de ecuaciones, soluciones numéricas');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (14, 4, 'Soluciones numéricas de sistemas no lineales');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (14, 5, 'Interpolación');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (14, 6, 'Derivación numérica, diferencias finitas');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (14, 7, 'Integración numérica');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (14, 8, 'Solución numérica de ecuaciones diferenciales y sistemas de ecuaciones diferenciales');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (14, 9, 'Teoría de la aproximación');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (14, 10, 'El método de Montecarlo');

-- BASES DE DATOS 1 (id_materia=18)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (18, 1, 'Introducción a las bases de datos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (18, 2, 'Modelo de datos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (18, 3, 'Modelo relacional');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (18, 4, 'Diseño lógico de bases de datos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (18, 5, 'Diseño físico de la base de datos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (18, 6, 'Manejadores de bases de datos');

-- DISPOSITIVOS ELECTRÓNICOS (id_materia=21)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (21, 1, 'Introducción');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (21, 2, 'Conceptos de física de semiconductores');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (21, 3, 'El diodo semiconductor y modelo de estudio');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (21, 4, 'El transistor de efecto de campo (FET)');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (21, 5, 'El transistor bipolar de juntura (TBJ)');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (21, 6, 'El amplificador operacional (AO)');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (21, 7, 'Reguladores de tensión');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (21, 8, 'Otros dispositivos');

-- EMPRENDIMIENTO 3 (id_materia=19)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (19, 1, 'La importancia del entorno financiero en el plan de negocios');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (19, 2, 'El efecto del precio del dinero sobre los flujos de efectivo');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (19, 3, 'Valuación económica');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (19, 4, 'El simulador de negocios');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (19, 5, 'Entorno del plan de negocios');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (19, 6, 'El financiamiento y el fondeo');

-- MATEMÁTICAS DISCRETAS (id_materia=20)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (20, 1, 'Lógica proposicional, cálculo de predicados y álgebra booleana');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (20, 2, 'Sucesiones, recurrencia, conjuntos, relaciones, funciones e inducción matemática');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (20, 3, 'Teoría elemental de números y métodos de demostración');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (20, 4, 'Teoría de grafos y árboles');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (20, 5, 'Conteo y probabilidad');

-- PROBABILIDAD Y ESTADÍSTICA (id_materia=17)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (17, 1, 'Estadística descriptiva');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (17, 2, 'Teoría elemental de la probabilidad');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (17, 3, 'Variables aleatorias');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (17, 4, 'Modelos probabilísticos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (17, 5, 'Inferencia estadística');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (17, 6, 'Regresión y correlación lineales');

-- ADMINISTRACIÓN DE PROYECTOS (id_materia=24)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (24, 1, 'Contexto organizacional de la dirección de proyectos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (24, 2, 'Ética en la dirección de proyectos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (24, 3, 'Marcos de referencia nacionales e internacionales de la dirección de proyectos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (24, 4, 'Grupos de procesos de la dirección de proyectos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (24, 5, 'Áreas de conocimiento técnicas de la dirección de proyectos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (24, 6, 'Áreas de conocimiento gerenciales de la dirección de proyectos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (24, 7, 'Metodologías, normas y mejores prácticas aplicables a la gestión de las TIC');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (24, 8, 'Nociones y niveles de madurez de una oficina de dirección de proyectos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (24, 9, 'Introducción a la administración ágil de proyectos');

-- DISEÑO LÓGICO (id_materia=26)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (26, 1, 'Introducción a sistemas digitales');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (26, 2, 'Fundamentos de la lógica');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (26, 3, 'Implementación de funciones lógicas');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (26, 4, 'Circuitos combinacionales');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (26, 5, 'Circuitos secuenciales');

-- DISEÑO Y ANÁLISIS DE ALGORITMOS (id_materia=23)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (23, 1, 'Introducción a los algoritmos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (23, 2, 'Problemas y su modelado');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (23, 3, 'Metodología en el diseño de algoritmos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (23, 4, 'Costos computacionales');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (23, 5, 'Algoritmos computacionales');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (23, 6, 'Teoría de grafos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (23, 7, 'Algoritmos no deterministas');

-- LENGUAJES FORMALES Y AUTÓMATAS (id_materia=22)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (22, 1, 'Introducción');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (22, 2, 'Gramáticas regulares y autómatas de estado finito');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (22, 3, 'Gramáticas de contexto libre y autómatas tipo Push Down');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (22, 4, 'Gramáticas de contexto libre y autómatas tipo Push Down libre');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (22, 5, 'Gramáticas de estructura de frase y máquina de Turing');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (22, 6, 'Autómatas lineales con frontera');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (22, 7, 'Indecibilidad');

-- PROGRAMACIÓN WEB 1 (id_materia=25)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (25, 1, 'Diseño');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (25, 2, 'Planificación');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (25, 3, 'HTML');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (25, 4, 'CSS');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (25, 5, 'XML');

-- COMPILADORES (id_materia=27)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (27, 1, 'Introducción');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (27, 2, 'Análisis lexicográfico');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (27, 3, 'Análisis sintáctico');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (27, 4, 'Análisis semántico');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (27, 5, 'Tablas de símbolos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (27, 6, 'Generación de código intermedio');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (27, 7, 'Generación de código');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (27, 8, 'Optimización de código');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (27, 9, 'Intérprete');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (27, 10, 'Máquinas virtuales');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (27, 11, 'Proyecto final');

-- DISEÑO DE SISTEMAS DIGITALES (id_materia=29)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (29, 1, 'Máquina de estado');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (29, 2, 'Memorias');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (29, 3, 'Dispositivos lógicos programables');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (29, 4, 'Lenguajes de descripción de hardware');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (29, 5, 'Diseño de sistemas mediante lenguajes de descripción de hardware');

-- INGENIERÍA DE SOFTWARE (id_materia=30)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (30, 1, 'Introducción a la ingeniería de software');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (30, 2, 'Patrones de diseño y arquitectura de software');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (30, 3, 'Gestión de proyectos y aseguramiento de la calidad del software');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (30, 4, 'Scrum como metodología de desarrollo ágil');

-- SISTEMAS OPERATIVOS (id_materia=28)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (28, 1, 'Conceptos generales');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (28, 2, 'Procesos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (28, 3, 'Gestión de la memoria');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (28, 4, 'Entrada/salida');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (28, 5, 'Sistema de archivos');

-- MICROPROCESADORES Y MICROCONTROLADORES (id_materia=34)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (34, 1, 'Introducción a microprocesadores');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (34, 2, 'Conjunto de instrucciones');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (34, 3, 'Microcontroladores');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (34, 4, 'Puertos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (34, 5, 'Subrutinas e interrupciones');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (34, 6, 'Temporizadores/contadores');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (34, 7, 'Convertidor analógico-digital');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (34, 8, 'Unidad de comunicación serial');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (34, 9, 'Generación de señales moduladas por ancho de pulso (PWM)');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (34, 10, 'Aplicaciones con microcontroladores');

-- PROGRAMACIÓN WEB 2 (id_materia=32)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (32, 1, 'Introducción a JavaScript');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (32, 2, 'Variables, funciones y objetos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (32, 3, 'Estructuras de control');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (32, 4, 'Eventos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (32, 5, 'El modelo de objetos del documento (DOM)');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (32, 6, 'Conceptos avanzados');

-- REDES DE COMPUTADORAS 1 (id_materia=33)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (33, 1, 'Conceptos básicos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (33, 2, 'Componentes de una red de computadoras');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (33, 3, 'Estándares de redes de computadoras');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (33, 4, 'Protocolos de comunicaciones');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (33, 5, 'TCP/IP');

-- SISTEMAS DE INFORMACIÓN (id_materia=31)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (31, 1, 'Introducción a los sistemas de información');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (31, 2, 'Planeación y desarrollo de sistemas de información y las tecnologías de la información en la empresa');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (31, 3, 'Gobierno TI para la planificación estratégica de negocios');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (31, 4, 'Inteligencia de negocios o Business Intelligence (BI)');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (31, 5, 'Inteligencia social');

-- BASES DE DATOS 2 (id_materia=35)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (35, 1, 'Respaldo y recuperación');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (35, 2, 'Concurrencia y bloqueo');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (35, 3, 'Seguridad en base de datos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (35, 4, 'Desarrollo de aplicaciones en bases de datos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (35, 5, 'Bases de datos distribuidas');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (35, 6, 'Gestión de datos masivos');

-- HABILIDADES DIRECTIVAS (id_materia=38)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (38, 1, 'Habilidades personales');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (38, 2, 'Habilidades interpersonales');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (38, 3, 'Habilidades de grupo');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (38, 4, 'Liderazgo');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (38, 5, 'Gestión de la tecnología');

-- PROGRAMACIÓN MÓVIL 1 (id_materia=36)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (36, 1, 'Introducción a la programación móvil');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (36, 2, 'Mensajes');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (36, 3, 'Tipo de datos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (36, 4, 'Depuración y manejo de errores');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (36, 5, 'Seguridad');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (36, 6, 'Controles');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (36, 7, 'Eventos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (36, 8, 'Sensores');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (36, 9, 'Pantallas o vistas');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (36, 10, 'Menús');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (36, 11, 'Actividades en segundo plano');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (36, 12, 'Multimedia y gráficos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (36, 13, 'Datos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (36, 14, 'Publicación de la aplicación');

-- REDES DE COMPUTADORAS 2 (id_materia=37)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (37, 1, 'Diseño de redes');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (37, 2, 'Redes IPv4');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (37, 3, 'Redes virtuales');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (37, 4, 'Conmutación multicapa');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (37, 5, 'Enrutamiento y el protocolo OSPF');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (37, 6, 'Enrutamiento y el protocolo BGP');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (37, 7, 'Soporte a nivel capa');

-- INTELIGENCIA ARTIFICIAL (id_materia=39)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (39, 1, 'Introducción a la inteligencia artificial');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (39, 2, 'Agentes inteligentes');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (39, 3, 'Resolución de problemas usando la inteligencia artificial');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (39, 4, 'Conocimiento y razonamiento');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (39, 5, 'Aprendizaje');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (39, 6, 'Proyecto de aplicación');

-- MINERÍA DE DATOS (id_materia=41)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (41, 1, 'Extracción y procesamiento de datos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (41, 2, 'Metodología de la minería de datos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (41, 3, 'Data Warehouse para minería de datos');

-- SEGURIDAD INFORMÁTICA (id_materia=40)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (40, 1, 'Introducción a la seguridad informática');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (40, 2, 'Arquitectura de seguridad de la información');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (40, 3, 'Criptografía y sus aplicaciones en la seguridad informática');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (40, 4, 'Normatividad de la seguridad de la información');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (40, 5, 'Seguridad en redes de computadoras');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (40, 6, 'Legislación nacional e internacional en temas digitales');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (40, 7, 'Áreas de especialidad de seguridad informática');

-- ADQUISICIÓN DE DATOS (id_materia=42)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (42, 1, 'Arquitectura general del sistema de instrumentación virtual');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (42, 2, 'Tecnologías para la adquisición de datos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (42, 3, 'Manipulación y procesamiento de datos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (42, 4, 'Diseño, desarrollo e integración de instrumentos virtuales');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (42, 5, 'Aplicaciones');

-- MODELADO Y SIMULACIÓN (id_materia=43)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (43, 1, 'Fundamentos del modelado');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (43, 2, 'Sistemas físicos y su modelado');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (43, 3, 'Sistemas biológicos y su modelado');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (43, 4, 'Sistemas económicos y su modelado');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (43, 5, 'Factores a considerar para simular un modelo');

-- ADMINISTRACIÓN DE SISTEMAS MULTIUSUARIO (id_materia=44)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (44, 1, 'Centro de datos clásicos (CDC)');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (44, 2, 'Sistemas operativos en servidores');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (44, 3, 'Linux');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (44, 4, 'Windows');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (44, 5, 'Gestión de recursos');

-- CÓMPUTO DISTRIBUIDO Y PARALELO (id_materia=45)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (45, 1, 'Introducción a la programación en paralelo');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (45, 2, 'Procesos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (45, 3, 'Programación en paralelo');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (45, 4, 'Particionamiento de funciones');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (45, 5, 'Herramientas');

-- TEMAS ESPECIALES DE BASES DE DATOS (id_materia=46)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (46, 1, 'Depende del tema a tratar');

-- SEMINARIO INGENIERÍA EN COMPUTACIÓN (id_materia=47)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (47, 1, 'Depende del tema a tratar');

-- BIOINGENIERÍA (id_materia=48)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (48, 1, 'Sistemas fisiológicos de control');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (48, 2, 'Modelación neuronal');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (48, 3, 'Fundamentos de bio-dispositivos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (48, 4, 'Tratamiento y gestión de datos médicos');

-- MOVILIDAD 1 (id_materia=49)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (49, 1, 'Depende del tema a tratar');

-- TEMAS ESPECIALES DE COMPUTACIÓN 1 (id_materia=50)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (50, 1, 'Depende del tema a tratar');

-- MOVILIDAD 2 (id_materia=51)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (51, 1, 'Depende del tema a tratar');

-- PROGRAMACIÓN DE VIDEOJUEGOS 1 (id_materia=52)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (52, 1, 'Introducción a los videojuegos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (52, 2, 'Arquitectura');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (52, 3, 'Motores para la programación de videojuegos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (52, 4, 'Programación');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (52, 5, 'Desarrollo y producción');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (52, 6, 'Proyecto final');

-- TEMAS ESPECIALES DE COMPUTACIÓN 2 (id_materia=53)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (53, 1, 'Depende del tema a tratar');

-- MOVILIDAD 3 (id_materia=54)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (54, 1, 'Depende del tema a tratar');

-- MOVILIDAD 4 (id_materia=55)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (55, 1, 'Depende del tema a tratar');

-- PROGRAMACIÓN DE VIDEOJUEGOS 2 (id_materia=56)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (56, 1, 'Programación en C#');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (56, 2, 'Realidad virtual');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (56, 3, 'Realidad aumentada');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (56, 4, 'Desarrollo de un videojuego');

-- TEMAS ESPECIALES DE COMPUTACIÓN 3 (id_materia=57)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (57, 1, 'Depende del tema a tratar');

-- TEMAS ESPECIALES DE COMPUTACIÓN 4 (id_materia=58)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (58, 1, 'Depende del tema a tratar');

-- TEMAS ESPECIALES DE PROGRAMACIÓN 1 (id_materia=59)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (59, 1, 'Depende del tema a tratar');

-- ANÁLISIS DE MACRODATOS (id_materia=60)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (60, 1, 'Introducción a los macrodatos (Big Data)');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (60, 2, 'Características y campos de aplicación');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (60, 3, 'Gestión de datos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (60, 4, 'Fuentes de datos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (60, 5, 'Arquitecturas Big Data');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (60, 6, 'Analítica de datos');

-- APRENDIZAJE AUTOMÁTICO (id_materia=61)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (61, 1, 'Introducción al aprendizaje automático');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (61, 2, 'Clasificación lineal');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (61, 3, 'Máquinas de vectores de soporte');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (61, 4, 'Clustering');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (61, 5, 'Cadenas ocultas de Markov');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (61, 6, 'Redes bayesianas');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (61, 7, 'Redes neuronales');

-- CÓMPUTO EN LA NUBE (id_materia=62)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (62, 1, 'Introducción');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (62, 2, 'Compute');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (62, 3, 'Storage');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (62, 4, 'Networking');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (62, 5, 'Continuidad de negocios');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (62, 6, 'Seguridad');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (62, 7, 'Administración de servicios');

-- INTERNET DE LAS COSAS (id_materia=63)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (63, 1, 'Introducción al paradigma de Internet de las Cosas');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (63, 2, 'Redes de sensores y actuadores');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (63, 3, 'Comunicaciones locales y con la nube');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (63, 4, 'Interfaces de Internet de las Cosas');

-- MOVILIDAD 5 (id_materia=64)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (64, 1, 'Depende del tema a tratar');

-- MOVILIDAD 6 (id_materia=65)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (65, 1, 'Depende del tema a tratar');

-- PROGRAMACIÓN MÓVIL 2 (id_materia=66)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (66, 1, 'Gráficos en 2D');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (66, 2, 'Gráficos en 3D');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (66, 3, 'Realidad virtual');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (66, 4, 'Realidad aumentada');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (66, 5, 'Desarrollo de videojuegos');

-- TEMAS ESPECIALES DE COMPUTACIÓN 5 (id_materia=67)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (67, 1, 'Depende del tema a tratar');

-- TEMAS ESPECIALES DE COMPUTACIÓN 6 (id_materia=68)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (68, 1, 'Depende del tema a tratar');

-- TEMAS ESPECIALES DE HARDWARE (id_materia=69)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (69, 1, 'Depende del tema a tratar');

-- TEMAS ESPECIALES DE PROGRAMACIÓN 2 (id_materia=70)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (70, 1, 'Depende del tema a tratar');

-- TEMAS ESPECIALES DE REDES (id_materia=71)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (71, 1, 'Depende del tema a tratar');

-- TEMAS ESPECIALES DE SEGURIDAD INFORMÁTICA (id_materia=72)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (72, 1, 'Depende del tema a tratar');

-- VINCULACIÓN EMPRESARIAL (id_materia=73)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (73, 1, 'Depende del tema a tratar');

-- VISUALIZACIÓN (id_materia=74)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (74, 1, 'Introducción al problema');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (74, 2, 'Formatos estándar de archivos de datos para visualización');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (74, 3, 'Técnicas básicas de representación de datos y visualización');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (74, 4, 'Software de representación de datos y visualización');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (74, 5, 'Creación de aplicaciones específicas');

-- PROCESAMIENTO DIGITAL DE SEÑALES (id_materia=75)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (75, 1, 'Introducción al procesamiento digital de señales');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (75, 2, 'Diseño de filtros digitales');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (75, 3, 'Procesamiento digital de audio');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (75, 4, 'Procesamiento digital de imagen');

-- RECONOCIMIENTO DE PATRONES (id_materia=76)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (76, 1, 'Conceptos básicos de reconocimiento de patrones');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (76, 2, 'Funciones de decisiones');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (76, 3, 'Clasificación de patrones por medio de funciones de distancia');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (76, 4, 'Clasificación de patrones por medio de funciones likelihood');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (76, 5, 'Clasificación de patrones usando algoritmos adaptables');

-- INSTRUMENTACIÓN Y CONTROL (id_materia=78)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (78, 1, 'Conceptos básicos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (78, 2, 'Sistemas de medición y control');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (78, 3, 'Medición de variables físicas');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (78, 4, 'Técnicas de análisis para sistemas de control');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (78, 5, 'Interpretación y manejo de datos experimentales');

-- GRAFICACIÓN POR COMPUTADORA (id_materia=79)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (79, 1, 'Introducción');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (79, 2, 'Primitivas gráficas');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (79, 3, 'Transformaciones 2D');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (79, 4, 'Transformación ventana-puerto');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (79, 5, 'Diseño de curvas');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (79, 6, 'Rellenado de áreas');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (79, 7, 'Graficación en 3D');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (79, 8, 'Líneas y superficies ocultas');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (79, 9, 'Teoría de color y técnicas de iluminación y sombreado');

-- ROBÓTICA (id_materia=81)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (81, 1, 'Introducción');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (81, 2, 'Sistemas de control y sensores');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (81, 3, 'Componentes mecánicos de un robot');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (81, 4, 'Cinemática');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (81, 5, 'Dinámica');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (81, 6, 'Lenguaje de programación');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (81, 7, 'Selección de un sistema robótico');

-- SISTEMAS EXPERTOS (id_materia=82)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (82, 1, 'Inteligencia artificial');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (82, 2, 'Sistemas expertos');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (82, 3, 'Conocimiento');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (82, 4, 'Razonamiento');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (82, 5, 'Técnicas de búsqueda');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (82, 6, 'Incertidumbre');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (82, 7, 'Aplicaciones');

-- PROYECTO ESCUELA-INDUSTRIA (id_materia=77)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (77, 1, 'Depende del tema a tratar');

-- PROCESAMIENTO DIGITAL DE IMÁGENES (id_materia=80)
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (80, 1, 'Introducción al procesamiento digital de señales');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (80, 2, 'Diseño de filtros digitales');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (80, 3, 'Procesamiento digital de audio');
INSERT INTO tema (id_materia, numero_tema, nombre) VALUES (80, 4, 'Procesamiento digital de imagen');