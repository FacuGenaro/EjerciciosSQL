--Realizar un resumen de entregas por día, indicando el video club al cual se le realizó
--la entrega y la cantidad entregada. Ordenar el resultado por fecha.

set search_path = unc_esq_peliculas;

select e.id_video as videoclub, sum(re.cantidad) as cantidad, e.fecha_entrega
from renglon_entrega re
    join entrega e on re.nro_entrega = e.nro_entrega
group by e.id_video, e.fecha_entrega
order by e.fecha_entrega asc;
