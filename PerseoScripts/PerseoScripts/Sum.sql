-- Consulta que muestra el total de la suma del precio de todos los tipos de habitaciones
SELECT sum(precio) AS TotalTipoHabitacion from Tipo_Habitacion;

/* Consulta que muestra el documento del usuario y total del precio de las reservas realizadas por una persona.
 En este caso se necesita la relación de las tablas Tipo_Habitacion, Habitacion y Reserva y agrupar la consulta al id_usuario, esto con el fin de que si muestre el total por Usuario */
 
SELECT R.id_usuario as DocumentoUsuario,sum(precio) AS TotalxUsuario
FROM Tipo_Habitacion TP
INNER JOIN Habitacion H ON TP.id_tipo_hab = H.id_tipo_hab
INNER JOIN Reserva R ON H.id_habitacion = R.id_habitacion
GROUP BY R.id_usuario