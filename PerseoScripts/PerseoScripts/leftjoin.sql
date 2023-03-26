/*Esta consulta convierte la tabla [Tipo_Usuario] en dominante y la tabla [Usuario] en
Subordinada, si hay filas en la tablas [Tipo_Usuario] que no tiene una fila en la tabla [Usuario]
se mostraran con valores nulos
*/
SELECT *
FROM Tipo_Usuario
LEFT JOIN Usuario ON Usuario.id_tipo_usuario = Tipo_Usuario.id_tipo;

/*Esta consulta convierte la tabla [Tipo_Servicio] en dominante y la tabla [Servicio] en
Subordinada, si hay filas en la tablas [Tipo_Servicio] que no tiene una fila en la tabla [Servicio]
se mostraran con valores nulos
*/

SELECT *
FROM Tipo_Servicio
LEFT JOIN Servicio ON Tipo_Servicio.id_tipo_servicio= Servicio.id_tipo_servicio;