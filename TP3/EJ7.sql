--Muestre los apellidos, nombres y mails de los empleados con cuentas
--de gmail y cuyo sueldo sea superior a $ 1000.

select apellido, nombre, e_mail
from unc_esq_peliculas.empleado
where ((e_mail like '%@gmail.com') and (sueldo > 1000))