--Calcular la cantidad de empleados por departamento.

select id_departamento, count(id_empleado) as Cantidad
from unc_esq_peliculas.empleado
group by id_departamento;