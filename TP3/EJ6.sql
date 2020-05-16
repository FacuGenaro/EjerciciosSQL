--Muestre los datos de los distribuidores internacionales que no
-- tienen registrado teléfono.

select nombre, id_distribuidor, tipo, telefono
from unc_esq_peliculas.distribuidor
where (tipo = 'I' and telefono is null);