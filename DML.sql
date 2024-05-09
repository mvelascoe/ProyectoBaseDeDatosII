-- -----------------------------------------------------
-- INSERT GRADO
-- ----------------------------------------------------

INSERT INTO grado VALUES (1, 'Grado en Ingeniería Agrícola (Plan 2015)');
INSERT INTO grado VALUES (2, 'Grado en Ingeniería Eléctrica (Plan 2014)');
INSERT INTO grado VALUES (3, 'Grado en Ingeniería Electrónica Industrial (Plan 2010)');
INSERT INTO grado VALUES (4, 'Grado en Ingeniería Informática (Plan 2015)');
INSERT INTO grado VALUES (5, 'Grado en Ingeniería Mecánica (Plan 2010)');
INSERT INTO grado VALUES (6, 'Grado en Ingeniería Química Industrial (Plan 2010)');
INSERT INTO grado VALUES (7, 'Grado en Biotecnología (Plan 2015)');
INSERT INTO grado VALUES (8, 'Grado en Ciencias Ambientales (Plan 2009)');
INSERT INTO grado VALUES (9, 'Grado en Matemáticas (Plan 2010)');
INSERT INTO grado VALUES (10, 'Grado en Química (Plan 2009)');

-- -----------------------------------------------------
-- INSERT DEPARTAMENTO
-- ----------------------------------------------------

INSERT INTO departamento VALUES (1, 'Informática');
INSERT INTO departamento VALUES (2, 'Matemáticas');
INSERT INTO departamento VALUES (3, 'Economía y Empresa');
INSERT INTO departamento VALUES (4, 'Educación');
INSERT INTO departamento VALUES (5, 'Agronomía');
INSERT INTO departamento VALUES (6, 'Química y Física');
INSERT INTO departamento VALUES (7, 'Filología');
INSERT INTO departamento VALUES (8, 'Derecho');
INSERT INTO departamento VALUES (9, 'Biología y Geología');
INSERT INTO departamento VALUES (10, 'Arquitectura');
INSERT INTO departamento VALUES (11, 'Psicología');
INSERT INTO departamento VALUES (12, 'Arte y Diseño');
INSERT INTO departamento VALUES (13, 'Medicina');
INSERT INTO departamento VALUES (14, 'Historia');
INSERT INTO departamento VALUES (15, 'Sociología');

-- -----------------------------------------------------
-- INSERT CURSO ESCOLAR
-- ----------------------------------------------------

INSERT INTO cursoescolar VALUES (1, 2014, 2015);
INSERT INTO cursoescolar VALUES (2, 2015, 2016);
INSERT INTO cursoescolar VALUES (3, 2016, 2017);
INSERT INTO cursoescolar VALUES (4, 2017, 2018);

-- -----------------------------------------------------
-- INSERT TIPO ASIGNATURA
-- ----------------------------------------------------

INSERT INTO tipoasignatura values (1, 'Basica');
INSERT INTO tipoasignatura values (2, 'Obligatoria');
INSERT INTO tipoasignatura values (3, 'Optativa');

-- -----------------------------------------------------
-- INSERT TIPO TELEFONO
-- ----------------------------------------------------

 INSERT INTO tipotelefono VALUES (1, 'Fijo');
 INSERT INTO tipotelefono VALUES (2, 'Celular');

-- -----------------------------------------------------
-- INSERT GENERO
-- ----------------------------------------------------

INSERT INTO genero VALUES (1, 'H');
INSERT INTO genero VALUES (2, 'M');


-- -----------------------------------------------------
-- INSERT PROFESOR
-- ----------------------------------------------------

