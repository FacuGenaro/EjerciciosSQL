--Indicar la cantidad de películas entregadas en los últimos 5 años, por género

set search_path = unc_esq_peliculas;

select distinct p.genero, sum(re.cantidad)
from pelicula p
    join renglon_entrega re on p.codigo_pelicula = re.codigo_pelicula
    join entrega e on re.nro_entrega = e.nro_entrega
where extract(year from fecha_entrega) >= (2007)
group by p.genero;
