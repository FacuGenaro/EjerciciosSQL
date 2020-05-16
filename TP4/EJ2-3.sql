--Escriba una consulta para mostrar el apellido, nombre y fecha de nacimiento de cualquier
--voluntario que trabaje en la misma institución que el Sr. Zlotkey.
--Excluya del resultado a Zlotkey.

set search_path = unc_esq_voluntario;

select v.nombre, v.apellido, v.id_institucion --, v.fecha_nacimiento
from voluntario v
where (v.apellido <> 'Zlotkey') and v.id_institucion = (
    --puedo poner un = en vez de un in porque esto me retorna solo una row
    select v2.id_institucion
    from voluntario v2
    where (v2.apellido = 'Zlotkey')
    )
