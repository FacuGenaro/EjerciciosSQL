--Muestre apellido e identificador de todos los empleados que no
-- cobran porcentaje de comisión.

select apellido, id_empleado
from unc_esq_peliculas.empleado
where porc_comision is null;