
USE referencias_ico;


-- Alumnos Recopilacion de Excel
INSERT INTO usuario (nombre, ap_paterno, ap_materno, email, rol, password) VALUES
('Laura',    'Martínez',  'Soto',     'admin@aragon.unam.mx',         'Administrador', 'admin123');
INSERT INTO usuario(nombre, ap_paterno, ap_materno, email, rol, password) VALUES
('Acosta','Avila','Diego Ernesto ','diegoacosta14@aragon.unam.mx', 'Alumno','1234');	
INSERT INTO usuario(nombre, ap_paterno, ap_materno, email, rol, password) VALUES
('Alamo','Bonola','Aldo','aldoalamo503@aragon.unam.mx', 'Alumno','1234');	
INSERT INTO usuario(nombre, ap_paterno, ap_materno, email, rol, password) VALUES
('Alcantara','Cruz','Donovan Amaury','amauryalcantara19@aragon.unam.mx', 'Alumno','1234');	
INSERT INTO usuario(nombre, ap_paterno, ap_materno, email, rol, password) VALUES
('Arteaga ','Crescencio ','Victor Alexis','alexisarteaga03@aragon.unam.mx', 'Alumno','1234');	
INSERT INTO usuario(nombre, ap_paterno, ap_materno, email, rol, password) VALUES
('Barrera ','Correa','Yolanda Michel','yolandabarrera03@aragon.unam.mx', 'Alumno','1234');	
INSERT INTO usuario(nombre, ap_paterno, ap_materno, email, rol, password) VALUES
('Carvajal','Solache','Argenis','carvajalsolache1@aragon.unam.mx', 'Alumno','1234');	
INSERT INTO usuario(nombre, ap_paterno, ap_materno, email, rol, password) VALUES
('Castaneda','Avila','Leonardo Isay','leonardocastaneda27@aragon.unam.mx', 'Alumno','1234');	
INSERT INTO usuario(nombre, ap_paterno, ap_materno, email, rol, password) VALUES
('Castillo','Muñoz ','Omar Isaias','omarcastillo281@aragon.unam.mx', 'Alumno','1234');	
INSERT INTO usuario(nombre, ap_paterno, ap_materno, email, rol, password) VALUES
('Garcia','Toro','Alberto','albertogarcia10@aragon.unam.mx', 'Alumno','1234');	
INSERT INTO usuario(nombre, ap_paterno, ap_materno, email, rol, password) VALUES
('Garcia ','Santiago ','Emiliano ','emilianogarcia18@aragon.unam.mx', 'Alumno','1234');	
INSERT INTO usuario(nombre, ap_paterno, ap_materno, email, rol, password) VALUES
('Garcia ','Saavedra','Oscar Daniel','danielgarcia97@aragon.unam.mx', 'Alumno','1234');	
INSERT INTO usuario(nombre, ap_paterno, ap_materno, email, rol, password) VALUES
('Hernandez ','Dominguez','Jessica Daniela','jessicahernandez44@aragon.unam.mx', 'Alumno','1234');	
INSERT INTO usuario(nombre, ap_paterno, ap_materno, email, rol, password) VALUES
(' Hernández','Miranda','Jorge Eduardo','jorgemiranda08@aragon.unam.mx', 'Alumno','1234');	
INSERT INTO usuario(nombre, ap_paterno, ap_materno, email, rol, password) VALUES
('Hernandez ','Velazquez ','Ariel','Ariel.hernandez89@aragon.unam.mx', 'Alumno','1234');	
INSERT INTO usuario(nombre, ap_paterno, ap_materno, email, rol, password) VALUES
('Jiménez','Romero','Nayeli Viridiana ','viridianajimenez21@aragon.unam.mx', 'Alumno','1234');	
INSERT INTO usuario(nombre, ap_paterno, ap_materno, email, rol, password) VALUES
('Juarez','Asbell','Damian','Damianjuarez90@aragon.unam.mx', 'Alumno','1234');	
INSERT INTO usuario(nombre, ap_paterno, ap_materno, email, rol, password) VALUES
('Lopez','Rivera','Alan Otzar','alanlopez320@aragon.unam.mx', 'Alumno','1234');	
INSERT INTO usuario(nombre, ap_paterno, ap_materno, email, rol, password) VALUES
('Lorrabaquio','Rodriguez','Joanna Lizbeth','joannalorrabaquio422@aragon.unam.mx', 'Alumno','1234');	
INSERT INTO usuario(nombre, ap_paterno, ap_materno, email, rol, password) VALUES
('Manzano','Mejía','Itandehui','itandehuimanzano@aragon.unam.mx', 'Alumno','1234');	
INSERT INTO usuario(nombre, ap_paterno, ap_materno, email, rol, password) VALUES
('Montaño','Mendoza','David Ojier','ojiermendoza93@aragon.unam.mx', 'Alumno','1234');	
INSERT INTO usuario(nombre, ap_paterno, ap_materno, email, rol, password) VALUES
('Montejo','Padilla','Mariana','marianamontejo25@aragon.unam.mx', 'Alumno','1234');	
INSERT INTO usuario(nombre, ap_paterno, ap_materno, email, rol, password) VALUES
('Moore','Gonzalez','Alexander Leroy','alexandermoore21@aragon.unam.mx', 'Alumno','1234');	
INSERT INTO usuario(nombre, ap_paterno, ap_materno, email, rol, password) VALUES
('Ortega','Enriquez','Alejandro','alejandroortega590@aragon.unam.mx', 'Alumno','1234');	
INSERT INTO usuario(nombre, ap_paterno, ap_materno, email, rol, password) VALUES
('Ortiz','Virgen','Gustavo Adolfo ','gustavoortiz703@aragon.unam.mx', 'Alumno','1234');	
INSERT INTO usuario(nombre, ap_paterno, ap_materno, email, rol, password) VALUES
('Ramirez','Picazo','Bruno','brunopicazo4@aragon.unam.mx', 'Alumno','1234');	

 SELECT COUNT(id_usuario) FROM usuario where rol = 'Alumno';


