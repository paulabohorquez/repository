/* Consulta que muestra el documento del usuario y el promedio del precio de las reservas realizadas por una persona MAYORES A 440000.
 En este caso se necesita la relación de las tablas Tipo_Habitacion, Habitacion y Reserva y agrupar la consulta al id_usuario, esto con el fin de que si muestr el promedio por Usuario */
 
SELECT R.id_usuario as DocumentoUsuario,AVG(precio) AS PromediolxUsuario
FROM Tipo_Habitacion TP
INNER JOIN Habitacion H ON TP.id_tipo_hab = H.id_tipo_hab
INNER JOIN Reserva R ON H.id_habitacion = R.id_habitacion
GROUP BY R.id_usuario
HAVING AVG(precio) > 440000

/* Consulta que muestra el documento del usuario y el promedio del precio de las reservas realizadas por una persona MENORES A 440000.
 En este caso se necesita la relación de las tablas Tipo_Habitacion, Habitacion y Reserva y agrupar la consulta al id_usuario, esto con el fin de que si muestr el promedio por Usuario */

SELECT R.id_usuario as DocumentoUsuario,AVG(precio) AS PromediolxUsuario
FROM Tipo_Habitacion TP
INNER JOIN Habitacion H ON TP.id_tipo_hab = H.id_tipo_hab
INNER JOIN Reserva R ON H.id_habitacion = R.id_habitacion
GROUP BY R.id_usuario
HAVING AVG(precio) < 440000