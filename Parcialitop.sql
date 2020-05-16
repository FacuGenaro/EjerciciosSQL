select id_departamento, count(id_empleado)
from unc_esq_peliculas.empleado
group by (id_departamento);

select id_departamento, id_distribuidor, count(*)
from unc_esq_peliculas.empleado e
group by id_departamento, id_distribuidor;

select id_director
from unc_esq_voluntario.institucion
where id_director is not null
order by id_director desc limit 2;