INSERT INTO profesor VALUES (3, '11105554G', 'Zoe', 'Ramirez', 'Gea','1979/08/19', 2, 1);
INSERT INTO profesor VALUES (5, '38223286T', 'David', 'Schmidt', 'Fisher', '1978/01/19', 1, 5);
INSERT INTO profesor VALUES (8, '79503962T', 'Cristina', 'Lemke', 'Rutherford', '1977/08/21', 2,3);
INSERT INTO profesor VALUES (10, '61142000L', 'Esther', 'Spencer', 'Lakin','1977/05/19', 2, 9);
INSERT INTO profesor VALUES (12, '85366986W', 'Carmen', 'Streich', 'Hirthe','1971-04-29', 2, 1);
INSERT INTO profesor VALUES (13, '73571384L', 'Alfredo', 'Stiedemann', 'Morissette','1980/02/01', 1, 7);
INSERT INTO profesor VALUES (14, '82937751G', 'Manolo', 'Hamill', 'Kozey','1977/01/02', 1, 9);
INSERT INTO profesor VALUES (15, '80502866Z', 'Alejandro', 'Kohler', 'Schoen','1980/03/14', 1, 2);
INSERT INTO profesor VALUES (16, '10485008K', 'Antonio', 'Fahey', 'Considine', '1982/03/18', 1, 4);
INSERT INTO profesor VALUES (17, '85869555K', 'Guillermo', 'Ruecker', 'Upton', '1973/05/05', 1, 6);
INSERT INTO profesor VALUES (18, '04326833G', 'Micaela', 'Monahan', 'Murray', '1976/02/25', 2, 7);
INSERT INTO profesor VALUES (20, '79221403L', 'Francesca', 'Schowalter', 'Muller','1980/10/31', 2, 8);
INSERT INTO profesor VALUES (21, '13175769N', 'Pepe', 'Sánchez', 'Ruiz','1980/10/16', 1, 6);
INSERT INTO profesor VALUES (22, '98816696W', 'Juan', 'Guerrero', 'Martínez','1980/11/21', 1, 2);
INSERT INTO profesor VALUES (23, '77194445M', 'María', 'Domínguez', 'Hernández','1980/12/13', 1, 1);

INSERT INTO profesor VALUES (24, '56329874K', 'Laura', 'González', 'López','1981/01/05', 2, 9);
INSERT INTO profesor VALUES (25, '42158639F', 'Carlos', 'Martínez', 'Fernández','1981/02/18', 1, 3);
INSERT INTO profesor VALUES (26, '69584721X', 'Ana', 'Pérez', 'García','1981/03/22', 2, 4);
INSERT INTO profesor VALUES (27, '34871592Y', 'Pedro', 'Jiménez', 'Sánchez','1981/04/14', 1, 11);
INSERT INTO profesor VALUES (28, '18796532Z', 'Sofía', 'López', 'Martín','1981/05/27', 1, 12);
INSERT INTO profesor VALUES (29, '83921546A', 'Javier', 'Rodríguez', 'Gómez','1981/06/30', 2, 7);

-- -----------------------------------------------------
-- INSERT ALUMNO
-- ----------------------------------------------------

INSERT INTO alumno VALUES (1, '89542419S', 'Juan', 'Saez', 'Vega','1992/08/08', 1);
INSERT INTO alumno VALUES (2, '26902806M', 'Salvador', 'Sánchez', 'Pérez','1991/03/28', 1);
INSERT INTO alumno VALUES (4, '17105885A', 'Pedro', 'Heller', 'Pagac','2000/10/05', 1);
INSERT INTO alumno VALUES (6, '04233869Y', 'José', 'Koss', 'Bayer', '1998/01/28', 1);
INSERT INTO alumno VALUES (7, '97258166K', 'Ismael', 'Strosin', 'Turcotte', '1999/05/24', 1);
INSERT INTO alumno VALUES (9, '82842571K', 'Ramón', 'Herzog', 'Tremblay', '1996/11/21', 1);
INSERT INTO alumno VALUES (11, '46900725E', 'Daniel', 'Herman', 'Pacocha','1997/04/26', 1);
INSERT INTO alumno VALUES (19, '11578526G', 'Inma', 'Lakin', 'Yundt','1998/09/01', 2);
INSERT INTO alumno VALUES (21, '79089577Y', 'Juan', 'Gutiérrez', 'López','1998/01/01', 1);
INSERT INTO alumno VALUES (22, '41491230N', 'Antonio', 'Domínguez', 'Guerrero','1999/02/11', 1);
INSERT INTO alumno VALUES (23, '64753215G', 'Irene', 'Hernández', 'Martínez', '1996/03/12', 2) ;
INSERT INTO alumno VALUES (24, '85135690V', 'Sonia', 'Gea', 'Ruiz','1995/04/13', 2);

