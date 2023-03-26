-- Esta consulta muestra el documento, nombre y apellido del Usuario, la Habitacion y id_reserva gracias a la relacion de las tablas mediante id_usuario
SELECT U.id_usuario,U.nombre,U.apellido,R.id_habitacion, R.id_reserva
FROM Reserva R
INNER JOIN Usuario U ON R.id_usuario = U.id_usuario

-- Esta consulta muestra el numero de la habitacion(id_habitacion) de la tabla Habitacion y trae el tipo de la habitación de la tabla Tipo_Habitacion gracias a la relación de las tablas mediante el id_tipo_hab
SELECT H.id_habitacion, TH.tipo
FROM Habitacion H
INNER JOIN Tipo_Habitacion TH ON H.id_tipo_hab = TH.id_tipo_hab