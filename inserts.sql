
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

-- Referencias Primer Semestre
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(2, 1, 'Algebra Superior', 1990, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(18, 1, 'Algebra  ', 2013, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(25, 1, 'Algebra Elemental', 2005, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(22, 1, 'Algebra y geometria: teoria,practica y aplicaciones', 2018, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(4, 1, 'Algebra Superior', 1991, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(22, 1, 'Algebra Intermedia', 2000, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(22, 1, 'Algebra', 2008, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(25, 1, 'Teoria y Problemas de teoria de conjuntos y temas ofines', 1991, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(24, 1, 'Vive la Probabilidad y Estadística 2.', 2013, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(23, 1, 'Matemáticas discretas.', 1990, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(15, 1, 'Algebra.', 2008, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(11, 1, 'Algebra and trigonometry.', 2012, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(2, 1, 'Álgebra y trigonometría con geometría analítica.', 2002, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(5, 1, 'Algebra and trigonometry.', 2012, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(16, 1, 'Writing the History of Mathematics: Its Historical Development.', 2002, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(2, 1, 'Imagine Math. Between Culture and Mathematics.', 2012, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(19, 1, 'Tales of Mathematicians and Physicists.', 2007, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(7, 1, 'Algebra-Baldor', 2019, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(17, 1, 'Alebra Intermedia', 2018, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(19, 1, 'Algebra para Ingenieros', 2021, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(20, 1, 'Algebra Moderna', 1990, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(18, 1, 'Algebra Universitaria', 2025, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(4, 1, 'Algebra Lineal', 2012, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(9, 1, 'College Algebra', 2019, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(8, 1, 'Intermediate Algebra', 2014, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(26, 1, 'Algebra', 2024, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(2, 1, 'Alegebra Superior', 2014, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(8, 1, 'Fundamentos de los metodos computacionales en algebra lineal', 2018, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(10, 1, 'Lecciones de algebra', 2014, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(15, 1, 'Algebra de Conjuntos', 2020, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(12, 1, 'Cálculo vectorial', 2013, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(8, 1, 'Cálculo diferencial e integral', 2008, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(10, 1, 'Cálculo con aplicaciones', 2014, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(16, 1, 'Cálculo diferencial de una variable con aplicaciones', 2006, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(23, 1, 'Introducción al cálculo vectorial', 2003, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(7, 1, 'Cálculo diferencial e integral', 2007, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(12, 1, 'Fundamentos de cálculo avanzado', 1989, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(20, 1, 'Cálculo de una variable', 2016, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(8, 1, 'Historia de las matemáticas', 2002, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(8, 1, 'Matemáticas y cultura', 2012, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(9, 1, 'Matemáticos y físicos (historias)', 2007, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(24, 1, 'Calculus Early Transcendentals', 2025, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(4, 1, 'Linear Algebra and Its Applications', 2012, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(18, 1, 'Introduction to Probability', 2018, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(10, 1, 'Multivariable Calculus', 2017, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(10, 1, 'Discrete Mathematics and Its Applications', 2019, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(6, 1, 'C++ How to Program', 2016, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(8, 1, 'Introduction to Algorithms', 2009, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(3, 1, 'Java: The Complete Reference', 2018, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(10, 1, 'Database System Concepts', 2019, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(9, 1, 'Software Engineering', 2015, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(9, 1, 'Operating System Concepts', 2018, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(10, 1, 'Computer Networking: A Top-Down Approach', 2017, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(10, 1, 'Computer Networking: A Top-Down Approach', 2017, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(16, 1, 'Artificial Intelligence: A Modern Approach', 2021, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(26, 1, 'Pattern Recognition and Machine Learning', 2006, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(13, 1, 'Cryptography and Network Security', 2016, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(24, 1, 'Learning Web Design', 2018, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(20, 1, 'Data Structures and Algorithms in Java', 2002, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(24, 1, 'Como programar en C++', 2009, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(19, 1, 'Fundamentos de programación.', 2004, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(10, 1, 'Introduccion a las Computadoras y a los Sistemas de Informacion', 1995, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(19, 1, 'Computer fundamentals and programing in C', 2014, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(17, 1, 'De DOS a Windows: Introduccion  a las Computadoras personales', 1996, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(17, 1, 'Desarrollo del pensamiento analítico y sistémico: guía práctica para aprender a programar por competencias.', 2012, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(14, 1, '100 problemas resueltos de programación en lenguaje C para ingeniería.', 2017, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(23, 1, 'Programación estructurada a fondo: implementación de algoritmos en C.', 2017, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(18, 1, 'Diseño de algoritmos y su programación en C.', 2013, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(19, 1, 'El lenguaje de programación C.', 1991, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(9, 1, 'Ansi C a su alcance.', 1991, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(5, 1, 'Algorithms and data structures.', 1976, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(24, 1, 'Programación', 2019, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(5, 1, 'Programación', 2014, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(22, 1, 'Programación', 2021, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(18, 1, 'Programacion', 1999, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(7, 1, 'Lógica de programación', 2021, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(5, 1, 'Introducción a la programación', 2014, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(18, 1, 'Programación estructurada : raptor y lenguaje C', 2014, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(6, 1, 'Introducción a la programación : algoritmos y su implementación en VB.NET, C#, Java y C++', 2007, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(6, 1, 'Principios de programación', 2024, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(8, 1, 'Programación estructurada a fondo : implementación de algoritmos en C', 2017, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(19, 1, 'Lógica de programación : solucionario en pseudocódigo : ejercicios resueltos', 2021, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(16, 1, 'Metodología de la programación : conceptos, lógica e implementación', 2022, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(12, 1, 'Fundamentos de programación : algoritmos, estructuras de datos y objetos', 2020, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(26, 1, 'Introducción a la programación', 2011, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(16, 1, 'Programación en lenguajes estructurados', 2014, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(16, 1, 'Fundamentos de programación : piensa en C', 2006, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(24, 1, 'Fundamentos de programación', 2006, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(8, 1, 'Programming with C', 2004, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(12, 1, 'Introducción a la programación', 2005, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(7, 1, 'Computers and the cybernetic society', 1956, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(8, 1, 'Three models for the description of language', 1956, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(7, 1, 'The logical structure of linguistic theory', 1956, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(24, 1, 'Algoritmos. Investigación y Ciencia', 1977, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(7, 1, 'Architecture of distributed computer systems', 1979, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(17, 1, 'Outline of a new approach to the analysis of complex systems and decision process', 1989, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(20, 1, 'Complex', 1986, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(6, 1, 'A discipline of programming', 1979, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(3, 1, 'The logic of programming', 1984, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(24, 1, 'A first course in computer programming using Pascal', 1982, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(4, 1, 'Anatomia de la Organización', 1997, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(13, 1, 'El pequeño Manual de las teorias de administración', 2015, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(4, 1, 'Habilidades de Dirección', 2003, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(8, 1, 'Plan de Vida y Carrera', 2011, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(14, 1, 'Teorias de la Organización', 1977, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(17, 1, 'Construcción de Plan de Vida', 2018, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(24, 1, 'Introducción a la ciencia de la computación, De la manipulación de datos a la teoria de la computación', 2003, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(11, 1, 'teoría de la computación.', 2008, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(5, 1, 'office 2010 Todo Practica', 2010, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(21, 1, 'The secret Guide to computers', 1993, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(11, 1, 'Computers concepts and Uses', 1988, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(14, 1, '¿Qué es un software?',null, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(6, 1, 'Quiero empezar a usar Linux: guía todo lo que debes saber y primeros pasos', 2022, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(22, 1, 'Linux Guia Práctica', 2009, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(3, 1, 'Manual de administración de Linux', 2007, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(11, 1, 'Ubuntu Linux', 2010, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(24, 1, 'Todo sobre Linux', 1999, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(22, 1, '¿Qué es un error de software?', 2024, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(19, 1, 'Problemas y sus elementos', null, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(10, 1, 'Una Metodología para Resolver problemas de ingenieria', 2020, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(4, 1, 'Sintesis', 2025, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(25, 1, 'Creatividad', 2025, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(20, 1, 'Derecho Informático ', 2004, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(6, 1, 'Engineering Ethics concepts and Cases', 2014, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(20, 1, 'Ingenieria sociedad y medio ambiente', 1994, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(4, 1, 'Ética profesional', 2026, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(25, 1, 'Responsabilidad social', 2025, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(6, 1, 'Las tres R', 2025, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(16, 1, 'LEGISLACIÓN INFORMÁTICA', 2015, 'Español');
INSERT INTO referencia(id_usuario, id_tipo_fuente, titulo, anio_publicacion, idioma) VALUES(9, 1, '¿Qué es la propiedad intelectual?', null, 'Español');

-- Referencia Libros Primer semestre
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(1, 'Editorial Trillas', 'Mexico');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(2, 'Prentice Hall, Pearson', 'Mexico');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(3, 'CECSA', 'Mexico');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(4, 'Editorial Cientifica Universitaria', 'Argentina');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(5, 'UTHEA, Grupo Noriega Editores', 'Mexico');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(6, 'Thomson', 'Mexico');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(7, 'Limusa', 'Mexico');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(8, 'McGrawHill.', 'Mexico');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(9, 'Editorial Progreso, S.A. de C.V.', 'Mexico');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(10, 'Prentice- Hall.', 'Mexico');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(11, 'Alpha Science International.', 'Oxford');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(12, 'Pearson.', 'New Jersey');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(13, 'International Thomson.', 'Mexico');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(14, 'Brooks and Colle, Cengage.', 'EUA');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(15, 'Springer.', 'Switzerland');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(16, 'Springer.', 'Italia');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(17, 'Springer.', 'New York');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(18, 'Grupo Editorial Patria', 'Mexico');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(19, 'Pearson.', 'Mexico');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(20, 'Garcia Marota Editores', 'España');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(21, 'Editorial Trillas', 'Mexico');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(22, 'Universidad Nacional Autonoma de Yucatan', 'Mexico');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(23, 'McGraw Hil Interamericana', 'Mexico');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(24, 'Pearson.', 'Mexico');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(25, 'Pearson.', 'Mexico');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(26, 'N/A', 'España');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(27, 'Fomento Editorial', 'Mexico');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(28, 'Fomento Editorial', 'Mexico');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(29, 'UNAM', 'Mexico');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(30, 'FAcultad de Estudios Superiores Zaragoza', 'Mexico');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(31, 'Pearson', 'México');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(32, 'Limusa', 'México');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(33, 'Springer', 'New York');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(34, 'Thomson', 'México');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(35, 'Thomson', 'México');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(36, 'Cengage Learning', 'México');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(37, 'Limusa', 'México');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(38, 'Pearson', 'México');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(39, 'Birkhäuser', 'Alemania ');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(40, 'Springer', 'Italia');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(41, 'Springer', 'New York');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(42, 'Cengage Learning', 'Estados Unidos');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(43, 'Pearson', 'Estados Unidos');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(44, 'American Mathematical Society', 'Estados Unidos');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(45, 'Cengage Learning', 'Estados Unidos');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(46, 'McGraw-Hill', 'Estados Unidos');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(47, 'Pearson', 'Estados Unidos');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(48, 'MIT Press', 'Estados Unidos');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(49, 'McGraw-Hill', 'Estados Unidos');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(50, 'McGraw-Hill', 'Estados Unidos');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(51, 'Pearson', 'Reino Unido');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(52, 'Wiley', 'Estados Unidos');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(53, 'Pearson', 'Estados Unidos');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(54, 'Pearson', 'Estados Unidos');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(55, 'Pearson', 'Estados Unidos');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(56, 'Springer', 'Alemania ');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(57, 'Pearson', 'Estados Unidos');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(58, 'O''Reilly Media', 'Estados Unidos');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(59, 'Sams Publishing', 'Estados Unidos');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(60, 'Pearson', 'México');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(61, 'N/A', 'México');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(62, 'Prentice Hall', 'México');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(63, 'N/A', 'India');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(64, 'Random House Reference', 'UE');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(65, 'N/A', 'Colombia');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(66, 'Ediciones Parainfo', 'España');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(67, 'Alfaomega', 'Argentina');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(68, 'Alfaomega', 'México');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(69, 'Prentice Hall', 'México');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(70, 'McGraw Hill', 'México');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(71, 'Prentice Hall', 'USA');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(72, 'Síntesis', 'España');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(73, 'Ra-Ma', 'España');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(74, 'Paraninfo', 'España');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(75, 'N/A', 'España');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(76, 'Ediciones de la U', 'Colombia');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(77, 'Grupo Editorial Patria', 'México');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(78, 'Marcombo', 'España');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(79, 'Alfaomega', 'México');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(80, 'Alfaomega', 'México');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(81, 'Alfaomega', 'Argentina');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(82, 'Ediciones de la U', 'Colombia');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(83, 'Alpha Editorial', 'Colombia');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(84, 'McGraw Hill', 'México');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(85, 'Universitat de les illes balears', 'España');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(86, 'Ra-Ma', 'España');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(87, 'Pearson', 'México');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(88, 'Alfaomega', 'México');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(89, 'McGraw Hill', 'USA');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(90, 'Anaya Multimedia', 'España');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(91, 'Chapman & Hall', 'Reino Unido');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(92, 'IRE Transactions', 'EE.UU.');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(93, 'Plenum Press', 'EE.UU.');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(94, 'Scientific American', 'EE.UU.');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(95, 'IEEE', 'Canadá');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(96, 'IEEE', 'EE.UU.');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(97, 'Addison-Wesley', 'EE.UU.');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(98, 'Prentice Hall', 'Países Bajos');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(99, 'Prentice Hall', 'Canadá');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(100, 'Addison-Wesley', 'Hungría');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(101, 'Ediciones:Machi', 'Argentina');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(102, 'Trillas', 'México');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(103, 'Thompson', 'Espàña');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(104, 'Trillas', 'México');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(105, 'Trillas', 'México');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(106, 'N/A', 'México');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(107, 'Thomson', 'México');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(108, 'Cengage Learning', 'USA');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(109, 'Alfa Omega', 'México');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(110, 'S/E', 'USA');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(111, 'Prenrtice Hall', 'USA');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(112, 'N/A', 'N/A');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(113, 'N/A', 'España');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(114, 'AlfaOmega', 'España');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(115, 'McGraw Hill', 'España');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(116, 'RA-MA', 'España');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(117, 'Data Backer', 'España');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(118, 'N/A', 'España');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(119, 'N/A', 'México');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(120, 'N/A', 'México');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(121, 'Editorial Etece', 'Argentina');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(122, 'Editorial Etece', 'Argentina');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(123, 'McGraw-Hill.', 'México');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(124, 'Wadsworth Publishing.', 'USA');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(125, 'Limusa', 'México');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(126, 'Editorial Etece', 'Argentina');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(127, 'Editorial Etece', 'Argentina');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(128, 'Editorial Etece', 'Argentina');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(129, 'N/A', 'USA');
INSERT INTO libro(id_referencia, editorial, pais_publicacion) VALUES(130, 'N/A', 'Suiza');

-- Autores Primer Semestre
INSERT INTO autor(nombres, apellido_paterno) VALUES('Cardenas', 'Humberto');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Elena De', 'Oteyza');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Gordon', 'Fuller');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Salvador', 'Gigena');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Henry', 'Hall');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Jerome', 'Kaufmann');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Charles', 'Lehmann');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Seymour', 'Lipschutz');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Genaro Mariscal', 'Landin');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Kenneth', 'Ross');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Sahai', 'Vivet');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Vikais', 'Bist');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Michael', 'Sullivan');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Earl', 'Swokowski');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Dennis', 'Zill');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Jacqueline', 'Dewar');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Joseph', 'Dauben');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Christoph', 'Scriba');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Michele', 'Emmer');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Simon', 'Gindikin');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Aurelio Dr', 'Baldor');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Allen', 'Anegl');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Dennis', 'Runde');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Guiomar', 'Ruiz');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Israel', 'Nathan');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Carlos', 'Jacob');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Stanley', 'Grossman');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Robert', 'Blitzer');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Margaret', 'Lial');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Biblioteca de la Facultad de Ciencias', 'Matematicas');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Gomez', 'Laveaga');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Yuri', 'Nikolaevich');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Facultad de', 'Ingenieria');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Tomas', 'Vargas');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Antonio', 'Zamora');
INSERT INTO autor(nombres, apellido_paterno) VALUES('S.', 'Colley');
INSERT INTO autor(nombres, apellido_paterno) VALUES('W.', 'Granville');
INSERT INTO autor(nombres, apellido_paterno) VALUES('P.', 'Lax');
INSERT INTO autor(nombres, apellido_paterno) VALUES('S. I.', 'López');
INSERT INTO autor(nombres, apellido_paterno) VALUES('B.', 'Mena');
INSERT INTO autor(nombres, apellido_paterno) VALUES('J.', 'Stewart');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Taylor', '-');
INSERT INTO autor(nombres, apellido_paterno) VALUES('A.', '-');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Mann', '-');
INSERT INTO autor(nombres, apellido_paterno) VALUES('W.', 'R.');
INSERT INTO autor(nombres, apellido_paterno) VALUES('G.', 'Thomas');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Dauben', '-');
INSERT INTO autor(nombres, apellido_paterno) VALUES('J.', '-');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Scriba', '-');
INSERT INTO autor(nombres, apellido_paterno) VALUES('J.', 'C.');
INSERT INTO autor(nombres, apellido_paterno) VALUES('M.', 'Emmer');
INSERT INTO autor(nombres, apellido_paterno) VALUES('S.', 'Gindikin');
INSERT INTO autor(nombres, apellido_paterno) VALUES('James', 'Stewart');
INSERT INTO autor(nombres, apellido_paterno) VALUES('David C.', 'Lay');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Dimitri', 'Panchenko');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Ron', 'Larson');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Kenneth H.', 'Rosen');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Paul', 'Deitel');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Harvey', 'Deitel');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Thomas H.', 'Cormen');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Charles E.', 'Leiserson');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Ronald L.', 'Rivest');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Clifford', 'Stein');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Herbert', 'Schildt');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Abraham', 'Silberschatz');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Henry F.', 'Korth');
INSERT INTO autor(nombres, apellido_paterno) VALUES('S.', 'Sudarshan');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Ian', 'Sommerville');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Abraham', 'Silberschatz');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Peter Baer', 'Galvin');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Greg', 'Gagne');
INSERT INTO autor(nombres, apellido_paterno) VALUES('James F.', 'Kurose');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Keith W.', 'Ross');
INSERT INTO autor(nombres, apellido_paterno) VALUES('James F.', 'Kurose');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Keith W.', 'Ross');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Stuart', 'Russell');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Peter', 'Norvig');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Christopher M.', 'Bishop');
INSERT INTO autor(nombres, apellido_paterno) VALUES('William', 'Stallings');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Jennifer Niederst', 'Robbins');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Robert', 'Lafore');
INSERT INTO autor(nombres, apellido_paterno) VALUES('M.', 'Deitel H.');
INSERT INTO autor(nombres, apellido_paterno) VALUES('E.', 'Peñaloza R.');
INSERT INTO autor(nombres, apellido_paterno) VALUES('L.', 'Long');
INSERT INTO autor(nombres, apellido_paterno) VALUES('D.', 'Pradip');
INSERT INTO autor(nombres, apellido_paterno) VALUES('J', 'Restrepo.');
INSERT INTO autor(nombres, apellido_paterno) VALUES('L.', 'Zapata');
INSERT INTO autor(nombres, apellido_paterno) VALUES('I.', 'Alvarado');
INSERT INTO autor(nombres, apellido_paterno) VALUES('P', 'Sznajdleder');
INSERT INTO autor(nombres, apellido_paterno) VALUES('A.', 'Méndez.');
INSERT INTO autor(nombres, apellido_paterno) VALUES('B.', 'Kernighan');
INSERT INTO autor(nombres, apellido_paterno) VALUES('H.', 'Schildt');
INSERT INTO autor(nombres, apellido_paterno) VALUES('N.', 'Wirth');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Mario', 'Dorrego Martín');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Juan Carlos', 'Moreno Pérez');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Alfonso Jiménez', 'Marín');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Francisco Manuel Pérez', 'Montes');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Javier', 'Oliver');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Jaume', 'Devesa');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Pedro', 'Alonso');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Omar Iván Trejos', 'Buriticá');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Mihaela Juganaru', 'Mathieu');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Edgar Danilo Domínguez', 'Vera');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Felipe', 'Ramírez');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Camilo Chacón', 'Sartori');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Pablo Augusto', 'Sznajdleder');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Omar Iván Trejos', 'Bruriticá');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Enrique Gómez', 'Jiménez');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Roy Aguilera', 'Jinesta');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Luis Joyanes', 'Aguilar');
INSERT INTO autor(nombres, apellido_paterno) VALUES('María J. Abásolo', 'Guerrero');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Francisco J. Perales', 'López');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Juan Carlos Moreno', 'Pérez');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Osvalo Cairó', 'Batisttutti');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Manuel Santos', 'González');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Ismael Patiño', 'Cortés');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Raúl Carrasco', 'Vallinot');
INSERT INTO autor(nombres, apellido_paterno) VALUES('coordinador', '-');
INSERT INTO autor(nombres, apellido_paterno) VALUES('José Luis Raya', 'Cabrera');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Byron S.', 'Gottfried');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Francisco Charte', 'Ojeda');
INSERT INTO autor(nombres, apellido_paterno) VALUES('W. R.', 'Ashby');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Noam', 'Chomsky');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Noam', 'Chomsky');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Donald', 'Knuth');
INSERT INTO autor(nombres, apellido_paterno) VALUES('G. V.', 'Bochmann');
INSERT INTO autor(nombres, apellido_paterno) VALUES('L. A.', 'Zadeh');
INSERT INTO autor(nombres, apellido_paterno) VALUES('A. V.', 'Aho');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Edsger', 'Dijkstra');
INSERT INTO autor(nombres, apellido_paterno) VALUES('E. C. R.', 'Hehner');
INSERT INTO autor(nombres, apellido_paterno) VALUES('E. A.', 'Kelemen');
INSERT INTO autor(nombres, apellido_paterno) VALUES('S', 'Lazatti');
INSERT INTO autor(nombres, apellido_paterno) VALUES('J', 'McGrath');
INSERT INTO autor(nombres, apellido_paterno) VALUES('W', 'Rees');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Elizondo', 'Tovar');
INSERT INTO autor(nombres, apellido_paterno) VALUES('W', 'Sexton');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Uribe', '-');
INSERT INTO autor(nombres, apellido_paterno) VALUES('G.', 'D.');
INSERT INTO autor(nombres, apellido_paterno) VALUES('López', '-');
INSERT INTO autor(nombres, apellido_paterno) VALUES('F.', '-');
INSERT INTO autor(nombres, apellido_paterno) VALUES('BA', 'Forouzan');
INSERT INTO autor(nombres, apellido_paterno) VALUES('J', 'Parsons');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Peña', '-');
INSERT INTO autor(nombres, apellido_paterno) VALUES('R.', 'P.');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Pérez', '-');
INSERT INTO autor(nombres, apellido_paterno) VALUES('A.', 'D.');
INSERT INTO autor(nombres, apellido_paterno) VALUES('R.', 'Walter');
INSERT INTO autor(nombres, apellido_paterno) VALUES('M.', 'Sumner');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Anonimo', '-');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Yúbal', 'Fernández');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Sánchez', '-');
INSERT INTO autor(nombres, apellido_paterno) VALUES('S.', 'P.');
INSERT INTO autor(nombres, apellido_paterno) VALUES('García', '-');
INSERT INTO autor(nombres, apellido_paterno) VALUES('O.', '-');
INSERT INTO autor(nombres, apellido_paterno) VALUES('S.', 'Shah');
INSERT INTO autor(nombres, apellido_paterno) VALUES('O. M.', 'Serrat');
INSERT INTO autor(nombres, apellido_paterno) VALUES('M.', 'Wielsch');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Anonimo', '-');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Anonimo', '-');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Alejandro Santa', 'Cruz');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Equipo', 'etece');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Equipo', 'etece');
INSERT INTO autor(nombres, apellido_paterno) VALUES('V. J.', 'Tellez');
INSERT INTO autor(nombres, apellido_paterno) VALUES('C.', 'Harris');
INSERT INTO autor(nombres, apellido_paterno) VALUES('J.', 'Viqueira');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Equipo', 'etece');
INSERT INTO autor(nombres, apellido_paterno) VALUES('equipo', 'etece');
INSERT INTO autor(nombres, apellido_paterno) VALUES('equipo', 'etece');
INSERT INTO autor(nombres, apellido_paterno) VALUES('Hilda', 'Lopez');
INSERT INTO autor(nombres, apellido_paterno) VALUES('SA', '-');

-- Relacion Referencia-autor
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(1, 1, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(2, 2, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(3, 3, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(4, 4, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(5, 5, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(6, 6, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(7, 7, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(8, 8, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(9, 9, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(10, 10, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(11, 11, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(11, 12, 2);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(12, 13, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(13, 14, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(14, 15, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(14, 16, 2);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(15, 17, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(15, 18, 2);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(16, 19, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(17, 20, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(18, 21, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(19, 22, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(19, 23, 2);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(20, 24, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(21, 25, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(22, 26, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(23, 27, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(24, 28, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(25, 29, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(26, 30, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(27, 31, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(28, 32, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(29, 33, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(30, 34, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(30, 35, 2);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(31, 36, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(32, 37, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(33, 38, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(34, 39, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(35, 40, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(36, 41, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(37, 42, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(37, 43, 2);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(37, 44, 3);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(37, 45, 4);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(38, 46, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(39, 47, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(39, 48, 2);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(39, 49, 3);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(39, 50, 4);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(40, 51, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(41, 52, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(42, 53, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(43, 54, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(44, 55, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(45, 56, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(46, 57, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(47, 58, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(47, 59, 2);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(48, 60, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(48, 61, 2);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(48, 62, 3);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(48, 63, 4);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(49, 64, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(50, 65, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(50, 66, 2);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(50, 67, 3);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(51, 68, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(52, 69, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(52, 70, 2);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(52, 71, 3);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(53, 72, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(53, 73, 2);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(54, 74, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(54, 75, 2);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(55, 76, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(55, 77, 2);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(56, 78, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(57, 79, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(58, 80, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(59, 81, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(60, 82, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(61, 83, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(62, 84, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(63, 85, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(64, 86, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(65, 87, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(66, 88, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(67, 89, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(68, 90, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(69, 91, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(70, 92, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(71, 93, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(72, 94, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(73, 95, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(74, 96, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(74, 97, 2);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(75, 98, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(75, 99, 2);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(75, 100, 3);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(76, 101, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(77, 102, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(78, 103, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(79, 104, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(80, 105, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(81, 106, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(82, 107, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(83, 108, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(83, 109, 2);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(84, 110, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(85, 111, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(85, 112, 2);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(86, 113, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(87, 114, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(88, 115, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(88, 116, 2);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(88, 117, 3);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(88, 118, 4);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(88, 119, 5);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(89, 120, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(90, 121, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(91, 122, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(92, 123, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(93, 124, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(94, 125, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(95, 126, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(96, 127, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(97, 128, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(98, 129, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(99, 130, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(100, 131, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(101, 132, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(102, 133, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(103, 134, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(104, 135, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(105, 136, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(106, 137, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(106, 138, 2);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(106, 139, 3);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(106, 140, 4);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(107, 141, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(108, 142, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(109, 143, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(109, 144, 2);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(109, 145, 3);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(109, 146, 4);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(110, 147, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(111, 148, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(112, 149, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(113, 150, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(114, 151, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(114, 152, 2);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(114, 153, 3);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(114, 154, 4);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(115, 155, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(116, 156, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(117, 157, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(118, 158, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(119, 159, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(120, 160, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(121, 161, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(122, 162, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(123, 163, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(124, 164, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(125, 165, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(126, 166, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(127, 167, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(128, 168, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(129, 169, 1);
INSERT INTO referencia_autor(id_referencia, id_autor, orden_autor) VALUES(130, 170, 1);
 
 -- Temas
-- ══════════════════════════════════════════════════════════
--  REFERENCIA_TEMA · Primer Semestre · COMPLETO
--  Estrategias: numérica | nombre catálogo | todos los temas
-- ══════════════════════════════════════════════════════════

USE referencias_ico;

-- ref=1: Algebra Superior
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 1, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 1, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 1, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 1, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 1, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 1, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 6;

-- ref=2: Algebra  
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 2, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 2, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 2, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 5;

-- ref=3: Algebra Elemental
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 3, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 3, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 3, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 3, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 3, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 3, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 6;

-- ref=4: Algebra y geometria: teoria,practica y aplicaciones
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 4, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 4, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 4, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 4, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 4, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 4, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 6;

-- ref=5: Algebra Superior
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 5, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 5, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 5, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 5, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 5, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 6;

-- ref=6: Algebra Intermedia
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 6, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 6, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 6, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 6, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 6, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 6, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 6;

-- ref=7: Algebra
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 7, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 7, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 7, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 7, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 7, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 6;

-- ref=8: Teoria y Problemas de teoria de conjuntos y temas ofine
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 8, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 8, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 8, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 8, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 8, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 8, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 6;

-- ref=9: Vive la Probabilidad y Estadística 2.
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 9, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 6;

-- ref=10: Matemáticas discretas.
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 10, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 10, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 6;

-- ref=11: Algebra.
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 11, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 1;

-- ref=12: Algebra and trigonometry.
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 12, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 12, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 12, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 12, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 12, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 6;

-- ref=13: Álgebra y trigonometría con geometría analítica.
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 13, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 13, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 13, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 13, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 13, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 6;

-- ref=14: Algebra and trigonometry.
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 14, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 14, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 14, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 14, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 5;

-- ref=15: Writing the History of Mathematics: Its Historical Deve
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 15, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 15, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 15, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 15, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 15, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 15, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 6;

-- ref=16: Imagine Math. Between Culture and Mathematics.
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 16, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 16, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 16, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 16, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 16, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 16, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 6;

-- ref=17: Tales of Mathematicians and Physicists.
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 17, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 17, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 17, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 17, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 17, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 17, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 6;

-- ref=18: Algebra-Baldor
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 18, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 18, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 18, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 18, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 18, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 18, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 6;

-- ref=19: Alebra Intermedia
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 19, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 19, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 19, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 19, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 19, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 19, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 6;

-- ref=20: Algebra para Ingenieros
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 20, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 20, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 20, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 20, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 20, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 20, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 6;

-- ref=21: Algebra Moderna
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 21, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 21, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 21, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 21, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 21, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 21, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 6;

-- ref=22: Algebra Universitaria
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 22, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 22, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 22, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 22, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 22, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 22, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 6;

-- ref=23: Algebra Lineal
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 23, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 23, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 23, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 6;

-- ref=24: College Algebra
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 24, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 24, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 24, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 24, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 24, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 24, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 6;

-- ref=25: Intermediate Algebra
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 25, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 25, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 25, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 6;

-- ref=26: Algebra
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 26, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 26, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 26, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 26, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 26, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 26, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 6;

-- ref=27: Alegebra Superior
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 27, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 27, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 27, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 6;

-- ref=28: Fundamentos de los metodos computacionales en algebra l
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 28, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 28, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 28, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 6;

-- ref=29: Lecciones de algebra
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 29, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 29, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 29, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 29, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 29, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 29, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 6;

-- ref=30: Algebra de Conjuntos
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 30, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 30, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 30, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 30, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 30, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 30, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 6;

-- ref=31 tema libre: 'Cálculo vectorial en varias variables' → todos los temas materia 3
-- ref=31: Cálculo vectorial
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 31, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 31, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 31, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 31, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 31, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 31, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 6;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 31, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 7;

-- ref=32 tema libre: 'Fundamentos del cálculo diferencial e integral' → todos los temas materia 3
-- ref=32: Cálculo diferencial e integral
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 32, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 32, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 32, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 32, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 32, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 32, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 6;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 32, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 7;

-- ref=33 tema libre: 'Aplicaciones del cálculo en problemas reales (economía, físi' → todos los temas materia 3
-- ref=33: Cálculo con aplicaciones
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 33, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 33, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 33, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 33, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 33, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 33, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 6;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 33, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 7;

-- ref=34 tema libre: 'Cálculo diferencial de funciones de una variable y sus aplic' → todos los temas materia 3
-- ref=34: Cálculo diferencial de una variable con aplicaciones
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 34, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 34, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 34, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 34, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 34, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 34, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 6;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 34, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 7;

-- ref=35 tema libre: 'Conceptos básicos e introducción al cálculo vectorial' → todos los temas materia 3
-- ref=35: Introducción al cálculo vectorial
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 35, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 35, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 35, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 35, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 35, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 35, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 6;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 35, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 7;

-- ref=36 tema libre: 'Cálculo diferencial e integral con enfoque analítico y práct' → todos los temas materia 3
-- ref=36: Cálculo diferencial e integral
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 36, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 36, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 36, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 36, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 36, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 36, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 6;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 36, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 7;

-- ref=37 tema libre: 'Cálculo avanzado (teoría y técnicas matemáticas superiores)' → todos los temas materia 3
-- ref=37: Fundamentos de cálculo avanzado
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 37, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 37, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 37, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 37, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 37, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 37, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 6;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 37, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 7;

-- ref=38 tema libre: 'Cálculo de una variable (límites, derivadas e integrales)' → todos los temas materia 3
-- ref=38: Cálculo de una variable
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 38, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 38, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 38, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 38, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 38, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 38, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 6;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 38, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 7;

-- ref=39 tema libre: 'Historia del desarrollo de las matemáticas' → todos los temas materia 3
-- ref=39: Historia de las matemáticas
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 39, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 39, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 39, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 39, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 39, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 39, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 6;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 39, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 7;

-- ref=40 tema libre: 'Relación entre matemáticas, cultura y arte' → todos los temas materia 3
-- ref=40: Matemáticas y cultura
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 40, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 40, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 40, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 40, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 40, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 40, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 6;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 40, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 7;

-- ref=41 tema libre: 'Historias y contribuciones de matemáticos y físicos' → todos los temas materia 3
-- ref=41: Matemáticos y físicos (historias)
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 41, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 41, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 41, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 41, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 41, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 41, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 6;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 41, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 7;

-- ref=42 tema libre: 'Derivadas y aplicaciones' → todos los temas materia 3
-- ref=42: Calculus Early Transcendentals
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 42, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 42, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 42, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 42, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 42, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 42, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 6;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 42, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 7;

-- ref=43 tema libre: 'Álgebra lineal' → todos los temas materia 1
-- ref=43: Linear Algebra and Its Applications
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 43, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 43, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 43, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 43, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 43, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 43, id_tema FROM tema
    WHERE id_materia = 1 AND numero_tema = 6;

-- ref=44 tema libre: 'Probabilidad básica' → todos los temas materia 17
-- ref=44: Introduction to Probability
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 44, id_tema FROM tema
    WHERE id_materia = 17 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 44, id_tema FROM tema
    WHERE id_materia = 17 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 44, id_tema FROM tema
    WHERE id_materia = 17 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 44, id_tema FROM tema
    WHERE id_materia = 17 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 44, id_tema FROM tema
    WHERE id_materia = 17 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 44, id_tema FROM tema
    WHERE id_materia = 17 AND numero_tema = 6;

-- ref=45 tema libre: 'Integrales múltiples' → todos los temas materia 3
-- ref=45: Multivariable Calculus
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 45, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 45, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 45, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 45, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 45, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 45, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 6;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 45, id_tema FROM tema
    WHERE id_materia = 3 AND numero_tema = 7;

-- ref=46 tema libre: 'Lógica y conjuntos' → todos los temas materia 20
-- ref=46: Discrete Mathematics and Its Applications
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 46, id_tema FROM tema
    WHERE id_materia = 20 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 46, id_tema FROM tema
    WHERE id_materia = 20 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 46, id_tema FROM tema
    WHERE id_materia = 20 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 46, id_tema FROM tema
    WHERE id_materia = 20 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 46, id_tema FROM tema
    WHERE id_materia = 20 AND numero_tema = 5;

-- ref=47 tema libre: 'Programación en C++' → todos los temas materia 8
-- ref=47: C++ How to Program
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 47, id_tema FROM tema
    WHERE id_materia = 8 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 47, id_tema FROM tema
    WHERE id_materia = 8 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 47, id_tema FROM tema
    WHERE id_materia = 8 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 47, id_tema FROM tema
    WHERE id_materia = 8 AND numero_tema = 4;

-- ref=48 tema libre: 'Diseño de algoritmos' → todos los temas materia 23
-- ref=48: Introduction to Algorithms
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 48, id_tema FROM tema
    WHERE id_materia = 23 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 48, id_tema FROM tema
    WHERE id_materia = 23 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 48, id_tema FROM tema
    WHERE id_materia = 23 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 48, id_tema FROM tema
    WHERE id_materia = 23 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 48, id_tema FROM tema
    WHERE id_materia = 23 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 48, id_tema FROM tema
    WHERE id_materia = 23 AND numero_tema = 6;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 48, id_tema FROM tema
    WHERE id_materia = 23 AND numero_tema = 7;

-- ref=49 tema libre: 'Programación en Java' → todos los temas materia 8
-- ref=49: Java: The Complete Reference
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 49, id_tema FROM tema
    WHERE id_materia = 8 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 49, id_tema FROM tema
    WHERE id_materia = 8 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 49, id_tema FROM tema
    WHERE id_materia = 8 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 49, id_tema FROM tema
    WHERE id_materia = 8 AND numero_tema = 4;

-- ref=50 tema libre: 'Sistemas gestores de bases de datos' → todos los temas materia 18
-- ref=50: Database System Concepts
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 50, id_tema FROM tema
    WHERE id_materia = 18 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 50, id_tema FROM tema
    WHERE id_materia = 18 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 50, id_tema FROM tema
    WHERE id_materia = 18 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 50, id_tema FROM tema
    WHERE id_materia = 18 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 50, id_tema FROM tema
    WHERE id_materia = 18 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 50, id_tema FROM tema
    WHERE id_materia = 18 AND numero_tema = 6;

-- ref=51 tema libre: 'Desarrollo de software' → todos los temas materia 30
-- ref=51: Software Engineering
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 51, id_tema FROM tema
    WHERE id_materia = 30 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 51, id_tema FROM tema
    WHERE id_materia = 30 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 51, id_tema FROM tema
    WHERE id_materia = 30 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 51, id_tema FROM tema
    WHERE id_materia = 30 AND numero_tema = 4;

-- ref=52 tema libre: 'Gestión de procesos' → todos los temas materia 28
-- ref=52: Operating System Concepts
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 52, id_tema FROM tema
    WHERE id_materia = 28 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 52, id_tema FROM tema
    WHERE id_materia = 28 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 52, id_tema FROM tema
    WHERE id_materia = 28 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 52, id_tema FROM tema
    WHERE id_materia = 28 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 52, id_tema FROM tema
    WHERE id_materia = 28 AND numero_tema = 5;

-- ref=53 tema libre: 'Redes de computadoras' → todos los temas materia 33
-- ref=53: Computer Networking: A Top-Down Approach
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 53, id_tema FROM tema
    WHERE id_materia = 33 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 53, id_tema FROM tema
    WHERE id_materia = 33 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 53, id_tema FROM tema
    WHERE id_materia = 33 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 53, id_tema FROM tema
    WHERE id_materia = 33 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 53, id_tema FROM tema
    WHERE id_materia = 33 AND numero_tema = 5;

-- ref=54 tema libre: 'Redes de computadoras' → todos los temas materia 33
-- ref=54: Computer Networking: A Top-Down Approach
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 54, id_tema FROM tema
    WHERE id_materia = 33 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 54, id_tema FROM tema
    WHERE id_materia = 33 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 54, id_tema FROM tema
    WHERE id_materia = 33 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 54, id_tema FROM tema
    WHERE id_materia = 33 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 54, id_tema FROM tema
    WHERE id_materia = 33 AND numero_tema = 5;

-- ref=55 tema libre: 'Fundamentos de IA' → todos los temas materia 39
-- ref=55: Artificial Intelligence: A Modern Approach
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 55, id_tema FROM tema
    WHERE id_materia = 39 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 55, id_tema FROM tema
    WHERE id_materia = 39 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 55, id_tema FROM tema
    WHERE id_materia = 39 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 55, id_tema FROM tema
    WHERE id_materia = 39 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 55, id_tema FROM tema
    WHERE id_materia = 39 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 55, id_tema FROM tema
    WHERE id_materia = 39 AND numero_tema = 6;

-- ref=56 tema libre: 'Aprendizaje automático' → todos los temas materia 61
-- ref=56: Pattern Recognition and Machine Learning
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 56, id_tema FROM tema
    WHERE id_materia = 61 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 56, id_tema FROM tema
    WHERE id_materia = 61 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 56, id_tema FROM tema
    WHERE id_materia = 61 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 56, id_tema FROM tema
    WHERE id_materia = 61 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 56, id_tema FROM tema
    WHERE id_materia = 61 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 56, id_tema FROM tema
    WHERE id_materia = 61 AND numero_tema = 6;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 56, id_tema FROM tema
    WHERE id_materia = 61 AND numero_tema = 7;

-- ref=57 tema libre: 'Criptografía' → todos los temas materia 40
-- ref=57: Cryptography and Network Security
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 57, id_tema FROM tema
    WHERE id_materia = 40 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 57, id_tema FROM tema
    WHERE id_materia = 40 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 57, id_tema FROM tema
    WHERE id_materia = 40 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 57, id_tema FROM tema
    WHERE id_materia = 40 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 57, id_tema FROM tema
    WHERE id_materia = 40 AND numero_tema = 5;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 57, id_tema FROM tema
    WHERE id_materia = 40 AND numero_tema = 6;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 57, id_tema FROM tema
    WHERE id_materia = 40 AND numero_tema = 7;

-- ref=58 tema libre: 'Desarrollo web' → todos los temas materia 25
-- ref=58: Learning Web Design
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 58, id_tema FROM tema
    WHERE id_materia = 25 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 58, id_tema FROM tema
    WHERE id_materia = 25 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 58, id_tema FROM tema
    WHERE id_materia = 25 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 58, id_tema FROM tema
    WHERE id_materia = 25 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 58, id_tema FROM tema
    WHERE id_materia = 25 AND numero_tema = 5;

-- ref=59 tema libre: 'Estructuras de datos en programación' → todos los temas materia 13
-- ref=59: Data Structures and Algorithms in Java
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 59, id_tema FROM tema
    WHERE id_materia = 13 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 59, id_tema FROM tema
    WHERE id_materia = 13 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 59, id_tema FROM tema
    WHERE id_materia = 13 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 59, id_tema FROM tema
    WHERE id_materia = 13 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 59, id_tema FROM tema
    WHERE id_materia = 13 AND numero_tema = 5;

-- ref=60: Como programar en C++
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 60, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 1;

-- ref=61: Fundamentos de programación.
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 61, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 61, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 61, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 3;

-- ref=62: Introduccion a las Computadoras y a los Sistemas de Inf
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 62, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 62, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 62, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 3;

-- ref=63: Computer fundamentals and programing in C
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 63, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 63, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 63, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 3;

-- ref=64: De DOS a Windows: Introduccion  a las Computadoras pers
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 64, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 64, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 64, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 3;

-- ref=65: Desarrollo del pensamiento analítico y sistémico: guía 
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 65, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 2;

-- ref=66: 100 problemas resueltos de programación en lenguaje C p
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 66, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 66, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 3;

-- ref=67: Programación estructurada a fondo: implementación de al
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 67, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 67, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 3;

-- ref=68: Diseño de algoritmos y su programación en C.
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 68, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 68, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 3;

-- ref=69: El lenguaje de programación C.
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 69, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 3;

-- ref=70: Ansi C a su alcance.
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 70, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 3;

-- ref=71: Algorithms and data structures.
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 71, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 3;

-- ref=72: Programación
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 72, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 72, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 2;

-- ref=73: Programación
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 73, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 73, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 2;

-- ref=74: Programación
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 74, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 2;

-- ref=75: Programacion
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 75, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 2;

-- ref=76: Lógica de programación
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 76, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 1;

-- ref=77: Introducción a la programación
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 77, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 1;

-- ref=78: Programación estructurada : raptor y lenguaje C
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 78, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 78, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 3;

-- ref=79: Introducción a la programación : algoritmos y su implem
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 79, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 1;

-- ref=80: Principios de programación
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 80, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 1;

-- ref=81: Programación estructurada a fondo : implementación de a
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 81, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 81, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 3;

-- ref=82: Lógica de programación : solucionario en pseudocódigo :
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 82, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 1;

-- ref=83: Metodología de la programación : conceptos, lógica e im
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 83, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 83, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 2;

-- ref=84: Fundamentos de programación : algoritmos, estructuras d
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 84, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 84, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 84, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 3;

-- ref=85: Introducción a la programación
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 85, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 1;

-- ref=86: Programación en lenguajes estructurados
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 86, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 86, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 3;

-- ref=87: Fundamentos de programación : piensa en C
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 87, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 87, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 3;

-- ref=88: Fundamentos de programación
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 88, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 1;

-- ref=89: Programming with C
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 89, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 3;

-- ref=90: Introducción a la programación
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 90, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 1;

-- ref=91 tema libre: 'Álgebra y geometría: teoría, práctica y aplicaciones.' → todos los temas materia 2
-- ref=91: 
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 91, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 91, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 91, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 91, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 91, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 5;

-- ref=92 tema libre: 'Trigonometria plana y esférica.' → todos los temas materia 2
-- ref=92: 
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 92, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 92, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 92, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 92, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 92, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 5;

-- ref=93 tema libre: 'Geometry and trigonometry.' → todos los temas materia 2
-- ref=93: 
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 93, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 93, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 93, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 93, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 93, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 5;

-- ref=94 tema libre: 'Álgebra intermedia.' → todos los temas materia 2
-- ref=94: 
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 94, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 94, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 94, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 94, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 94, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 5;

-- ref=95 tema libre: 'Geometría analítica.' → todos los temas materia 2
-- ref=95: 
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 95, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 95, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 95, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 95, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 95, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 5;

-- ref=96 tema libre: 'Geometria elemental.' → todos los temas materia 2
-- ref=96: 
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 96, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 96, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 96, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 96, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 96, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 5;

-- ref=97 tema libre: '' → todos los temas materia 2
-- ref=97: 
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 97, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 97, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 97, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 97, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 4;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 97, id_tema FROM tema
    WHERE id_materia = 2 AND numero_tema = 5;

-- ref=98: fila vacía en el CSV, omitida
-- ref=99 tema libre: 'Cibernética' → todos los temas materia 4
-- ref=99: Computers and the cybernetic society
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 99, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 99, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 99, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 3;

-- ref=100 tema libre: 'Lenguaje' → todos los temas materia 4
-- ref=100: Three models for the description of language
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 100, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 100, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 100, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 3;

-- ref=101 tema libre: 'Lingüística' → todos los temas materia 4
-- ref=101: The logical structure of linguistic theory
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 101, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 101, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 101, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 3;

-- ref=102 tema libre: 'Algoritmos' → todos los temas materia 8
-- ref=102: Algoritmos. Investigación y Ciencia
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 102, id_tema FROM tema
    WHERE id_materia = 8 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 102, id_tema FROM tema
    WHERE id_materia = 8 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 102, id_tema FROM tema
    WHERE id_materia = 8 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 102, id_tema FROM tema
    WHERE id_materia = 8 AND numero_tema = 4;

-- ref=103 tema libre: 'Sistemas' → todos los temas materia 4
-- ref=103: Architecture of distributed computer systems
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 103, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 103, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 103, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 3;

-- ref=104 tema libre: 'Sistemas complejos' → todos los temas materia 4
-- ref=104: Outline of a new approach to the analysis of complex sy
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 104, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 104, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 104, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 3;

-- ref=105 tema libre: 'Complejidad' → todos los temas materia 4
-- ref=105: Complex
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 105, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 105, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 105, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 3;

-- ref=106 tema libre: 'Programación' → todos los temas materia 8
-- ref=106: A discipline of programming
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 106, id_tema FROM tema
    WHERE id_materia = 8 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 106, id_tema FROM tema
    WHERE id_materia = 8 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 106, id_tema FROM tema
    WHERE id_materia = 8 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 106, id_tema FROM tema
    WHERE id_materia = 8 AND numero_tema = 4;

-- ref=107 tema libre: 'Lógica' → todos los temas materia 8
-- ref=107: The logic of programming
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 107, id_tema FROM tema
    WHERE id_materia = 8 AND numero_tema = 1;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 107, id_tema FROM tema
    WHERE id_materia = 8 AND numero_tema = 2;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 107, id_tema FROM tema
    WHERE id_materia = 8 AND numero_tema = 3;
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 107, id_tema FROM tema
    WHERE id_materia = 8 AND numero_tema = 4;

-- ref=108: A first course in computer programming using Pascal
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 108, id_tema FROM tema
    WHERE id_materia = 4 AND numero_tema = 3;

-- ref=151: Anatomia de la Organización
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 151, id_tema FROM tema
    WHERE id_materia = 5 AND numero_tema = 1;

-- ⚠ ref=152 materia aún sin mapeo: 'Introducción a la ingenieria '
-- ref=153: Habilidades de Dirección
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 153, id_tema FROM tema
    WHERE id_materia = 5 AND numero_tema = 1;

-- ref=154: Plan de Vida y Carrera
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 154, id_tema FROM tema
    WHERE id_materia = 5 AND numero_tema = 1;

-- ref=155: Teorias de la Organización
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 155, id_tema FROM tema
    WHERE id_materia = 5 AND numero_tema = 1;

-- ref=156: Construcción de Plan de Vida
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 156, id_tema FROM tema
    WHERE id_materia = 5 AND numero_tema = 1;

-- ref=157: Introducción a la ciencia de la computación, De la mani
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 157, id_tema FROM tema
    WHERE id_materia = 5 AND numero_tema = 2;

-- ref=158: teoría de la computación.
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 158, id_tema FROM tema
    WHERE id_materia = 5 AND numero_tema = 2;

-- ref=159: office 2010 Todo Practica
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 159, id_tema FROM tema
    WHERE id_materia = 5 AND numero_tema = 2;

-- ref=160: The secret Guide to computers
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 160, id_tema FROM tema
    WHERE id_materia = 5 AND numero_tema = 2;

-- ref=161: Computers concepts and Uses
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 161, id_tema FROM tema
    WHERE id_materia = 5 AND numero_tema = 2;

-- ref=162: ¿Qué es un software?
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 162, id_tema FROM tema
    WHERE id_materia = 5 AND numero_tema = 2;

-- ref=163: Quiero empezar a usar Linux: guía todo lo que debes sab
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 163, id_tema FROM tema
    WHERE id_materia = 5 AND numero_tema = 3;

-- ref=164: Linux Guia Práctica
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 164, id_tema FROM tema
    WHERE id_materia = 5 AND numero_tema = 3;

-- ref=165: Manual de administración de Linux
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 165, id_tema FROM tema
    WHERE id_materia = 5 AND numero_tema = 3;

-- ref=166: Ubuntu Linux
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 166, id_tema FROM tema
    WHERE id_materia = 5 AND numero_tema = 3;

-- ref=167: Todo sobre Linux
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 167, id_tema FROM tema
    WHERE id_materia = 5 AND numero_tema = 3;

-- ref=168: ¿Qué es un error de software?
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 168, id_tema FROM tema
    WHERE id_materia = 5 AND numero_tema = 4;

-- ref=169: Problemas y sus elementos
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 169, id_tema FROM tema
    WHERE id_materia = 5 AND numero_tema = 4;

-- ref=170: Una Metodología para Resolver problemas de ingenieria
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 170, id_tema FROM tema
    WHERE id_materia = 5 AND numero_tema = 4;

-- ref=171: Sintesis
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 171, id_tema FROM tema
    WHERE id_materia = 5 AND numero_tema = 4;

-- ref=172: Creatividad
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 172, id_tema FROM tema
    WHERE id_materia = 5 AND numero_tema = 4;

-- ref=173: Derecho Informático 
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 173, id_tema FROM tema
    WHERE id_materia = 5 AND numero_tema = 5;

-- ref=174: Engineering Ethics concepts and Cases
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 174, id_tema FROM tema
    WHERE id_materia = 5 AND numero_tema = 5;

-- ref=175: Ingenieria sociedad y medio ambiente
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 175, id_tema FROM tema
    WHERE id_materia = 5 AND numero_tema = 5;

-- ref=176: Ética profesional
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 176, id_tema FROM tema
    WHERE id_materia = 5 AND numero_tema = 5;

-- ref=177: Responsabilidad social
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 177, id_tema FROM tema
    WHERE id_materia = 5 AND numero_tema = 5;

-- ref=178: Las tres R
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 178, id_tema FROM tema
    WHERE id_materia = 5 AND numero_tema = 5;

-- ref=179: LEGISLACIÓN INFORMÁTICA
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 179, id_tema FROM tema
    WHERE id_materia = 5 AND numero_tema = 5;

-- ref=180: ¿Qué es la propiedad intelectual?
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 180, id_tema FROM tema
    WHERE id_materia = 5 AND numero_tema = 5;

-- ══════════════════════════════════════════════════════════
-- TOTAL: numérico=145 | catálogo=81 | todos_temas=243 | sin_materia=2
-- ref=152: El pequeño Manual de las teorias de administración (materia con espacio extra corregida)
  INSERT IGNORE INTO referencia_tema (id_referencia, id_tema)
    SELECT 152, id_tema FROM tema
    WHERE id_materia = 5 AND numero_tema = 1;