-- -----------------------------------------------------
-- INSERT CIUDAD
-- ----------------------------------------------------

INSERT INTO ciudad VALUES ('ALM', 'Almería');
INSERT INTO ciudad VALUES ('MAD', 'Madrid');
INSERT INTO ciudad VALUES ('BCN', 'Barcelona');
INSERT INTO ciudad VALUES ('VAL', 'Valencia');
INSERT INTO ciudad VALUES ('SEV', 'Sevilla');

-- -----------------------------------------------------
-- INSERT DIRECCION PROFESORES
-- ----------------------------------------------------

INSERT INTO direccionprof VALUES (01, 'Norte', 'Calle Mayor', 'Carrera 1', 'MAD', 3);
INSERT INTO direccionprof VALUES (02, 'Este', 'Calle Alcalá', 'Carrera 3', 'MAD', 5);
INSERT INTO direccionprof VALUES (03, 'Oeste', 'Calle Princesa', 'Carrera 4', 'MAD', 8);
INSERT INTO direccionprof VALUES (04, 'Norte', 'Rambla Catalunya', 'Carrera 1', 'BCN', 10);
INSERT INTO direccionprof VALUES (05, 'Este', 'Avinguda Diagonal', 'Carrera 3', 'BCN', 12);
INSERT INTO direccionprof VALUES (06, 'Norte', 'Calle Colón', 'Carrera 1', 'VAL', 21);
INSERT INTO direccionprof VALUES (07, 'Sur', 'Calle Xátiva', 'Carrera 2', 'VAL', 18);
INSERT INTO direccionprof VALUES (08, 'Oeste', 'Calle San Vicente', 'Carrera 4', 'VAL', 13);
INSERT INTO direccionprof VALUES (09, 'Centro', 'Plaça de l Ajuntament', 'Carrera 5', 'VAL', 23);
INSERT INTO direccionprof VALUES (10, 'Sur', 'Calle Tetuán', 'Carrera 2', 'SEV', 20);
INSERT INTO direccionprof VALUES (11, 'Oeste', 'Calle Alfonso XII', 'Carrera 4', 'SEV', 14);
INSERT INTO direccionprof VALUES (12, 'Norte', 'Calle Real', 'Carrera 1', 'ALM', 22);
INSERT INTO direccionprof VALUES (13, 'Sur', 'Calle Granada', 'Carrera 2', 'ALM', 17);
INSERT INTO direccionprof VALUES (14, 'Oeste', 'Calle Alfonso XIII', 'Carrera 4', 'ALM', 15);
INSERT INTO direccionprof VALUES (15, 'Nordeste', 'Calle del Sol', 'Carrera 6', 'MAD', 16);


-- -----------------------------------------------------
-- INSERT DIRECCION ALUMNOS
-- ----------------------------------------------------

