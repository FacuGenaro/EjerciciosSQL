--Liste los 3 países donde residan las productoras con mayor cantidad de
--películas producidas
set search_path = unc_esq_peliculas;

select *
from pais p
    join ciudad c on p.id_pais = c.id_pais
    join empresa_productora ep on c.id_ciudad = ep.id_ciudad
    join pelicula p2 on ep.codigo_productora = p2.codigo_productora
    join renglon_entrega re on p2.codigo_pelicula = re.codigo_pelicula
where (re.cantidad)



;








--¿cuál sería la consulta SQL que permite listar los id de
--las direcciones y la cantidad de instituciones que hay en
--cada una, sólo si son más de 10 instituciones y tomando en
--cuenta sólo las direcciones que tienen registrada la
--provincia.

set search_path = unc_esq_voluntario;

select d.id_direccion, count(i.nombre_institucion)
from direccion d
    join institucion i on d.id_direccion = i.id_direccion
where i.id_direccion in (
        select id_direccion
        from direccion
        where provincia is not null
    )
group by d.id_direccion
having count(i.nombre_institucion) >= 10

