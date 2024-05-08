DROP DATABASE IF EXISTS universidad;
CREATE DATABASE universidad;
USE universidad;


-- -----------------------------------------------------
-- Table departamento
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS departamento (
  idDepartamento INT(10) NOT NULL AUTO_INCREMENT,
  nombreDepartamento VARCHAR(100) NOT NULL,
  PRIMARY KEY (idDepartamento)
)ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table grado
-- -----------------------------------------------------

CREATE TABLE grado(
  idGrado INT(10) NOT NULL,
  nombreGrado VARCHAR(100) NOT NULL,
  CONSTRAINT pk_grado PRIMARY KEY (idGrado)
)ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table curso escolar
-- -----------------------------------------------------
CREATE TABLE cursoescolar(
  idCursoEscolar INT AUTO_INCREMENT NOT NULL,
  inicioCurso YEAR(4) NOT NULL,
  finCurso YEAR(4) NOT NULL,
  CONSTRAINT pk_curso_escolar PRIMARY KEY (idCursoEscolar)
)ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table tipo asignatura
-- -----------------------------------------------------
CREATE TABLE tipoasignatura(
  idTipoAsignatura INT AUTO_INCREMENT NOT NULL,
  nombrAsignatura VARCHAR(30) NOT NULL,
  CONSTRAINT pk_tipo_asignatura PRIMARY KEY(idTipoAsignatura)
)ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table genero
-- -----------------------------------------------------
CREATE TABLE genero(
  idGenero INT AUTO_INCREMENT NOT NULL,
  nombreGenero VARCHAR(1) NOT NULL,
  CONSTRAINT pk_genero PRIMARY KEY(idGenero)
)ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table alumno
-- -----------------------------------------------------
CREATE TABLE alumno(
  idAlumno INT AUTO_INCREMENT NOT NULL,
  nifAlu VARCHAR(9) NULL,
  nombreAlumno VARCHAR(25) NOT NULL,
  apellidoAlumno1 VARCHAR(30) NOT NULL,
  apellidoAlumno2 VARCHAR(30) NULL,
  fechaNacimientoAlu DATE NOT NULL,
  idGeneroAlu INT(11) NOT NULL,
  CONSTRAINT pk_alumno PRIMARY KEY (idAlumno),
  CONSTRAINT fk_genero_alumno FOREIGN KEY (idGeneroAlu) REFERENCES genero(idGenero)
)ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table profesor
-- -----------------------------------------------------

CREATE TABLE profesor(
  idProfesor INT AUTO_INCREMENT NOT NULL,
  nifProf VARCHAR(9) NULL,
  nombreProfesor VARCHAR(25) NOT NULL,
  apellidoProfesor1 VARCHAR(30) NOT NULL,
  apellidoProfesor2 VARCHAR(30) NULL,
  fechaNacimiento DATE NOT NULL,
  idGeneroProf INT(11) NOT NULL,
  idDepartamentoProf INT(11) NULL,
  CONSTRAINT pk_profesor PRIMARY KEY(idProfesor),
  CONSTRAINT fk_genero_profesor FOREIGN KEY (idGeneroProf) REFERENCES genero(idGenero),
  CONSTRAINT fk_proferos_departamento FOREIGN KEY (idDepartamentoProf) REFERENCES departamento(idDepartamento)
)ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table ciudad
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS ciudad (
  idCiudad VARCHAR(5) NOT NULL,
  nombreCiudad VARCHAR(20) NOT NULL,
  PRIMARY KEY (idCiudad)
)ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table direccion profesor
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS direccionprof (
  idDireccion INT NOT NULL AUTO_INCREMENT,
  sector VARCHAR(25) NULL,
  calle VARCHAR(25) NULL,
  carrera VARCHAR(25) NULL,
  idCiudadD VARCHAR(5) NULL,
  idProfesordir INT(11) NOT NULL,
  PRIMARY KEY (idDireccion),
  CONSTRAINT fk_direccion_profesor FOREIGN KEY (idProfesordir) REFERENCES profesor(idProfesor),
  CONSTRAINT fkCiudad FOREIGN KEY (idCiudadD) REFERENCES ciudad (idCiudad)
)ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table direccion alumno
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS direccionalum (
  idDireccion INT NOT NULL AUTO_INCREMENT,
  sector VARCHAR(25) NULL,
  calle VARCHAR(25) NULL,
  carrera VARCHAR(25) NULL,
  idCiudadD VARCHAR(5) NULL,
  idAlumno INT(11) NOT NULL,
  PRIMARY KEY (idDireccion),
  CONSTRAINT fk_direccion_alumno FOREIGN KEY (idAlumno) REFERENCES alumno(idAlumno),
  CONSTRAINT fkCiudadAlum FOREIGN KEY (idCiudadD) REFERENCES ciudad (idCiudad)
)ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table tipo telefono
-- -----------------------------------------------------
CREATE TABLE tipotelefono(
  idtipoTelefono TINYINT(1) NOT NULL,
  descripcion VARCHAR(20) NOT NULL,
  CONSTRAINT pk_tipo_telefono PRIMARY KEY(idtipoTelefono)
)ENGINE=InnoDB;