INSERT INTO direccionalum VALUES (01, 'Oeste', 'La Rambla', 'Carrera 4', 'BCN', 7);
INSERT INTO direccionalum VALUES (02, 'Sur', 'Calle Gran Vía', 'Carrera 2', 'MAD', 9);
INSERT INTO direccionalum VALUES (03, 'Este', 'Calle Marqués de Sotelo', 'Carrera 3', 'VAL', 1);
INSERT INTO direccionalum VALUES (04, 'Este', 'Calle Reyes Católicos', 'Carrera 3', 'ALM', 11);
INSERT INTO direccionalum VALUES (05, 'Centro', 'Plaça Catalunya', 'Carrera 5', 'BCN', 19);
INSERT INTO direccionalum VALUES (06, 'Sur', 'Passeig de Gràcia', 'Carrera 2', 'BCN', 2);
INSERT INTO direccionalum VALUES (07, 'Centro', 'Plaza Nueva', 'Carrera 5', 'SEV', 21);
INSERT INTO direccionalum VALUES (08, 'Centro', 'Plaça de l Ajuntament', 'Carrera 5', 'VAL', 22);
INSERT INTO direccionalum VALUES (09, 'Centro', 'Calle Preciados', 'Carrera 5', 'MAD', 4);
INSERT INTO direccionalum VALUES (10, 'Centro', 'Plaça de l Ajuntament', 'Carrera 5', 'VAL', 23);
INSERT INTO direccionalum VALUES (11, 'Centro', 'Paseo de Almería', 'Carrera 5', 'ALM', 24);
INSERT INTO direccionalum VALUES (12, 'Norte', 'Calle Sierpes', 'Carrera 1', 'SEV', 6);

-- -----------------------------------------------------
-- INSERT TELEFONO PROFESORES  
-- ----------------------------------------------------
INSERT INTO telefonoprof VALUES (NULL, 1234567890, 1, 3),
    (NULL, 611223344, 2, 5),
    (NULL, 689998877, 1, 8),
    (NULL, 938877665, 1, 10),
    (NULL, 611223344, 2, 12),
    (NULL, 677889900, 1, 13); 

-- -----------------------------------------------------
-- INSERT TELEFONO ALUMNOS
-- ----------------------------------------------------

INSERT INTO telefonoalum VALUES (NULL, 938877665, 1, 1),
    (NULL, 912345678, 2, 2),
    (NULL, 934567890, 1, 4),
    (NULL, 689123456, 1, 6),
    (NULL, 678901234, 2, 7),
    (NULL, 666778899, 1, 9);

-- -----------------------------------------------------
-- INSERT ASIGNATURA
-- ----------------------------------------------------

