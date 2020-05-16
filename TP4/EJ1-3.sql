--Indicar la cantidad de películas que han sido entregadas en 2006 por un distribuidor
--nacional. Trate de resolverlo utilizando ensambles.

set search_path = unc_esq_peliculas;

select count(codigo_pelicula)
from renglon_entrega re
    join entrega e on (re.nro_entrega = e.nro_entrega)
    join distribuidor d on (e.id_distribuidor = d.id_distribuidor)
where extract(year from fecha_entrega)=2006
and tipo='N';