-- -----------------------------------------------------
-- Table telefono profesor
-- -----------------------------------------------------

CREATE TABLE telefonoprof(
  idTelefono INT AUTO_INCREMENT NOT NULL,
  numero BIGINT NOT NULL,
  idTipoTelefonoT TINYINT(1) NOT NULL,
  idProfesor INT(11) NOT NULL,
  CONSTRAINT pk_telefono_prof PRIMARY KEY(idTelefono),
  CONSTRAINT fk_tipo_telefono FOREIGN KEY (idTipoTelefonoT) REFERENCES tipoTelefono(idtipoTelefono),
  CONSTRAINT fk_profesor_tel FOREIGN KEY (idProfesor) REFERENCES profesor(idProfesor)
)ENGINE=InnoDB;

-- -----------------------------------------------------
-- Table telefono alumno
-- -----------------------------------------------------

CREATE TABLE telefonoalum(
  idTelefono INT AUTO_INCREMENT NOT NULL,
  numero BIGINT NOT NULL,
  idTipoTelefonoT TINYINT(1) NOT NULL,
  idAlumno INT (11) NOT NULL,
  CONSTRAINT pk_telefono_alumn PRIMARY KEY(idTelefono),
  CONSTRAINT fk_tipo_telefono_alumn FOREIGN KEY (idTipoTelefonoT) REFERENCES tipoTelefono(idtipoTelefono),
  CONSTRAINT fk_alumno_tel FOREIGN KEY (idAlumno) REFERENCES alumno(idAlumno)
)ENGINE=InnoDB;

-- -----------------------------------------------------
-- Table asignatura
-- -----------------------------------------------------
CREATE TABLE asignatura(
  idAsignatura INT AUTO_INCREMENT NOT NULL,
  nombreAsignatura VARCHAR(100) NOT NULL,
  creditos FLOAT NOT NULL,
  curso TINYINT(3) NOT NULL,
  cuatrimestre TINYINT(3) NOT NULL,
  idProfesorAs INT(11) NOT NULL,
  idGradoAsig INT(11) NOT NULL,
  idTipoAsignaturaA INT(11) NOT NULL,
  CONSTRAINT pk_asignatura PRIMARY KEY (idAsignatura),
  CONSTRAINT fk_profesor_asignatura FOREIGN KEY (idProfesorAs) REFERENCES profesor(idProfesor),
  CONSTRAINT fk_grado FOREIGN KEY (idGradoAsig) REFERENCES grado(idGrado),
  CONSTRAINT fk_tipo_asignatura FOREIGN KEY (idTipoAsignaturaA) REFERENCES tipoAsignatura(idTipoAsignatura)
)ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table alumno asignatura
-- -----------------------------------------------------
CREATE TABLE alumnoasignatura(
  idAlumnoAs INT(11) NOT NULL,
  idAsigaturaAs INT(11) NOT NULL,
  idCursoEscolarAS INT(11) NOT NULL,
  CONSTRAINT pk_alumnoAsignaturaCurso PRIMARY KEY (idAlumnoAs, idAsigaturaAs, idCursoEscolarAS),
  CONSTRAINT fk_alumno_as FOREIGN KEY (idAlumnoAs) REFERENCES alumno(idAlumno),
  CONSTRAINT fk_asignatura_as FOREIGN KEY (idAsigaturaAs) REFERENCES asignatura(idAsignatura),
)ENGINE = InnoDB;

