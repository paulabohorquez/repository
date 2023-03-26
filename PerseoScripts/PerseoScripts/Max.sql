-- Consulta que muestra el maximo valor del campo tipo de la tabla Tipo_Habitacion
SELECT tipo,max(precio) AS HabitacionMasCara FROM Tipo_Habitacion;
-- Consulta que muestra el maximo valor del campo tipo de la tabla Tipo_Servicio
SELECT tipo,max(precio) AS ServicioMasCaro FROM Tipo_Servicio