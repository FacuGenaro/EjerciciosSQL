--Determine la cantidad de coordinadores en cada país, agrupados por nombre de
--país y nombre de continente. Etiquete la primer columna como 'Número de coordinadores

set search_path = unc_esq_voluntario;

select count(v.id_coordinador) as Numero_de_coordinadores, p.nombre_pais, c.nombre_continente
from voluntario v
    join institucion i on v.id_institucion = i.id_institucion
    join direccion d on i.id_direccion = d.id_direccion
    join pais p on d.id_pais = p.id_pais
    join continente c on p.id_continente = c.id_continente
where v.id_coordinador is not null
group by c.nombre_continente, p.nombre_pais

