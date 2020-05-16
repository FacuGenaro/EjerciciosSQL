--Cree una consulta para mostrar los números de voluntarios y los apellidos de todos los
--voluntarios cuya cantidad de horas aportadas sea mayor que la media de las horas aportadas.
-- Ordene los resultados por horas aportadas en orden ascendente.

set search_path = unc_esq_voluntario;

select v.nro_voluntario, v.apellido, v.horas_aportadas
from voluntario v
where v.horas_aportadas > (
    --puedo poner un > en vez de cualquier otra cosa porque me retorna solo 1 row
    select avg(v2.horas_aportadas)
    from voluntario v2
    )
order by v.horas_aportadas