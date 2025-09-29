create or replace function pago_arriendo(v_rol propiedad.rol%type)
return number
is
    v_tipo propiedad.tipo%type;
    v_promedio number;
    v_resultado number;
begin
    select tipo into v_tipo from propiedad where rol = v_rol;
    
    select avg(valor_diario) into v_promedio
    from propiedad
    where tipo = v_tipo;

    v_resultado := v_promedio * 2;
    return v_resultado;

exception
    when no_data_found then
        return 0;
end;


create or replace function pago_arriendo(v_rol propiedad.rol%TYPE)
return number

is
    v_tipo propiedad.tipo%TYPE;
    v_promedio number;
    v_resultado number;
begin
    select tipo into v_tipo from propiedad where rol = v_rol;
    select avg(valor_diario) into v_promedio from propiedad where tipo = v_tipo;
    v_resultado := v_promedio*2;
    return v_resultado;
exception
    when not_data_found then
        return 0;
end;

create or replace function codigo_depto(p_ubi char)
return number;

is
    numero
