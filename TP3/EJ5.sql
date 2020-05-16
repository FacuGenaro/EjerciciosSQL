--Muestre el apellido y el identificador de la tarea de todos los
-- voluntarios que no tienen coordinador.

select apellido, id_tarea
from unc_esq_voluntario.voluntario
where id_coordinador is null;