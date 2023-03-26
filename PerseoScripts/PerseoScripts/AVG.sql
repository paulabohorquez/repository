-- Consulta que muestra el precio promedio de los Tipos de servicios

SELECT AVG(precio) as PromedioServicio from Tipo_Servicio;

/* Consulta que muestra el documento del usuario y el promedio del precio de las reservas realizadas por una persona.
 En este caso se necesita la relación de las tablas Tipo_Habitacion, Habitacion y Reserva y agrupar la consulta al id_usuario, esto con el fin de que si muestr el promedio por Usuario */
 
SELECT R.id_usuario as DocumentoUsuario,AVG(precio) AS PromediolxUsuario
FROM Tipo_Habitacion TP
INNER JOIN Habitacion H ON TP.id_tipo_hab = H.id_tipo_hab
INNER JOIN Reserva R ON H.id_habitacion = R.id_habitacion
GROUP BY R.id_usuario