INSERT INTO referencia (id_usuario, id_tipo_fuente, titulo, subtitulo, anio_publicacion, idioma, doi, url, resumen) VALUES
-- Libros
(2, 1, 'Database System Concepts',
        'Seventh Edition',
        2020, 'Inglés', '10.1145/3183713', NULL,
        'Texto clásico sobre fundamentos de bases de datos relacionales, SQL, transacciones y sistemas distribuidos.'),

(2, 1, 'Artificial Intelligence: A Modern Approach',
        'Fourth Edition',
        2021, 'Inglés', NULL, NULL,
        'Referencia estándar en IA; cubre búsqueda, aprendizaje automático, lógica y agentes racionales.'),

(3, 1, 'Computer Networks',
        'Fifth Edition',
        2011, 'Inglés', NULL, NULL,
        'Descripción detallada de los modelos OSI y TCP/IP, protocolos de red y tecnologías inalámbricas.'),

(4, 1, 'Investigación de Operaciones',
        'Novena Edición',
        2012, 'Español', NULL, NULL,
        'Programación lineal, redes, teoría de colas y toma de decisiones bajo incertidumbre.'),

-- Tesis
(4, 2, 'Optimización de consultas SQL en bases de datos distribuidas mediante índices adaptativos',
        NULL,
        2023, 'Español', NULL, NULL,
        'Propuesta de un algoritmo de indexación adaptativa para reducir el tiempo de respuesta en SGBD distribuidos.'),

(5, 2, 'Detección de intrusos en redes IoT utilizando redes neuronales convolucionales',
        NULL,
        2024, 'Español', NULL, NULL,
        'Sistema de detección de anomalías en tráfico de red IoT con CNN, alcanzando 97.3% de precisión.'),

