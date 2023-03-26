-- Consulta que muestra el nombre,apellido y documento(id_usuario) el numero de la Habitacion(id_habitacion) y Tipo de habitacion de la reserva cuyo id es 1
SELECT U.nombre, U.apellido, U.id_usuario, H.id_habitacion, TH.tipo
FROM reserva R
INNER JOIN usuario U on R.id_usuario = U.id_usuario
INNER JOIN habitacion H ON R.id_habitacion = H.id_habitacion
INNER JOIN tipo_habitacion TH on H.id_tipo_hab = TH.id_tipo_hab
WHERE R.id_reserva = 1;
-- Consulta que muestra el id_factura, documento y nombre del Usuario, el tipo de servicio consumido y la habitacion relacionada al Usuario
SELECT F.id_factura,U.id_usuario,U.nombre, TP.tipo, R.id_habitacion
FROM Factura F
INNER JOIN Reserva R ON F.id_reserva = R.id_reserva
INNER JOIN Servicio S ON F.id_factura = S.id_factura
INNER JOIN Tipo_Servicio TP ON S.id_tipo_servicio = TP.id_tipo_servicio
INNER JOIN Usuario U ON R.id_usuario = U.id_usuario