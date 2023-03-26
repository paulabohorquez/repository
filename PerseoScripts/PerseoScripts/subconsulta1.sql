/*Esta es una consulta anidada donde hay dos SELECT anidados uno selecciona la fecha de inicio de la tabla [Reserva] y el otro la fecha de fin de la tabla [Reserva]
el SELECT principal selecciona los campos (id_usuario, nombre, apellido) de la  tabla [Usuario]
*/
SELECT id_usuario as Documento,nombre,apellido,(SELECT fecha_inicio FROM Reserva) as fecha_inicio, (SELECT fecha_fin FROM Reserva) as fecha_fin
FROM Usuario;

/*Esta es una consulta anidada donde hay dos SELECT anidados:el primer SELECT selecciona la cantidad de servicios de la tablas [Servicio],
el segundo SELECT selecciona el tipo de Servicio de la tabla[Tipo_Servicio]
el ultimo SELECT selecciona el precio de la tabla [Tipo_Servicio]
y el SELECT principal selecciona el id_usuario de la tabla [Factura]
*/
SELECT id_usuario as Documento,(SELECT cantidad FROM Servicio)as Cantida_servicio,
(SELECT tipo FROM  Tipo_Servicio)as TipoServicio,(SELECT precio FROM  Tipo_Servicio) as PrecioServicio
FROM Factura as f 

