# Proyecto Base de Datos Parte II

## Contenido

- [**Archivo DDL**][ Ver Archivo ](https://github.com/mvelascoe/ProyectoBaseDeDatosII/blob/main/DDL.sql):  Este archivo SQL establece la estructura de la base de datos, junto con las relaciones entre las diferentes entidades.
- [**Archivo DML**][ Ver Archivo ](https://github.com/mvelascoe/ProyectoBaseDeDatosII/blob/main/DML.sql):  Este archivo SQL muestra la realización de las inserciones de datos en tablas de la base de datos.
- 
## Diagrama Entidad - Relación

![Diagrama Entidad-Relación](https://github.com/mvelascoe/ProyectoBaseDeDatosII/blob/main/DER.png)

### Consultas sobre una tabla

1. Devuelve un listado con el primer apellido, segundo apellido y el nombre de
    todos los alumnos. El listado deberá estar ordenado alfabéticamente de
    menor a mayor por el primer apellido, segundo apellido y nombre.

  ```sql
  SELECT a.apellidoAlumno1, a.apellidoAlumno2, a.nombreAlumno
  FROM alumno AS a
  ORDER BY a.apellidoAlumno1 ASC, a.apellidoAlumno2 ASC, a.nombreAlumno ASC;
  
  +-----------------+-----------------+--------------+
  | apellidoAlumno1 | apellidoAlumno2 | nombreAlumno |
  +-----------------+-----------------+--------------+
  | Domínguez       | Guerrero        | Antonio      |
  | Gea             | Ruiz            | Sonia        |
  | Gutiérrez       | López           | Juan         |
  | Heller          | Pagac           | Pedro        |
  | Herman          | Pacocha         | Daniel       |
  | Hernández       | Martínez        | Irene        |
  | Herzog          | Tremblay        | Ramón        |
  | Koss            | Bayer           | José         |
  | Lakin           | Yundt           | Inma         |
  | Saez            | Vega            | Juan         |
  | Sánchez         | Pérez           | Salvador     |
  | Strosin         | Turcotte        | Ismael       |
  +-----------------+-----------------+--------------+
  
  ```

  

2. Averigua el nombre y los dos apellidos de los alumnos que no han dado de
    alta su número de teléfono en la base de datos.

  ```sql
  SELECT a.nombreAlumno, a.apellidoAlumno1, a.apellidoAlumno2
  FROM alumno AS a
  LEFT JOIN telefonoAlum AS telA ON a.idAlumno = telA.idAlumno	
  WHERE telA.idAlumno IS NULL;
  
  +--------------+-----------------+-----------------+
  | nombreAlumno | apellidoAlumno1 | apellidoAlumno2 |
  +--------------+-----------------+-----------------+
  | Daniel       | Herman          | Pacocha         |
  | Inma         | Lakin           | Yundt           |
  | Juan         | Gutiérrez       | López           |
  | Antonio      | Domínguez       | Guerrero        |
  | Irene        | Hernández       | Martínez        |
  | Sonia        | Gea             | Ruiz            |
  +--------------+-----------------+-----------------+
  
  ```

  

3. Devuelve el listado de los alumnos que nacieron en 1999.

   ```sql
   SELECT a.nombreAlumno, a.apellidoAlumno1, a.apellidoAlumno2
   FROM alumno AS a
   WHERE YEAR(a.fechaNacimientoAlu) = 1999;
   
   +--------------+-----------------+-----------------+
   | nombreAlumno | apellidoAlumno1 | apellidoAlumno2 |
   +--------------+-----------------+-----------------+
   | Ismael       | Strosin         | Turcotte        |
   | Antonio      | Domínguez       | Guerrero        |
   +--------------+-----------------+-----------------+
   
   ```

   

4. Devuelve el listado de profesores que no han dado de alta su número de
    teléfono en la base de datos y además su nif termina en K.

  ```sql
  SELECT p.nombreProfesor, p.apellidoProfesor1, p.apellidoProfesor2
  FROM profesor AS p
  LEFT JOIN telefonoProf AS telP ON p.idProfesor = telP.idProfesor
  WHERE telP.idProfesor IS NULL AND RIGHT (p.nifProf, 1) = 'K';
  
  +----------------+-------------------+-------------------+
  | nombreProfesor | apellidoProfesor1 | apellidoProfesor2 |
  +----------------+-------------------+-------------------+
  | Antonio        | Fahey             | Considine         |
  | Guillermo      | Ruecker           | Upton             |
  +----------------+-------------------+-------------------+
  
  ```

  

5. Devuelve el listado de las asignaturas que se imparten en el primer
    cuatrimestre, en el tercer curso del grado que tiene el identificador 7.

  ```sql
  SELECT asi.nombreAsignatura
  FROM asignatura AS asi
  INNER JOIN grado AS g ON idGradoAsig = idGrado
  WHERE asi.cuatrimestre = 1 AND asi.curso = 3 AND g.idGrado = 7;
  +---------------------------+
  | nombreAsignatura          |
  +---------------------------+
  | Fisiología animal         |
  | Operaciones de separación |
  +---------------------------+
  
  ```

  

  ### Consultas multitabla (Composición interna)

  1. Devuelve un listado con los datos de todas las alumnas que se han matriculado alguna vez en el Grado en Ingeniería Informática (Plan 2015).

```sql
SELECT a.nombreAlumno, a.apellidoAlumno1, a.apellidoAlumno2
FROM alumno AS a
INNER JOIN alumnoasignatura AS aa ON aa.idAlumnoAs = a.idAlumno
INNER JOIN asignatura AS asi ON aa.idAsigaturaAs = asi.idAsignatura
INNER JOIN grado AS g ON g.idGrado = asi.idGradoAsig
INNER JOIN genero AS gen ON a.idGeneroAlu = gen.idGenero
WHERE g.nombreGrado = 'Grado en Ingeniería Informática (Plan 2015)' AND gen.idGenero =2;
```


​    


​    

  2. Devuelve un listado con todas las asignaturas ofertadas en el Grado en Ingeniería Informática (Plan 2015).

```sql
SELECT nombreAsignatura
FROM asignatura AS a
LEFT JOIN grado AS g ON a.idGradoAsig = g.idGrado
WHERE g.nombreGrado = 'Grado en Ingeniería Informática (Plan 2015)';

+---------------------------------------+
| nombreAsignatura                      |
+---------------------------------------+
| Álgegra lineal y matemática discreta  |
| Cálculo                               |
| Organización y gestión de empresas    |
| Estructura de Datos y Algoritmos II   |
| Sistemas de tiempo real               |
| Procesos de Ingeniería del Software 1 |
| Inteligencia del Negocio              |
+---------------------------------------+


```


​    

  3. Devuelve un listado de los profesores junto con el nombre del

     departamento al que están vinculados. El listado debe devolver cuatro
     columnas, primer apellido, segundo apellido, nombre y nombre del
     departamento. El resultado estará ordenado alfabéticamente de menor a
     mayor por los apellidos y el nombre.

```sql
SELECT p.apellidoProfesor1,p.apellidoProfesor2, p.nombreProfesor, d.nombreDepartamento
FROM profesor AS p
INNER JOIN departamento AS d ON p.idDepartamentoProf = d.idDepartamento
ORDER BY p.apellidoProfesor1 ASC ,p.apellidoProfesor2 ASC, p.nombreProfesor ASC;

+-------------------+-------------------+----------------+---------------------+
| apellidoProfesor1 | apellidoProfesor2 | nombreProfesor | nombreDepartamento  |
+-------------------+-------------------+----------------+---------------------+
| Domínguez         | Hernández         | María          | Informática         |
| Fahey             | Considine         | Antonio        | Educación           |
| Guerrero          | Martínez          | Juan           | Matemáticas         |
| Hamill            | Kozey             | Manolo         | Biología y Geología |
| Kohler            | Schoen            | Alejandro      | Matemáticas         |
| Lemke             | Rutherford        | Cristina       | Economía y Empresa  |
| Monahan           | Murray            | Micaela        | Filología           |
| Ramirez           | Gea               | Zoe            | Informática         |
| Ruecker           | Upton             | Guillermo      | Química y Física    |
| Sánchez           | Ruiz              | Pepe           | Química y Física    |
| Schmidt           | Fisher            | David          | Agronomía           |
| Schowalter        | Muller            | Francesca      | Derecho             |
| Spencer           | Lakin             | Esther         | Biología y Geología |
| Stiedemann        | Morissette        | Alfredo        | Filología           |
| Streich           | Hirthe            | Carmen         | Informática         |
+-------------------+-------------------+----------------+---------------------+

```


​    

  4. Devuelve un listado con el nombre de las asignaturas, año de inicio y año de fin del curso escolar del alumno con nif 26902806M.

```sql
SELECT a.nombreAsignatura, ce.inicioCurso, ce.finCurso
FROM asignatura AS a
INNER JOIN alumnoAsignatura AS aa ON aa.idAsigaturaAs = a.idAsignatura
INNER JOIN alumno ON aa.idAlumnoAs = idAlumno 
INNER JOIN cursoescolar AS ce ON aa.idCursoEscolarAS = ce.idCursoEscolar
WHERE nifAlu = '26902806M';

+--------------------------------------+-------------+----------+
| nombreAsignatura                     | inicioCurso | finCurso |
+--------------------------------------+-------------+----------+
| Álgegra lineal y matemática discreta |        2014 |     2015 |
| Cálculo                              |        2014 |     2015 |
| Física para informática              |        2014 |     2015 |
+--------------------------------------+-------------+----------+


```


​    

  5. Devuelve un listado con el nombre de todos los departamentos que tienen 

     profesores que imparten alguna asignatura en el Grado en Ingeniería
     Informática (Plan 2015).

~~~sql
SELECT d.nombreDepartamento
FROM departamento AS d
INNER JOIN profesor AS p ON p.idDepartamentoProf = d.idDepartamento
INNER JOIN asignatura AS a ON a.idProfesorAs = p.idProfesor
INNER JOIN grado AS g ON a.idGradoAsig = g.idGrado
WHERE g.nombreGrado = 'Grado en Ingeniería Informática (Plan 2015)';

+---------------------+
| nombreDepartamento  |
+---------------------+
| Agronomía           |
| Informática         |
| Derecho             |
| Biología y Geología |
| Biología y Geología |
| Filología           |
| Informática         |
+---------------------+

```
~~~


​    

  6. Devuelve un listado con todos los alumnos que se han matriculado en alguna asignatura durante el curso escolar 2018/2019.

```sql
SELECT DISTINCT a.nombreAlumno, a.apellidoAlumno1, a.apellidoAlumno2
FROM alumno AS a
INNER JOIN alumnoAsignatura AS aa ON aa.idAlumnoAs = a.idAlumno
INNER JOIN cursoescolar AS ce ON aa.idCursoEscolarAs = ce.idCursoEscolar
WHERE ce.inicioCurso = 2018 AND ce.finCurso = 2019;

Empty set (0.03 sec)

```

​    

### Consultas multitabla (Composición externa)

Resuelva todas las consultas utilizando las cláusulas LEFT JOIN y RIGHT JOIN.

1. Devuelve un listado con los nombres de todos los profesores y los
    departamentos que tienen vinculados. El listado también debe mostrar
    aquellos profesores que no tienen ningún departamento asociado. El listado
    debe devolver cuatro columnas, nombre del departamento, primer apellido,
    segundo apellido y nombre del profesor. El resultado estará ordenado
    alfabéticamente de menor a mayor por el nombre del departamento,
    apellidos y el nombre.

```sql
  SELECT d.nombreDepartamento, p.apellidoProfesor1, p.apellidoProfesor2, p.nombreProfesor
  FROM profesor AS p
  LEFT JOIN departamento AS d ON p.idDepartamentoProf = d.idDepartamento
  ORDER BY d.nombreDepartamento ASC, p.apellidoProfesor1 ASC, p.apellidoProfesor2 ASC, p.nombreProfesor ASC;
  
  +---------------------+-------------------+-------------------+----------------+
  | nombreDepartamento  | apellidoProfesor1 | apellidoProfesor2 | nombreProfesor |
  +---------------------+-------------------+-------------------+----------------+
  | Agronomía           | Schmidt           | Fisher            | David          |
  | Biología y Geología | Hamill            | Kozey             | Manolo         |
  | Biología y Geología | Spencer           | Lakin             | Esther         |
  | Derecho             | Schowalter        | Muller            | Francesca      |
  | Economía y Empresa  | Lemke             | Rutherford        | Cristina       |
  | Educación           | Fahey             | Considine         | Antonio        |
  | Filología           | Monahan           | Murray            | Micaela        |
  | Filología           | Stiedemann        | Morissette        | Alfredo        |
  | Informática         | Domínguez         | Hernández         | María          |
  | Informática         | Ramirez           | Gea               | Zoe            |
  | Informática         | Streich           | Hirthe            | Carmen         |
  | Matemáticas         | Guerrero          | Martínez          | Juan           |
  | Matemáticas         | Kohler            | Schoen            | Alejandro      |
  | Química y Física    | Ruecker           | Upton             | Guillermo      |
  | Química y Física    | Sánchez           | Ruiz              | Pepe           |
  +---------------------+-------------------+-------------------+----------------+
 
```

​      

2. Devuelve un listado con los profesores que no están asociados a un
    departamento.

```sql

  SELECT p.nombreProfesor, p.apellidoprofesor1
  FROM profesor AS p
  LEFT JOIN departamento AS d ON p.idDepartamentoProf = d.idDepartamento
  WHERE d.idDepartamento IS NULL;
  
  Empty set (0.01 sec)

```



3. Devuelve un listado con los departamentos que no tienen profesores asociados.

```sql
SELECT d.nombreDepartamento
FROM departamento AS d
LEFT JOIN profesor AS p ON idDepartamentoProf = idDepartamento
WHERE p.idProfesor IS NULL;

+--------------------+
| nombreDepartamento |
+--------------------+
| Arquitectura       |
| Psicología         |
| Arte y Diseño      |
| Medicina           |
| Historia           |
| Sociología         |
+--------------------+

```

   

4. Devuelve un listado con los profesores que no imparten ninguna asignatura.   

```sql
SELECT p.nombreProfesor, p.apellidoProfesor1, p.apellidoProfesor2
FROM profesor AS p
LEFT JOIN asignatura AS a ON a.idProfesorAS = p.idProfesor
WHERE a.idProfesorAS IS NULL;

+----------------+-------------------+-------------------+
| nombreProfesor | apellidoProfesor1 | apellidoProfesor2 |
+----------------+-------------------+-------------------+
| Laura          | González          | López             |
| Carlos         | Martínez          | Fernández         |
| Ana            | Pérez             | García            |
| Pedro          | Jiménez           | Sánchez           |
| Sofía          | López             | Martín            |
| Javier         | Rodríguez         | Gómez             |
+----------------+-------------------+-------------------+


```

​       

5. Devuelve un listado con las asignaturas que no tienen un profesor asignado.

```sql
SELECT a.nombreAsignatura
FROM asignatura AS a
LEFT JOIN profesor AS p ON p.idProfesor = a.idProfesorAs
WHERE p.idProfesor IS NULL;

Empty set (0,00 sec)

```



6. Devuelve un listado con todos los departamentos que tienen alguna asignatura que no se haya impartido en ningún curso escolar. El resultado
     debe mostrar el nombre del departamento y el nombre de la asignatura que  no se haya impartido nunca.

```sql
SELECT DISTINCT d.nombreDepartamento, a.nombreAsignatura
FROM departamento AS d
RIGHT JOIN profesor AS p ON d.idDepartamento = p.idDepartamentoProf
RIGHT JOIN asignatura AS a ON a.idProfesorAs = p.idProfesor
RIGHT JOIN alumnoAsignatura AS aa ON aa.idAsigaturaAs = a.idAsignatura
RIGHT JOIN cursoEscolar AS ce ON aa.idCursoEscolarAs = ce.idCursoEscolar;
WHERE idCursoEscolar IS NULL;

+---------------------+------------------------------------------+
| nombreDepartamento  | nombreAsignatura                         |
+---------------------+------------------------------------------+
| Agronomía           | Álgegra lineal y matemática discreta     |
| Informática         | Cálculo                                  |
| Economía y Empresa  | Física para informática                  |
| Química y Física    | Introducción a la programación           |
| Derecho             | Organización y gestión de empresas       |
| Química y Física    | Estadística                              |
| Agronomía           | Estructura y tecnología de computadores  |
| Informática         | Fundamentos de electrónica               |
| Agronomía           | Lógica y algorítmica                     |
| Economía y Empresa  | Metodología de la programación           |
+---------------------+------------------------------------------+


```

###   Consultas resumen

1. Devuelve el número total de alumnas que hay.

   ```sql
   SELECT COUNT(idAlumno) AS Total_Alumnas
   FROM alumno AS a
   RIGHT JOIN genero AS g ON g.idGenero = a.idGeneroAlu
   WHERE idGenero = 2;
   
   +---------------+
   | Total_Alumnas |
   +---------------+
   |             3 |
   +---------------+
   
   
   ```

   

2. Calcula cuántos alumnos nacieron en 1999.

   ```sql
   SELECT COUNT(idAlumno) AS Alumnos
   FROM alumno
   WHERE YEAR(fechaNacimientoAlu) = 1999;
   
   +---------+
   | Alumnos |
   +---------+
   |       2 |
   +---------+
   
   
   ```

   

3. Calcula cuántos profesores hay en cada departamento. El resultado sólo
    debe mostrar dos columnas, una con el nombre del departamento y otra
    con el número de profesores que hay en ese departamento. El resultado
    sólo debe incluir los departamentos que tienen profesores asociados y
    deberá estar ordenado de mayor a menor por el número de profesores.

  ```sql
  SELECT d.nombreDepartamento, COUNT(idProfesor)
  FROM departamento AS d
  INNER JOIN profesor As p ON idDepartamento = idDepartamentoProf
  GROUP BY d.nombreDepartamento;
  WHERE idDepartamento IS NOT NULL;
  
  +-----------------------+-------------------+
  | nombreDepartamento    | COUNT(idProfesor) |
  +-----------------------+-------------------+
  | Informática           |                 3 |
  | Matemáticas           |                 2 |
  | Economía y Empresa    |                 2 |
  | Educación             |                 2 |
  | Agronomía             |                 1 |
  | Química y Física      |                 2 |
  | Filología             |                 3 |
  | Derecho               |                 1 |
  | Biología y Geología   |                 3 |
  | Psicología            |                 1 |
  | Arte y Diseño         |                 1 |
  +-----------------------+-------------------+
  
  ```

  

4. Devuelve un listado con todos los departamentos y el número de profesores
    que hay en cada uno de ellos. Tenga en cuenta que pueden existir
    departamentos que no tienen profesores asociados. Estos departamentos
    también tienen que aparecer en el listado.

  ```sql
  SELECT d.nombreDepartamento, COUNT(p.idProfesor) AS 'No. Profesores'
  FROM departamento AS d
  INNER JOIN profesor AS p ON d.idDepartamento = p.idDepartamentoProf
  GROUP BY d.nombreDepartamento;
  
  +---------------------+----------------+
  | nombreDepartamento  | No. Profesores |
  +---------------------+----------------+
  | Informática         |              3 |
  | Matemáticas         |              2 |
  | Economía y Empresa  |              2 |
  | Educación           |              2 |
  | Agronomía           |              1 |
  | Química y Física    |              2 |
  | Filología           |              3 |
  | Derecho             |              1 |
  | Biología y Geología |              3 |
  | Psicología          |              1 |
  | Arte y Diseño       |              1 |
  +---------------------+----------------+
  
  
  ```

  

5. Devuelve un listado con el nombre de todos los grados existentes en la base
    de datos y el número de asignaturas que tiene cada uno. Tenga en cuenta

que pueden existir grados que no tienen asignaturas asociadas. Estos grados
también tienen que aparecer en el listado. El resultado deberá estar
ordenado de mayor a menor por el número de asignaturas.

```sql
SELECT g.nombreGrado, COUNT(idAsignatura) AS 'No. Asignatura'
FROM grado AS g
INNER JOIN asignatura AS a ON idGrado = idGradoAsig
GROUP BY g.nombreGrado;

+--------------------------------------------------------+----------------+
| nombreGrado                                            | No. Asignatura |
+--------------------------------------------------------+----------------+
| Grado en Ingeniería Agrícola (Plan 2015)               |             11 |
| Grado en Ingeniería Eléctrica (Plan 2014)              |             10 |
| Grado en Ingeniería Electrónica Industrial (Plan 2010) |              6 |
| Grado en Ingeniería Informática (Plan 2015)            |              7 |
| Grado en Ingeniería Mecánica (Plan 2010)               |             12 |
| Grado en Ingeniería Química Industrial (Plan 2010)     |              6 |
| Grado en Biotecnología (Plan 2015)                     |              9 |
| Grado en Ciencias Ambientales (Plan 2009)              |              4 |
| Grado en Matemáticas (Plan 2010)                       |              8 |
| Grado en Química (Plan 2009)                           |             10 |
+--------------------------------------------------------+----------------+
```



6. Devuelve un listado con el nombre de todos los grados existentes en la base
    de datos y el número de asignaturas que tiene cada uno, de los grados que
    tengan más de 40 asignaturas asociadas.

  ```sql
  SELECT g.nombreGrado, COUNT(a.idAsignatura) AS 'No. Asignatura'
  FROM grado AS g
  INNER JOIN asignatura AS a ON idGrado = idGradoAsig
  GROUP BY g.nombreGrado
  HAVING COUNT(a.idAsignatura) > 40;
  
  Empty set (0.04 sec)
  ```

  

7. Devuelve un listado que muestre el nombre de los grados y la suma del
    número total de créditos que hay para cada tipo de asignatura. El resultado
    debe tener tres columnas: nombre del grado, tipo de asignatura y la suma
    de los créditos de todas las asignaturas que hay de ese tipo. Ordene el
    resultado de mayor a menor por el número total de crédidos.

  ```sql
  SELECT g.nombreGrado, t.nombrAsignatura, SUM(a.creditos) AS TotalCreditos
  FROM grado AS g
  INNER JOIN asignatura AS a ON g.idGrado = a.idGradoAsig
  INNER JOIN tipoasignatura AS t ON t.idTipoAsignatura = a.idTipoAsignaturaA
  GROUP BY g.nombreGrado, t.nombrAsignatura
  ORDER BY TotalCreditos DESC;
  
  +--------------------------------------------------------+-----------------+---------------+
  | nombreGrado                                            | nombrAsignatura | TotalCreditos |
  +--------------------------------------------------------+-----------------+---------------+
  | Grado en Ingeniería Mecánica (Plan 2010)               | Obligatoria     |            39 |
  | Grado en Ingeniería Eléctrica (Plan 2014)              | Optativa        |            36 |
  | Grado en Ingeniería Agrícola (Plan 2015)               | Obligatoria     |            30 |
  | Grado en Ingeniería Informática (Plan 2015)            | Basica          |            24 |
  | Grado en Biotecnología (Plan 2015)                     | Basica          |            24 |
  | Grado en Ingeniería Agrícola (Plan 2015)               | Optativa        |            24 |
  | Grado en Ingeniería Mecánica (Plan 2010)               | Optativa        |            24 |
  | Grado en Química (Plan 2009)                           | Optativa        |            24 |
  | Grado en Matemáticas (Plan 2010)                       | Obligatoria     |          22.5 |
  | Grado en Química (Plan 2009)                           | Basica          |            18 |
  | Grado en Ingeniería Electrónica Industrial (Plan 2010) | Optativa        |            18 |
  | Grado en Ingeniería Química Industrial (Plan 2010)     | Obligatoria     |          16.5 |
  | Grado en Biotecnología (Plan 2015)                     | Obligatoria     |          16.5 |
  | Grado en Química (Plan 2009)                           | Obligatoria     |            15 |
  | Grado en Ingeniería Agrícola (Plan 2015)               | Basica          |            12 |
  | Grado en Ingeniería Eléctrica (Plan 2014)              | Basica          |            12 |
  | Grado en Ciencias Ambientales (Plan 2009)              | Basica          |            12 |
  | Grado en Matemáticas (Plan 2010)                       | Basica          |            12 |
  | Grado en Ingeniería Química Industrial (Plan 2010)     | Basica          |            12 |
  | Grado en Ingeniería Eléctrica (Plan 2014)              | Obligatoria     |            12 |
  | Grado en Ingeniería Informática (Plan 2015)            | Optativa        |            12 |
  | Grado en Biotecnología (Plan 2015)                     | Optativa        |            12 |
  | Grado en Matemáticas (Plan 2010)                       | Optativa        |            12 |
  | Grado en Ingeniería Electrónica Industrial (Plan 2010) | Obligatoria     |          10.5 |
  | Grado en Ingeniería Electrónica Industrial (Plan 2010) | Basica          |             6 |
  | Grado en Ingeniería Mecánica (Plan 2010)               | Basica          |             6 |
  | Grado en Ingeniería Informática (Plan 2015)            | Obligatoria     |             6 |
  | Grado en Ciencias Ambientales (Plan 2009)              | Obligatoria     |             6 |
  | Grado en Ciencias Ambientales (Plan 2009)              | Optativa        |             6 |
  | Grado en Ingeniería Química Industrial (Plan 2010)     | Optativa        |             6 |
  +--------------------------------------------------------+-----------------+---------------+
  
  ```

  

8. Devuelve un listado que muestre cuántos alumnos se han matriculado de
    alguna asignatura en cada uno de los cursos escolares. El resultado deberá
    mostrar dos columnas, una columna con el año de inicio del curso escolar y
    otra con el número de alumnos matriculados.

  ```sql
  SELECT ce.inicioCurso, COUNT(idAlumno) AS 'No. Alumnos'
  FROM alumno AS a
  INNER JOIN alumnoasignatura AS aa ON aa.idAlumnoAs = a.idAlumno
  INNER JOIN cursoescolar AS ce ON aa.idCursoEscolarAS = idCursoEscolar
  GROUP BY ce.inicioCurso;
  
  +-------------+-------------+
  | inicioCurso | No. Alumnos |
  +-------------+-------------+
  |        2014 |          17 |
  |        2015 |          13 |
  |        2016 |           3 |
  |        2017 |           3 |
  +-------------+-------------+
  ```

  

9. Devuelve un listado con el número de asignaturas que imparte cada
    profesor. El listado debe tener en cuenta aquellos profesores que no
    imparten ninguna asignatura. El resultado mostrará cinco columnas: id,
    nombre, primer apellido, segundo apellido y número de asignaturas. El
    resultado estará ordenado de mayor a menor por el número de asignaturas.

```sql
SELECT p.idProfesor, p.nombreProfesor, p.apellidoProfesor1, p.apellidoProfesor2, COUNT(idAsignatura) AS No_Asignatura
FROM profesor AS p
INNER JOIN asignatura AS a ON idProfesor = idProfesorAS
GROUP BY p.idProfesor
ORDER BY No_Asignatura DESC;

+------------+----------------+-------------------+-------------------+---------------+
| idProfesor | nombreProfesor | apellidoProfesor1 | apellidoProfesor2 | No_Asignatura |
+------------+----------------+-------------------+-------------------+---------------+
|          3 | Zoe            | Ramirez           | Gea               |            10 |
|          8 | Cristina       | Lemke             | Rutherford        |             9 |
|         14 | Manolo         | Hamill            | Kozey             |             9 |
|          5 | David          | Schmidt           | Fisher            |             7 |
|         10 | Esther         | Spencer           | Lakin             |             7 |
|         12 | Carmen         | Streich           | Hirthe            |             6 |
|         20 | Francesca      | Schowalter        | Muller            |             6 |
|         22 | Juan           | Guerrero          | Martínez          |             6 |
|         23 | María          | Domínguez         | Hernández         |             6 |
|         18 | Micaela        | Monahan           | Murray            |             4 |
|         21 | Pepe           | Sánchez           | Ruiz              |             4 |
|         15 | Alejandro      | Kohler            | Schoen            |             3 |
|         17 | Guillermo      | Ruecker           | Upton             |             3 |
|         16 | Antonio        | Fahey             | Considine         |             2 |
|         13 | Alfredo        | Stiedemann        | Morissette        |             1 |
+------------+----------------+-------------------+-------------------+---------------+
```



### Subconsultas

1. Devuelve todos los datos del alumno más joven

   ```sql
   SELECT idAlumno, nifAlu, nombreAlumno, apellidoAlumno1, apellidoAlumno2, fechaNacimientoAlu
   FROM alumno
   WHERE fechaNacimientoAlu =(
   	SELECT MAX(fechaNacimientoAlu)
       FROM alumno
   );
   +----------+-----------+--------------+-----------------+-----------------+--------------------+
   | idAlumno | nifAlu    | nombreAlumno | apellidoAlumno1 | apellidoAlumno2 | fechaNacimientoAlu |
   +----------+-----------+--------------+-----------------+-----------------+--------------------+
   |        4 | 17105885A | Pedro        | Heller          | Pagac           | 2000-10-05         |
   +----------+-----------+--------------+-----------------+-----------------+--------------------+
   
   ```

   

2. Devuelve un listado con los profesores que no están asociados a un
    departamento.

  ```sql
  SELECT idProfesor, nombreProfesor, apellidoProfesor1, apellidoProfesor2, fechaNacimiento
  FROM profesor 
  WHERE idDepartamentoProf IN (
      SELECT p.idProfesor
      FROM profesor AS p 
      LEFT JOIN departamento AS d ON p.idDepartamentoProf = d.idDepartamento
      WHERE p.idDepartamentoProf IS NULL
  );
  
  Empty set (0.16 sec)
  ```

  

3. Devuelve un listado con los departamentos que no tienen profesores
    asociados.

  ```sql
  SELECT nombreDepartamento
  FROM departamento 
  WHERE idDepartamento IN (
      SELECT d.idDepartamento
      FROM profesor AS p 
      RIGHT JOIN departamento AS d ON p.idDepartamentoProf = d.idDepartamento
      WHERE p.idDepartamentoProf IS NULL
  );
  
  +--------------------+
  | nombreDepartamento |
  +--------------------+
  | Arquitectura       |
  | Medicina           |
  | Historia           |
  | Sociología         |
  +--------------------+
  ```

  

4. Devuelve un listado con los profesores que tienen un departamento
    asociado y que no imparten ninguna asignatura.

  ```sql
  SELECT p.nombreProfesor, p.apellidoProfesor1, p.apellidoProfesor2
  FROM profesor AS p
  INNER JOIN departamento AS d ON p.idDepartamentoProf = d.idDepartamento
  WHERE p.idProfesor NOT IN (
      SELECT p.idProfesor
      FROM profesor AS p
      INNER JOIN asignatura AS a ON p.idProfesor = a.idProfesorAs
  );
  
  +----------------+-------------------+-------------------+
  | nombreProfesor | apellidoProfesor1 | apellidoProfesor2 |
  +----------------+-------------------+-------------------+
  | Laura          | González          | López             |
  | Carlos         | Martínez          | Fernández         |
  | Ana            | Pérez             | García            |
  | Pedro          | Jiménez           | Sánchez           |
  | Sofía          | López             | Martín            |
  | Javier         | Rodríguez         | Gómez             |
  +----------------+-------------------+-------------------+
  ```

  

5. Devuelve un listado con las asignaturas que no tienen un profesor asignado.

   ```sql
   SELECT nombreAsignatura 
   FROM asignatura
   WHERE idAsignatura IN (
       SELECT a.idAsignatura
       FROM asignatura AS a
       LEFT JOIN profesor AS p ON a.idProfesorAs = p.idProfesor
       WHERE a.idProfesorAs IS NULL 
   );
   
   Empty set (0.02 sec)
   ```

   

6. Devuelve un listado con todos los departamentos que no han impartido
    asignaturas en ningún curso escolar.

```sql
SELECT nombreDepartamento
FROM departamento
WHERE idDepartamento NOT IN (
    SELECT DISTINCT d.idDepartamento
    FROM departamento d
    LEFT JOIN profesor p ON d.idDepartamento = p.idDepartamentoProf
    LEFT JOIN asignatura a ON p.idProfesor = a.idProfesorAs
    WHERE a.idAsignatura IS NOT NULL
);

+--------------------+
| nombreDepartamento |
+--------------------+
| Arquitectura       |
| Psicología         |
| Arte y Diseño      |
| Medicina           |
| Historia           |
| Sociología         |
+--------------------+
```



### CREATE VIEW

1. Devuelve un listado con todos los departamentos que no han impartido
   asignaturas en ningún curso escolar.

```sql
DROP VIEW vista_departamentos_vacios;
CREATE VIEW vista_departamentos_vacios AS
SELECT nombreDepartamento
FROM departamento
WHERE idDepartamento NOT IN (
    SELECT DISTINCT d.idDepartamento
    FROM departamento d
    LEFT JOIN profesor p ON d.idDepartamento = p.idDepartamentoProf
    LEFT JOIN asignatura a ON p.idProfesor = a.idProfesorAs
    WHERE a.idAsignatura IS NOT NULL
);

SELECT nombreDepartamento FROM vista_departamentos_vacios;

```



2. Devuelve un listado con los profesores que tienen un departamento
   asociado y que no imparten ninguna asignatura.

   ```sql
   DROP VIEW vista_profesores_departamentos;
   CREATE VIEW vista_profesores_departamentos AS
   SELECT p.nombreProfesor, CONCAT_WS(' ',p.apellidoProfesor1, p.apellidoProfesor2) AS apellidos
   FROM profesor AS p
   INNER JOIN departamento AS d ON p.idDepartamentoProf = d.idDepartamento
   WHERE idProfesor NOT IN (
   	SELECT p.idProfesor
       FROM profesor AS p
       INNER JOIN asignatura AS a ON p.idProfesor = a.idProfesorAs
   );
   
   SELECT nombreProfesor, apellidos
   FROM vista_profesores_departamentos;
   ```



3. Devuelve un listado con los departamentos que no tienen profesores
   asociados.

```sql
DROP VIEW departamentos_sin_profesores;
CREATE VIEW departamentos_sin_profesores AS
SELECT d.idDepartamento, d.nombreDepartamento
FROM departamento AS d
LEFT JOIN profesor AS p ON d.idDepartamento = p.idDepartamentoProf
WHERE p.idDepartamentoProf IS NULL;

SELECT idDepartamento, nombreDepartamento
FROM departamentos_sin_profesores;

```



4. Devuelve el listado de las asignaturas que se imparten en el primer
   cuatrimestre, en el tercer curso del grado que tiene el identificador 7.

   ```sql
   DROP VIEW asignaturas_identificador;
   CREATE VIEW  asignaturas_identificador AS
   SELECT a.nombreAsignatura
   FROM asignatura AS A
   INNER JOIN grado AS g ON idGrado = idGradoAsig
   WHERE a.cuatrimestre = 1 AND a.curso = 3 AND g.idGrado =7;
   
   SELECT nombreAsignatura
   FROM asignaturas_identificador;
   
   ```



5. Devuelve un listado con el nombre de todos los grados existentes en la base de datos y el número de asignaturas que tiene cada uno. Tenga en cuenta que pueden existir grados que no tienen asignaturas asociadas. Estos grados también tienen que aparecer en el listado. El resultado deberá estar ordenado de mayor a menor por el número de asignaturas.

```sql
DROP VIEW grados_existentes;
CREATE VIEW grados_existentes AS
SELECT g.nombreGrado, COUNT(idAsignatura) AS No_asignaturas
FROM grado AS g
INNER JOIN asignatura AS a ON g.idGrado = a.idGradoAsig
GROUP BY g.nombreGrado
ORDER BY COUNT(idAsignatura);

SELECT nombreGrado, No_asignaturas
FROM grados_existentes;

```



6. Devuelve el listado de los alumnos que nacieron en 1999.

   ```sql
   DROP VIEW alumnos_nacidos_1999;
   CREATE VIEW alumnos_nacidos_1999 AS
   SELECT nombreAlumno, apellidoAlumno1, apellidoAlumno2, fechaNacimientoAlu
   FROM alumno
   WHERE YEAR(fechaNacimientoAlu) =1999;
   
   SELECT nombreAlumno, apellidoAlumno1, apellidoAlumno2, fechaNacimientoAlu
   FROM alumnos_nacidos_1999;
   ```



7. Devuelve un listado con el primer apellido, segundo apellido y el nombre de
   todos los alumnos. El listado deberá estar ordenado alfabéticamente de
   menor a mayor por el primer apellido, segundo apellido y nombre

```sql
DROP VIEW listado_alumnos;
CREATE VIEW listado_alumnos AS
SELECT apellidoAlumno1, apellidoAlumno2, nombreAlumno
FROM alumno
ORDER BY apellidoAlumno1 ASC,apellidoAlumno2 ASC, nombreAlumno ASC;

SELECT apellidoAlumno1, apellidoAlumno2, nombreAlumno
FROM listado_alumnos;

```



8. Averigua el nombre y los dos apellidos de los alumnos que no han dado de
   alta su número de teléfono en la base de datos.

```sql
DROP VIEW telefono_alta_alumnos;
CREATE VIEW telefono_alta_alumnos AS 
SELECT a.nombreAlumno, CONCAT_WS(' ', a.apellidoAlumno1, a.apellidoAlumno2) AS 'apellidos'
FROM alumno AS a
LEFT JOIN telefonoalum as t ON a.idAlumno = t.idAlumno
WHERE t.idAlumno IS NULL;

SELECT nombreAlumno, apellidos
FROM telefono_alta_alumnos;

```



9. Devuelve un listado con el nombre de las asignaturas, año de inicio y año de fin del curso escolar del alumno con nif 26902806M.

```sql
DROP VIEW alumno_26902806M;
CREATE VIEW alumno_26902806M AS 
SELECT a.nombreAsignatura, ce.inicioCurso, ce.finCurso
FROM asignatura AS a
INNER JOIN alumnoAsignatura AS aa ON aa.idAsigaturaAs = a.idAsignatura
INNER JOIN alumno ON aa.idAlumnoAs = idAlumno 
INNER JOIN cursoescolar AS ce ON aa.idCursoEscolarAS = ce.idCursoEscolar
WHERE nifAlu = '26902806M';

SELECT nombreAsignatura, inicioCurso, finCurso
FROM alumno_26902806M;
```



10. Devuelve un listado con el nombre de todos los departamentos que tienen 

    profesores que imparten alguna asignatura en el Grado en Ingeniería
    Informática (Plan 2015).

```sql
DROP VIEW Grado_en_Ingeniería_Informática;
CREATE VIEW Grado_en_Ingeniería_Informática AS 
SELECT d.nombreDepartamento
FROM departamento AS d
INNER JOIN profesor AS p ON p.idDepartamentoProf = d.idDepartamento
INNER JOIN asignatura AS a ON a.idProfesorAs = p.idProfesor
INNER JOIN grado AS g ON a.idGradoAsig = g.idGrado
WHERE g.nombreGrado = 'Grado en Ingeniería Informática (Plan 2015)';

SELECT d.nombreDepartamento
FROM Grado_en_Ingeniería_Informática;
```



### PROCEDIMIENTOS ALMACENADOS

1. Procedimiento para insertar un nuevo alumno

```sql
DELIMITER $$
DROP PROCEDURE IF EXISTS insertar_dato $$
CREATE PROCEDURE insertar_dato(
	IN nifAlu VARCHAR(9),
    IN nombreAlumno VARCHAR(25),
    IN apellidoAlumno1 VARCHAR(30),
    IN apellidoAlumno2 VARCHAR(30),
    IN fechaNacimientoAlu DATE,
    IN idGeneroAlu INT
)
BEGIN 
	INSERT INTO alumno (idAlumno, nifAlu, nombreAlumno, apellidoAlumno1, apellidoAlumno2, fechaNacimientoAlu, idGeneroAlu) VALUES (NULL, nifAlu, nombreAlumno, apellidoAlumno1, apellidoAlumno2, fechaNacimientoAlu, idGeneroAlu);

END $$
DELIMITER ;

CALL insertar_dato('2568985F', 'Andres', 'Perez', 'Peña', '1995/09/20', 1);
```

 

2. Procedimiento para eliminar un alumno

```sql
DELIMITER $$
DROP PROCEDURE IF EXISTS eliminar_alumno $$
CREATE PROCEDURE eliminar_alumno(
	IN id_Alumno INT
)
BEGIN
	DELETE FROM alumno WHERE idAlumno = id_Alumno;

END $$
DELIMITER ;

CALL eliminar_alumno(26);

```



3. Procedimiento para buscar una asignatura

```sql
DELIMITER $$
DROP PROCEDURE IF EXISTS buscar_asignatura $$
CREATE PROCEDURE buscar_asignatura(
	IN id INT	
)
BEGIN
	SELECT idAsignatura, nombreAsignatura
	FROM asignatura
	WHERE id = idAsignatura;
END $$
DELIMITER;

CALL buscar_asignatura();
```



4. Procedimiento para actualizar los datos de un profesor

```sql
DELIMITER $$
DROP PROCEDURE IF EXISTS actualizar_profesor $$
CREATE PROCEDURE actualizar_profesor(
    IN id INT,
    IN nuevonifProf VARCHAR(9),
    IN nuevonombreProfesor VARCHAR(25),
    IN nuevoapellidoProfesor1 VARCHAR(25),
    IN nuevoapellidoProfesor2 VARCHAR(25),
    IN nuevofechaNacimiento DATE,
    IN nuevoidGeneroProf INT,
    IN nuevoidDepartamentoProf INT
)
BEGIN
    UPDATE profesor
    SET
        nifProf = nuevonifProf,
        nombreProfesor = nuevonombreProfesor,
        apellidoProfesor1 = nuevoapellidoProfesor1,
        apellidoProfesor2 = nuevoapellidoProfesor2,
        fechaNacimiento = nuevofechaNacimiento,
        idGeneroProf = nuevoidGeneroProf,
        idDepartamentoProf = nuevoidDepartamentoProf
    WHERE idProfesor = id;
END $$
DELIMITER ;

CALL actualizar_profedor()
```



5. Procedimiento para insertar ciudades nuevas

```sql
DELIMITER $$
DROP PROCEDURE IF EXISTS insertar_ciudad $$
CREATE PROCEDURE insertar_ciudad(
	IN id VARCHAR(5),
    IN nombre VARCHAR(20)
)
BEGIN
	INSERT INTO ciudad (idCiudad, nombreCiudad) VALUES (id,nombre);
END $$
DELIMITER ;

CALL insertar_ciudad('MEX', 'Mexico');

```



6. Procedimiento para buscar un alumno

```sql
DELIMITER $$
DROP PROCEDURE IF EXISTS buscar_alumno $$
CREATE PROCEDURE buscar_alumno(
	IN id INT
)
BEGIN 
	SELECT idAlumno, nifAlu, nombreAlumno, apellidoAlumno1
	FROM alumno
	WHERE id = idAlumno;
END $$
DELIMITER ;

CALL buscar_alumno(19);
```



7. Procedimiento para ingresar un nuevo numero telefónico del alumno

```sql
DELIMITER $$
DROP PROCEDURE IF EXISTS ingresar_tel_alumno $$
CREATE PROCEDURE ingresar_tel_alumno(
    IN a_numero BIGINT,
    IN a_idTipoTelefonoT TINYINT(1),
    IN a_idAlumno INT(11)
)
BEGIN
    INSERT INTO telefonoalum (idTelefono, numero, idTipoTelefonoT, idAlumno) VALUES (NULL, a_numero, a_idTipoTelefonoT, a_idAlumno);
END $$
DELIMITER ;

CALL ingresar_tel_alumno(256987452, 1, 6);

```



8. Procedimiento para eliminar un teléfono de un alumno

```sql
DELIMITER $$
DROP PROCEDURE IF EXISTS eliminar_tel_alumno$$
CREATE PROCEDURE eliminar_tel_alumno(
	IN id INT
)
BEGIN
	DELETE FROM telefonoalum WHERE id = idTelefono;
END $$
DELIMITER ;

CALL eliminar_tel_alumno(7);
```



9. Procedimiento para mostrar todas los profesores 

```sql
DELIMITER $$
DROP PROCEDURE IF EXISTS mostrar_profesores $$
CREATE PROCEDURE mostrar_profesores()
BEGIN
	SELECT idProfesor, nombreProfesor, apellidoProfesor1
	FROM profesor;
END $$
DELIMITER ;

CALL mostrar_profesores();
```



10. Procedimiento para mostrar todos los alumnos con sus cursos 

```sql
DELIMITER $$
DROP PROCEDURE IF EXISTS mostrar_alumno_curso $$
CREATE PROCEDURE mostrar_alumno_curso()
BEGIN
	SELECT a.nombreAlumno, c.idCursoEscolar
	FROM alumno AS a
	INNER JOIN alumnoAsignatura AS aa ON idAlumno = idAlumnoAs
	INNER JOIN cursoescolar AS c ON idCursoEscolar = idCursoEscolarAs;
END $$
DELIMITER ;

CALL mostrar_alumno_curso();
```



Todos los archivos SQL incluido en este repositorio, fue creado por [Maritza Velasco Esteban](https://github.com/mvelascoe). Proporciona datos de ejemplo para la base de datos del proyecto.
