--Muestre el nombre, apellido y el teléfono de todos los empleados
-- cuyo id_tarea sea 7231, ordenados por apellido y nombre.

select apellido, nombre, telefono
from unc_esq_peliculas.empleado where id_tarea = '7231'
order by apellido asc, nombre asc;