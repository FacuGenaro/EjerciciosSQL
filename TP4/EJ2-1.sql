--Muestre, para cada institución, su nombre y la cantidad de voluntarios que realizan
--aportes. Ordene el resultado por nombre de institución.

set search_path = unc_esq_voluntario;

select i.nombre_institucion, count(v.nro_voluntario)
from voluntario v
    join institucion i on v.id_institucion = i.id_institucion
where v.horas_aportadas > 0
group by i.nombre_institucion
order by i.nombre_institucion
