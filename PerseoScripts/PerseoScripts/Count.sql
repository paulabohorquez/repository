-- Consulta que muestra el conteo de los usuarios en el sistema
SELECT count(id_usuario) AS CantidadUsuarios FROM Usuario;
-- Consulta que muestra el conteo de los tipos de servicio en el sistema
SELECT count(tipo) AS CantidadServicios FROM Tipo_Servicio