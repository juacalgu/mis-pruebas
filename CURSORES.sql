-- Database: cursores

-- DROP DATABASE cursores;

/*
CREATE TABLE PELICULAS(
codigo varchar(5),
titulo varchar(100),
anyo int,
Primary Key (codigo));
*/
/*
Insert into Peliculas values('00001', 'full out', 2015);
Insert into Peliculas values('00002', 'gladiator', 2000);
Insert into Peliculas values('00003', 'la lista de Schindler', 1993);
Insert into Peliculas values('00004', 'full monty', 1997);
Insert into Peliculas values('00005', 'dunkirk', 2017);
Insert into Peliculas values('00006', ' 5 full', 2015);
*/

/*
 CREATE OR REPLACE FUNCTION get_peliculas_anyo(p_anyo INTEGER)
   RETURNS text AS $$
DECLARE 
 titulos_salida TEXT DEFAULT ''; --variable para la salida, titulos de peliculas
 rec_pelicula   RECORD; --variable para almacenar una fila, una pelicula
 --Declaración del Cursor, que selecciona el título y el año de la tabla Peliculas 			 
 cur_peliculas CURSOR(p_anyo INTEGER)
 FOR SELECT titulo, anyo
 FROM Peliculas
 WHERE anyo = p_anyo;
BEGIN
   -- Abrir el cursor
   OPEN cur_peliculas(p_anyo);
 
   LOOP
    -- fetch va leyendo cada fila
      FETCH cur_peliculas INTO rec_pelicula;
    -- salir cuando no hay más filas
      EXIT WHEN NOT FOUND;
 
    -- Construimos la salida
      IF rec_pelicula.titulo LIKE '%ful%' THEN 
         titulos_salida := titulos_salida || ',' || rec_pelicula.titulo || ':' || rec_pelicula.anyo;
      END IF;
   END LOOP;
  
   -- Cerramos el cursor
   CLOSE cur_peliculas;
 
   RETURN titulos_salida;
END; $$
 
LANGUAGE plpgsql;
*/

--SELECT get_peliculas_anyo(1997);













	


