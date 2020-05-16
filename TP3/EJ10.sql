--Muestre el apellido, nombre y mail de todos los voluntarios cuyo
--teléfono comienza con +51. Coloque el encabezado de las columnas de
--los títulos 'Apellido y Nombre' y 'Dirección de mail'.

select apellido ||', ' || nombre AS "Apellido y nombre", e_mail AS "Email"
from unc_esq_voluntario.voluntario
where (telefono like '+51%');