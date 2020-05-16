--Liste las películas que nunca han sido entregadas por un distribuidor nacional.

set search_path = unc_esq_peliculas;

select titulo, tipo
from pelicula p
    join renglon_entrega re on (p.codigo_pelicula = re.codigo_pelicula)
    join entrega e on (re.nro_entrega = e.nro_entrega)
    join distribuidor d on (e.id_distribuidor = d.id_distribuidor)
where tipo = 'I';