--Recupere la cantidad mínima, máxima y promedio de horas aportadas por los
--voluntarios nacidos desde 1990.

select min(horas_aportadas) as "min", max(horas_aportadas) as "max",
       avg(horas_aportadas) as "avg"
from unc_esq_voluntario.voluntario
where extract(year from fecha_nacimiento) >= 1990;