INSERT INTO asignatura VALUES (1, 'Álgegra lineal y matemática discreta', 6, 1, 1, 5, 4, 1);
INSERT INTO asignatura VALUES (2, 'Cálculo', 6, 1, 1, 23, 4, 1); 
INSERT INTO asignatura VALUES (3, 'Física para informática', 6, 1, 1, 8, 1, 1);
INSERT INTO asignatura VALUES (4, 'Introducción a la programación', 6, 1, 1, 21, 3, 1);
INSERT INTO asignatura VALUES (5, 'Organización y gestión de empresas', 6, 1, 1, 20, 4, 1);
INSERT INTO asignatura VALUES (6, 'Estadística', 6, 1, 2, 17, 2, 1);
INSERT INTO asignatura VALUES (7, 'Estructura y tecnología de computadores', 6, 1, 2, 5, 10, 1);
INSERT INTO asignatura VALUES (8, 'Fundamentos de electrónica', 6, 1, 2, 3, 10, 1);
INSERT INTO asignatura VALUES (9, 'Lógica y algorítmica', 6, 1, 2, 5, 8, 1);
INSERT INTO asignatura VALUES (10, 'Metodología de la programación', 6, 1, 2, 8, 9, 1);
INSERT INTO asignatura VALUES (11, 'Arquitectura de Computadores', 6, 2, 1, 3, 7, 1);
INSERT INTO asignatura VALUES (12, 'Estructura de Datos y Algoritmos I', 6, 2, 1, 3, 5, 2);
INSERT INTO asignatura VALUES (13, 'Ingeniería del Software', 6, 2, 1, 14, 5, 2);
INSERT INTO asignatura VALUES (14, 'Sistemas Inteligentes', 6, 2, 1, 3, 9, 2);
INSERT INTO asignatura VALUES (15, 'Sistemas Operativos', 6, 2, 1, 14, 10, 2);
INSERT INTO asignatura VALUES (16, 'Bases de Datos', 6, 2, 2, 14, 6, 1);
INSERT INTO asignatura VALUES (17, 'Estructura de Datos y Algoritmos II', 6, 2, 2, 14, 4, 2);
INSERT INTO asignatura VALUES (18, 'Fundamentos de Redes de Computadores', 6 ,2, 2, 3, 5, 2);
INSERT INTO asignatura VALUES (19, 'Planificación y Gestión de Proyectos Informáticos', 6, 2, 2, 3, 5, 2);
INSERT INTO asignatura VALUES (20, 'Programación de Servicios Software', 6, 2, 2, 14, 9, 2);
INSERT INTO asignatura VALUES (21, 'Desarrollo de interfaces de usuario', 6, 3, 1, 14, 8, 2);
INSERT INTO asignatura VALUES (22, 'Ingeniería de Requisitos', 6, 3, 1, 5, 2, 3);
INSERT INTO asignatura VALUES (23, 'Integración de las Tecnologías de la Información en las Organizaciones', 6, 3, 1, 8, 1, 3);
INSERT INTO asignatura VALUES (24, 'Modelado y Diseño del Software 1', 6, 3, 1, 17, 1, 3);
INSERT INTO asignatura VALUES (25, 'Multiprocesadores', 6, 3, 1, 18, 2, 3);
INSERT INTO asignatura VALUES (26, 'Seguridad y cumplimiento normativo', 6, 3, 1, 22, 2, 3);
INSERT INTO asignatura VALUES (27, 'Sistema de Información para las Organizaciones', 6, 3, 1, 20, 5, 3); 
INSERT INTO asignatura VALUES (28, 'Tecnologías web', 6, 3, 1, 10, 2, 3);
INSERT INTO asignatura VALUES (29, 'Teoría de códigos y criptografía', 6, 3, 1, 12, 1, 3);
INSERT INTO asignatura VALUES (30, 'Administración de bases de datos', 6, 3, 2, 8, 2, 3);
INSERT INTO asignatura VALUES (31, 'Herramientas y Métodos de Ingeniería del Software', 6, 3, 2, 13, 5, 3);
INSERT INTO asignatura VALUES (32, 'Informática industrial y robótica', 6, 3, 2, 21, 1, 3);
INSERT INTO asignatura VALUES (33, 'Ingeniería de Sistemas de Información', 6, 3, 2, 15, 2, 3);
INSERT INTO asignatura VALUES (34, 'Modelado y Diseño del Software 2', 6, 3, 2, 18, 10, 3);
INSERT INTO asignatura VALUES (35, 'Negocio Electrónico', 6, 3, 2, 10, 10, 3);
INSERT INTO asignatura VALUES (36, 'Periféricos e interfaces', 6, 3, 2, 14, 10, 3);
INSERT INTO asignatura VALUES (37, 'Sistemas de tiempo real', 6, 3, 2, 10, 4, 3);
INSERT INTO asignatura VALUES (38, 'Tecnologías de acceso a red', 6, 3, 2, 12, 7, 3);
INSERT INTO asignatura VALUES (39, 'Tratamiento digital de imágenes', 6, 3, 2, 15, 3, 3);
INSERT INTO asignatura VALUES (40, 'Administración de redes y sistemas operativos', 6, 4, 1, 16, 3, 3);
INSERT INTO asignatura VALUES (41, 'Almacenes de Datos', 6, 4, 1, 10, 9, 3);
INSERT INTO asignatura VALUES (42, 'Fiabilidad y Gestión de Riesgos', 6, 4, 1, 8, 7, 3);
INSERT INTO asignatura VALUES (43, 'Líneas de Productos Software', 6, 4, 1, 17, 8, 3);
INSERT INTO asignatura VALUES (44, 'Procesos de Ingeniería del Software 1', 6, 4, 1, 18, 4, 3);
INSERT INTO asignatura VALUES (45, 'Tecnologías multimedia', 6, 4, 1, 8, 3, 3);
INSERT INTO asignatura VALUES (46, 'Análisis y planificación de las TI', 6, 4, 2, 21, 10, 3);
INSERT INTO asignatura VALUES (47, 'Desarrollo Rápido de Aplicaciones', 6, 4, 2, 23, 5, 3);
INSERT INTO asignatura VALUES (48, 'Gestión de la Calidad y de la Innovación Tecnológica', 6, 4, 2, 22, 6, 3);
INSERT INTO asignatura VALUES (49, 'Inteligencia del Negocio', 6, 4, 2, 3, 4, 1);
INSERT INTO asignatura VALUES (50, 'Procesos de Ingeniería del Software 2', 6, 4, 2, 3, 9, 3);
INSERT INTO asignatura VALUES (51, 'Seguridad Informática', 6, 4, 2, 22, 5, 3);
INSERT INTO asignatura VALUES (52, 'Biologia celular', 6, 1, 1, 12, 7, 1);
INSERT INTO asignatura VALUES (53, 'Física', 6, 1, 1, 21, 6, 1);
INSERT INTO asignatura VALUES (54, 'Matemáticas I', 6, 1, 1, 20, 10, 1);
INSERT INTO asignatura VALUES (55, 'Química general', 6, 1, 1, 14, 5, 1);
INSERT INTO asignatura VALUES (56, 'Química orgánica', 6, 1, 1, 16, 8, 1);
INSERT INTO asignatura VALUES (57, 'Biología vegetal y animal', 6, 1, 2, 23, 7, 1);
INSERT INTO asignatura VALUES (58, 'Bioquímica', 6, 1, 2, 18, 7, 1);
INSERT INTO asignatura VALUES (59, 'Genética', 6, 1, 2, 20, 9, 1);
INSERT INTO asignatura VALUES (60, 'Matemáticas II', 6, 1, 2, 23, 1, 1);
INSERT INTO asignatura VALUES (61, 'Microbiología', 6, 1, 2, 22, 2, 1);
INSERT INTO asignatura VALUES (62, 'Botánica agrícola', 6, 2, 1, 8, 3, 2);
INSERT INTO asignatura VALUES (63, 'Fisiología vegetal', 6, 2, 1, 12, 1, 2);
INSERT INTO asignatura VALUES (64, 'Genética molecular', 6, 2, 1, 15, 6, 2);
INSERT INTO asignatura VALUES (65, 'Ingeniería bioquímica', 6, 2, 1, 20, 5, 2);
INSERT INTO asignatura VALUES (66, 'Termodinámica y cinética química aplicada', 6, 2, 1, 10, 1, 2);
INSERT INTO asignatura VALUES (67, 'Biorreactores', 6, 2, 2, 12, 2, 2);
INSERT INTO asignatura VALUES (68, 'Biotecnología microbiana', 6, 2, 2, 22, 1, 2);
INSERT INTO asignatura VALUES (69, 'Ingeniería genética', 6, 2, 2, 23, 1, 2);
INSERT INTO asignatura VALUES (70, 'Inmunología', 6, 2, 2, 10, 9, 2);
INSERT INTO asignatura VALUES (71, 'Virología', 6, 2, 2, 8, 2, 2);
INSERT INTO asignatura VALUES (72, 'Bases moleculares del desarrollo vegetal', 4.5, 3, 1, 5, 5, 2);
INSERT INTO asignatura VALUES (73, 'Fisiología animal', 4.5, 3, 1, 3, 7, 2);
INSERT INTO asignatura VALUES (74, 'Metabolismo y biosíntesis de biomoléculas', 6, 3, 1, 5, 6, 2);
INSERT INTO asignatura VALUES (75, 'Operaciones de separación', 6, 3, 1, 3, 7, 2);
INSERT INTO asignatura VALUES (76, 'Patología molecular de plantas', 4.5, 3, 1, 5, 3, 2);
INSERT INTO asignatura VALUES (77, 'Técnicas instrumentales básicas', 4.5, 3, 1, 20, 6, 2);
INSERT INTO asignatura VALUES (78, 'Bioinformática', 4.5, 3, 2, 14, 10, 2);
INSERT INTO asignatura VALUES (79, 'Biotecnología de los productos hortofrutículas', 4.5, 3, 2, 8, 10, 2);
INSERT INTO asignatura VALUES (80, 'Biotecnología vegetal', 6, 3, 2, 22, 1, 2);
INSERT INTO asignatura VALUES (81, 'Genómica y proteómica', 4.5, 3, 2, 23, 5, 2);
INSERT INTO asignatura VALUES (82, 'Procesos biotecnológicos', 6, 3, 2, 12, 7, 2);
INSERT INTO asignatura VALUES (83, 'Técnicas instrumentales avanzadas', 4.5, 3, 2, 10, 9, 2);

