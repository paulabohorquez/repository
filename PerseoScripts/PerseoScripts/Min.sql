-- Consulta que muestra el mínimo valor del campo tipo de la tabla Tipo_Habitacion
SELECT tipo,min(precio) AS HabitacionMasBarata FROM Tipo_Habitacion;
-- Consulta que muestra el mínimo valor del campo tipo de la tabla Tipo_Servicio
SELECT tipo,min(precio) AS ServicioMasBarato FROM Tipo_Servicio