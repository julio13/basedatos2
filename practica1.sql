--creearemos una tabla simple para probar pl sql 
CREATE TABLE DANCE(ID_DANCER integer, NOMBRE varchar2(40), EDAD integer);
--TENEMOS EL SERVIDOR EN MODO DE DESARROLLADOR.
--VAMOS A EMPEZAR CON UN BLOQUE PL SQL
SET SERVEROUTPUT ON;

-- SE DECLARA LAS VARIABLES
 DECLARE 
EDAD INTEGER;
YEARS INTEGER;

--AQUI VA LA LOGICA DEL PROGRAMA
BEGIN
YEARS:=21;
EDAD:=YEARS*365;
--IMPRIME EL RESULTADO
DBMS_OUTPUT.PUT_LINE('TU EDAD EN DIAS ES: '||EDAD);
END;
/

-- CREAR UN BLOQUE PL SQL QUE GENERE 200,000 REGIISTRO EN SECUENCIA ASCENDENTE EN LA TABLA DANCE
BEGIN

FOR I IN 1..200000 LOOP
INSERT INTO DANCE VALUES(I,'CAMPOS',44);
     
END LOOP;
END;
/
  --HACEMOS UN SELECT PARA VER QUE DIABLOS HIZO
SELECT * FROM DANCE;

--SISTEMITA DE PELICULAS LA DE SALA SERA TU TAREA

CREATE TABLE PELICULA (ID_PELICULA INTEGER,
                      TITULO VARCHAR2(120),
                      SINOPSIS VARCHAR2(500),
                      CALSIFICACION VARCHAR2(5),
                      CONSTRAINT PK_ID_PELICULA PRIMARY KEY( ID_PELICULA)
                      );
                      
                     DESCRIBE  PELICULA;
CREATE TABLE HORARIOS (ID_HORARIO INTEGER,
                       ID_PELICULA INTEGER,
                       HORARIO VARCHAR2(8),
                       CONSTRAINT PK_ID_HORARIO PRIMARY KEY(ID_HORARIO),
                       CONSTRAINT FK1_ID_PELICULA FOREIGN KEY(ID_PELICULA) REFERENCES PELICULA(ID_PELICULA)
                       );
        
        DESCRIBE HORARIOS;
        
        --una secuencia en oracle sirve par enlazar una tabla a un pk auto_increment
        CREATE SEQUENCE SEC_PELICULA;
        STAR WITH 1
        INCREMENT BY 1
        NOMAXVALUE;
        
        --NOTA solo se puede asociar una sola tabla
        --para asociar se necesita un nuevo objeto de base de datos este objeto va a serr el q insertara el o los nuevos registros
        --en la tabla. JAMAS se usa un INSERT INTO en oracle cuando tiene un (PRIMARY KEY auto-generado) 
        --TAREA****** INJECCION DE SQL Y CASOS REALES NOTABLES
        
        SET SERVEROUTPUT ON;
        CREATE OR REPLACE PROCEDURE HOLA_MUNDO( NOMBRE IN VARCHAR2)
        AS
        --LOGICA
        BEGIN 
        DBMS_OUTPUT.PUT_LINE('HOLA COMO ESTAS:  '||NOMBRE);
        END;
        /
        
        DECLARE
        VALOR NUMBER;
        BEGIN
        SUMA(12,8,VALOR);
        SYS.dbms_output.put_line('LA SUMA ES: '||VALOR);
        
        HOLA_MUNDO ('JULIO');
        END;
        /
        
        
DECLARE
VALOR INTEGER;
BEGIN
guardar_pelicula(VALOR,'EL RENACIDO','ESTA PUS MAS O MENOS','B15');
END;
/
SELECT *FROM PELICULA;