-- -----------------------------------------------------
-- INSERT ALUMNO ASIGNATURA
-- ----------------------------------------------------

INSERT INTO alumnoasignatura VALUES (1, 1, 1);
INSERT INTO alumnoasignatura VALUES (1, 2, 1);
INSERT INTO alumnoasignatura VALUES (1, 3, 1);
INSERT INTO alumnoasignatura VALUES (1, 4, 1);
INSERT INTO alumnoasignatura VALUES (1, 5, 1);
INSERT INTO alumnoasignatura VALUES (1, 6, 1);
INSERT INTO alumnoasignatura VALUES (1, 7, 1);
INSERT INTO alumnoasignatura VALUES (1, 8, 1);
INSERT INTO alumnoasignatura VALUES (1, 9, 1);
INSERT INTO alumnoasignatura VALUES (1, 10, 1);
INSERT INTO alumnoasignatura VALUES (1, 1, 2);
INSERT INTO alumnoasignatura VALUES (1, 2, 2);
INSERT INTO alumnoasignatura VALUES (1, 3, 2);
INSERT INTO alumnoasignatura VALUES (1, 1, 3);
INSERT INTO alumnoasignatura VALUES (1, 2, 3);
INSERT INTO alumnoasignatura VALUES (1, 3, 3);
INSERT INTO alumnoasignatura VALUES (1, 1, 4);
INSERT INTO alumnoasignatura VALUES (1, 2, 4);
INSERT INTO alumnoasignatura VALUES (1, 3, 4);
INSERT INTO alumnoasignatura VALUES (2, 1, 1);
INSERT INTO alumnoasignatura VALUES (2, 2, 1);
INSERT INTO alumnoasignatura VALUES (2, 3, 1);
INSERT INTO alumnoasignatura VALUES (4, 1, 1);
INSERT INTO alumnoasignatura VALUES (4, 2, 1);
INSERT INTO alumnoasignatura VALUES (4, 3, 1);
INSERT INTO alumnoasignatura VALUES (4, 1, 2);
INSERT INTO alumnoasignatura VALUES (4, 2, 2);
INSERT INTO alumnoasignatura VALUES (4, 3, 2);
INSERT INTO alumnoasignatura VALUES (4, 4, 2);
INSERT INTO alumnoasignatura VALUES (4, 5, 2);
INSERT INTO alumnoasignatura VALUES (4, 6, 2);
INSERT INTO alumnoasignatura VALUES (4, 7, 2);
INSERT INTO alumnoasignatura VALUES (4, 8, 2);
INSERT INTO alumnoasignatura VALUES (4, 9, 2);
INSERT INTO alumnoasignatura VALUES (4, 10, 2);
INSERT INTO alumnoasignatura VALUES (24, 4, 1);







