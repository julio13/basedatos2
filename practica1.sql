--Crearemos una tabla muy simple para probar el poder de PL sql

create table DANCE(id_dance integer, nombre varchar2(40), edad integer);
--prendemos el servidor en modo de desarrollador
set serveroutput on;
--vamos a empezar con un bloque PL SQL 
DECLARE 
--AQUI SE DECLARA LAS VAROABLES A USARSE
edad integer;
YEARS INTEGER;
BEGIN
--AQUI VA LA LOGICA DEL PROGRAMA
YEARS:=21;
edad:=YEARS*365;

DBMS_OUTPUT.PUT_LINE('TU EDAD EN DIA ES'|| edad);
END;
/
