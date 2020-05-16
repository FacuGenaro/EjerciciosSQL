--Listar la cantidad de películas que hay por cada idioma.

select idioma, count(codigo_pelicula)
from unc_esq_peliculas.pelicula
group by idioma;