-- Artículos de revista
(6, 3, 'Attention Is All You Need',
        NULL,
        2017, 'Inglés', '10.48550/arXiv.1706.03762', 'https://arxiv.org/abs/1706.03762',
        'Introduce la arquitectura Transformer basada únicamente en mecanismos de atención, sin recurrencia ni convoluciones.'),

(3, 3, 'Aplicación de algoritmos genéticos para la asignación óptima de horarios en instituciones educativas',
        NULL,
        2022, 'Español', '10.22201/fi.25940732e.2022.23.3', NULL,
        'Propone un AG para resolver el problema de timetabling en universidades públicas mexicanas.'),

-- Páginas web
(2, 4, 'Documentación oficial de Sequelize ORM',
        NULL,
        2024, 'Inglés', NULL, 'https://sequelize.org/docs/v6/',
        'Referencia completa de la API de Sequelize v6 para Node.js, incluyendo modelos, asociaciones y migraciones.'),

(5, 4, 'MDN Web Docs: Introducción a las bases de datos',
        NULL,
        2023, 'Español', NULL, 'https://developer.mozilla.org/es/docs/Learn/Server-side/First_steps/Introduction',
        'Artículo introductorio de Mozilla sobre bases de datos del lado del servidor para desarrollo web.');

-- ──────────────────────────────────────────────────────────
-- LIBROS  (id_referencia 1-4)
-- ──────────────────────────────────────────────────────────

INSERT INTO libro (id_referencia, isbn13, isbn10, editorial, ciudad_publicacion, pais_publicacion, numero_edicion, total_paginas, volumen) VALUES
(1, '978-1-260-08450-4', NULL,        'McGraw-Hill Education', 'Nueva York', 'Estados Unidos', 7, 1376, NULL),
(2, '978-0-13-468599-1', NULL,        'Pearson',               'Hoboken',    'Estados Unidos', 4, 1132, NULL),
(3, '978-0-13-212695-3', '0-13-212695-2', 'Pearson Prentice Hall', 'Upper Saddle River', 'Estados Unidos', 5, 960, NULL),
(4, '978-607-32-1767-4', NULL,        'Pearson Educación',     'Ciudad de México', 'México', 9, 824, NULL);

-- ──────────────────────────────────────────────────────────
-- TESIS  (id_referencia 5-6)
-- ──────────────────────────────────────────────────────────

INSERT INTO tesis (id_referencia, grado, institucion, facultad, departamento, ciudad, pais, director_tesis, total_paginas) VALUES
(5, 'Maestria',     'Universidad Nacional Autónoma de México', 'FES Aragón', 'Ingeniería en Computación', 'Ciudad de México', 'México', 'Dr. Roberto Sánchez Medina', 112),
(6, 'Licenciatura', 'Universidad Nacional Autónoma de México', 'FES Aragón', 'Ingeniería en Computación', 'Ciudad de México', 'México', 'Dra. Claudia Fuentes Ramos',  98);

-- ──────────────────────────────────────────────────────────
-- ARTÍCULOS DE REVISTA  (id_referencia 7-8)
-- ──────────────────────────────────────────────────────────

INSERT INTO articulo_revista (id_referencia, nombre_revista, issn, volumen, numero, pagina_inicio, pagina_fin, editorial) VALUES
(7, 'Advances in Neural Information Processing Systems (NeurIPS)', NULL, '30', NULL, '5998', '6008', 'Curran Associates'),
(8, 'Ingeniería, Investigación y Tecnología (UNAM)',               '2594-0732', '23', '3', '1', '14',   'Facultad de Ingeniería UNAM');

-- ──────────────────────────────────────────────────────────
-- PÁGINAS WEB  (id_referencia 9-10)
-- ──────────────────────────────────────────────────────────

INSERT INTO pagina_web (id_referencia, nombre_sitio, fecha_consulta, fecha_publicacion) VALUES
(9,  'Sequelize Documentation', '2025-01-10', '2024-11-01'),
(10, 'MDN Web Docs',            '2025-03-05', '2023-08-15');

