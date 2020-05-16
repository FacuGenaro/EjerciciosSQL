--Mostrar los códigos de películas que han recibido entre 3 y 5 entregas.
--(cantidad de entregas NO cantidad de películas entregadas)

select codigo_pelicula, count(nro_entrega) as "cantidad entregas"
from unc_esq_peliculas.renglon_entrega
group by codigo_pelicula
having (count(nro_entrega) between 3 and 5);