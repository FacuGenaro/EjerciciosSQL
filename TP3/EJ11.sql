--Hacer un listado de los cumpleaños de todos los empleados donde se muestre el
--nombre y el apellido (concatenados y separados por una coma) y su fecha de
--cumpleaños (solo el día y el mes), ordenado de acuerdo al mes y día de cumpleaños
--en forma ascendente.

select nombre ||','|| apellido as "Nombre y apellido",
       extract(month from fecha_nacimiento) ||'-'|| extract(day from fecha_nacimiento) as "mes, dia",
       fecha_nacimiento
from unc_esq_peliculas.empleado
order by extract(month from fecha_nacimiento), extract(day from fecha_nacimiento);