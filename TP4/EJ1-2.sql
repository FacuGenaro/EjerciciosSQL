--Indicar los departamentos que no posean empleados cuya diferencia de
--sueldo máximo y mínimo (asociado a la tarea que realiza) no supere
--el 30% del sueldo máximo.

set search_path = unc_esq_peliculas;

select d.nombre
from departamento d
    join empleado e on (d.id_departamento = e.id_departamento)
    join tarea t on (e.id_tarea = t.id_tarea)
where (t.sueldo_maximo - t.sueldo_minimo )<= (t.sueldo_maximo*0.3);