-- ──────────────────────────────────────────────────────────
-- REFERENCIA_AUTOR
-- ──────────────────────────────────────────────────────────

-- Ref 1: Database System Concepts → Silberschatz, Korth, Sudarshan
INSERT INTO referencia_autor VALUES (1, 1, 1, 'Autor'), (1, 2, 2, 'Autor'), (1, 3, 3, 'Autor');

-- Ref 2: AI Modern Approach → Russell, Norvig
INSERT INTO referencia_autor VALUES (2, 4, 1, 'Autor'), (2, 5, 2, 'Autor');

-- Ref 3: Computer Networks → Tanenbaum, Wetherall
INSERT INTO referencia_autor VALUES (3, 6, 1, 'Autor'), (3, 7, 2, 'Autor');

-- Ref 4: Investigación de Operaciones → Taha
INSERT INTO referencia_autor VALUES (4, 8, 1, 'Autor');

-- Ref 5: Tesis maestría → Miguel Torres (id_usuario=4, no es autor registrado, usamos autor interno)
INSERT INTO referencia_autor VALUES (5, 9, 1, 'Autor');   -- Ana Luisa Gómez como directora citada no aplica; ponemos al alumno como autor
-- Para la tesis del alumno el autor es él mismo; usamos un autor genérico:
-- (ya insertamos a Ana Luisa Gómez id=9, la usamos como referencia interna de autoría)

-- Ref 6: Tesis licenciatura → Valeria López (autor)
INSERT INTO referencia_autor VALUES (6, 10, 1, 'Autor');  -- Roberto Sánchez

-- Ref 7: Attention Is All You Need (paper original tiene 8 autores; ponemos 3 representativos)
-- Usamos autores ya registrados
INSERT INTO referencia_autor VALUES (7, 4, 1, 'Autor'), (7, 5, 2, 'Coautor');

-- Ref 8: Artículo UNAM → Ana Luisa Gómez, Claudia Fuentes
INSERT INTO referencia_autor VALUES (8, 9, 1, 'Autor'), (8, 11, 2, 'Coautor');

-- Ref 9: Sequelize Docs → sin autor personal registrado (fuente institucional)
-- Ref 10: MDN → sin autor personal registrado

-- ──────────────────────────────────────────────────────────
-- PALABRAS CLAVE
-- ──────────────────────────────────────────────────────────

INSERT INTO palabra_clave (palabra) VALUES
('base de datos'),('sql'),('normalización'),('transacciones'),
('inteligencia artificial'),('aprendizaje automático'),('redes neuronales'),
('redes de computadoras'),('protocolo tcp/ip'),('modelo osi'),
('investigación de operaciones'),('programación lineal'),
('tesis'),('maestría'),('licenciatura'),
('transformer'),('atención'),('procesamiento de lenguaje natural'),
('algoritmos genéticos'),('optimización'),('horarios'),
('sequelize'),('orm'),('node.js'),
('mdn'),('desarrollo web'),('servidor');

-- ──────────────────────────────────────────────────────────
-- REFERENCIA_PALABRA
-- ──────────────────────────────────────────────────────────

-- Ref 1: Database System Concepts
INSERT INTO referencia_palabra VALUES (1,1),(1,2),(1,3),(1,4);

-- Ref 2: AI Modern Approach
INSERT INTO referencia_palabra VALUES (2,5),(2,6),(2,7);

-- Ref 3: Computer Networks
INSERT INTO referencia_palabra VALUES (3,8),(3,9),(3,10);

-- Ref 4: Investigación de Operaciones
INSERT INTO referencia_palabra VALUES (4,11),(4,12);

-- Ref 5: Tesis BD distribuidas
INSERT INTO referencia_palabra VALUES (5,1),(5,2),(5,13),(5,14);

-- Ref 6: Tesis IoT + CNN
INSERT INTO referencia_palabra VALUES (6,7),(6,8),(6,15);

-- Ref 7: Attention Is All You Need
INSERT INTO referencia_palabra VALUES (7,16),(7,17),(7,18);

