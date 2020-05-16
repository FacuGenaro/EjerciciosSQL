--Determinar los jefes que poseen personal a cargo y cuyos departamentos se
--encuentren en la Argentina.

set search_path = unc_esq_peliculas;

--select distinct e.nombre, e.id_jefe, j.nombre, j.id_empleado, j.id_jefe, d.jefe_departamento, p.nombre_pais
select distinct e.id_jefe
from empleado e
    join empleado j on e.id_jefe = j.id_empleado
    join departamento d on j.id_departamento = d.id_departamento and j.id_distribuidor = d.id_distribuidor
        --Este and va porque la pk en realidad es compuesta, entonces está en ambas tablas dos veces
    join ciudad c on d.id_ciudad = c.id_ciudad
    join pais p on c.id_pais = p.id_pais
where p.nombre_pais = 'ARGENTINA';



