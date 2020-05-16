--Listar todas las películas que poseen entregas de
--películas de idioma inglés durante el año 2006.

set search_path = unc_esq_peliculas;

select titulo, idioma
from pelicula p
where p.idioma = 'Inglés'
    and p.codigo_pelicula in (select codigo_pelicula
        from renglon_entrega re
        where re.cantidad > 0
            and nro_entrega in(
                select e.nro_entrega
                from entrega e
                where extract(year from e.fecha_entrega) = 2006));

--con join

select p.titulo, p.idioma
from pelicula p
    join renglon_entrega re on p.codigo_pelicula = re.codigo_pelicula
    join entrega e on re.nro_entrega = e.nro_entrega
where p.idioma = 'Inglés' and re.cantidad > 0 and extract(year from e.fecha_entrega) = 2006