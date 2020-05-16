--Listar, para cada ciudad, el nombre de la ciudad y la cantidad de empleados mayores de
--edad que desempeñan tareas en departamentos de la misma y que posean al menos 30 empleados.
set search_path = unc_esq_peliculas;

select c.nombre_ciudad, count(e.id_empleado)
from ciudad c
    join departamento d on c.id_ciudad = d.id_ciudad
    join empleado e on d.id_distribuidor = e.id_distribuidor and d.id_departamento = e.id_departamento
where (2011 - extract(year from e.fecha_nacimiento) >17)
group by c.nombre_ciudad
having count(e.id_empleado) >= 30;
