--Liste el apellido y nombre de los empleados que pertenecen aquellos departamentos
-- residentes en el país y donde el jefe de departamento posee más del 10% de comisión.

set search_path = unc_esq_peliculas;

select e.apellido, e.nombre
from empleado e
    join departamento d on (e.id_departamento = d.id_departamento) and (e.id_distribuidor = d.id_distribuidor)
    join ciudad c on (d.id_ciudad = c.id_ciudad)
    join pais p on (c.id_pais = p.id_pais)
where p.nombre_pais = 'ARGENTINA' and d.jefe_departamento in (
    select id_empleado
    from empleado j
    where j.porc_comision > 10
    );