-- Ref 8: Algoritmos genéticos horarios
INSERT INTO referencia_palabra VALUES (8,19),(8,20),(8,21);

-- Ref 9: Sequelize Docs
INSERT INTO referencia_palabra VALUES (9,22),(9,23),(9,24);

-- Ref 10: MDN
INSERT INTO referencia_palabra VALUES (10,25),(10,26),(10,27);

-- ──────────────────────────────────────────────────────────
-- CITAS GENERADAS (ejemplos pre-generados)
-- ──────────────────────────────────────────────────────────

INSERT INTO cita_generada (id_referencia, id_formato, id_usuario, texto_cita, texto_referencia_completa, verificada) VALUES

-- Ref 1 en APA por Carlos (id_usuario=2)
(1, 1, 2,
 '(Silberschatz et al., 2020)',
 'Silberschatz, A., Korth, H. F. & Sudarshan, S. (2020). *Database System Concepts: Seventh Edition* (7.ª ed.). McGraw-Hill Education.',
 1),

-- Ref 1 en IEEE por Miguel (id_usuario=4)
(1, 2, 4,
 '[1]',
 'A. Silberschatz, H. F. Korth, S. Sudarshan, *Database System Concepts*, 7ª ed. McGraw-Hill Education, 2020.',
 1),

-- Ref 2 en APA por Carlos (id_usuario=2)
(2, 1, 2,
 '(Russell & Norvig, 2021)',
 'Russell, S. J. & Norvig, P. (2021). *Artificial Intelligence: A Modern Approach: Fourth Edition* (4.ª ed.). Pearson.',
 1),

-- Ref 7 en APA por Andrés (id_usuario=6)
(7, 1, 6,
 '(Russell & Norvig, 2017)',
 'Russell, S. J. & Norvig, P. (2017). Attention Is All You Need. *Advances in Neural Information Processing Systems (NeurIPS)*, *30*, 5998–6008. https://doi.org/10.48550/arXiv.1706.03762',
 0),

-- Ref 7 en IEEE por Andrés (id_usuario=6)
(7, 2, 6,
 '[2]',
 'S. J. Russell, P. Norvig, "Attention Is All You Need," *Advances in Neural Information Processing Systems (NeurIPS)*, vol. 30, pp. 5998–6008, 2017.',
 0),

-- Ref 9 en APA por Carlos (id_usuario=2)
(9, 1, 2,
 '(Sequelize Documentation, 2024)',
 'Sequelize Documentation. (2024). *Documentación oficial de Sequelize ORM*. Sequelize. Recuperado el 2025-01-10. https://sequelize.org/docs/v6/',
 0);

-- ──────────────────────────────────────────────────────────
-- VERIFICACIÓN RÁPIDA
-- ──────────────────────────────────────────────────────────
SELECT 'usuarios'         AS tabla, COUNT(*) AS registros FROM usuario
UNION ALL
SELECT 'tipos_fuente',      COUNT(*) FROM tipos_fuente
UNION ALL
SELECT 'referencias',       COUNT(*) FROM referencia
UNION ALL
SELECT 'autores',           COUNT(*) FROM autor
UNION ALL
SELECT 'referencia_autor',  COUNT(*) FROM referencia_autor
UNION ALL
SELECT 'palabras_clave',    COUNT(*) FROM palabra_clave
UNION ALL
SELECT 'referencia_palabra',COUNT(*) FROM referencia_palabra
UNION ALL
SELECT 'libros',            COUNT(*) FROM libro
UNION ALL
SELECT 'tesis',             COUNT(*) FROM tesis
UNION ALL
SELECT 'articulos_revista', COUNT(*) FROM articulo_revista
UNION ALL
SELECT 'paginas_web',       COUNT(*) FROM pagina_web
UNION ALL
SELECT 'formatos_cita',     COUNT(*) FROM formato_cita
UNION ALL
SELECT 'citas_generadas',   COUNT(*) FROM cita_generada;
