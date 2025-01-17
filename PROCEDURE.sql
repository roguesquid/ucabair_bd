-- Listado de proveedores con los productos / servicios que ofrecen
CREATE OR REPLACE FUNCTION proveedores_productos()
RETURNS TABLE(persona_jur_razon_social VARCHAR(50), materia_p_nombre VARCHAR(50))
LANGUAGE plpgsql
AS $$
BEGIN
  RETURN QUERY
  SELECT Persona_Juridica.persona_jur_razon_social, Materia_Prima.materia_p_nombre
  FROM Persona_Juridica
  INNER JOIN proveedor ON proveedor.prov_fk_persona_juri = Persona_Juridica.persona_jur_codigo
  INNER JOIN Mate_P_Proveedor ON proveedor.cod_proveedor = Mate_P_Proveedor.FK_prov
  INNER JOIN Materia_Prima ON Materia_prima.materia_p_id = Mate_P_Proveedor.FK_materia_prima;
end
$$;

-- Lista de los ingresos al inventario por solicitudes a los proveedores.
CREATE OR REPLACE FUNCTION  ingresos_inventario_por_solicitudes_a_proveedores()
RETURNS TABLE(id INTEGER, producto VARCHAR(50), cantidad INTEGER, fecha TIMESTAMP, sede VARCHAR(50), proveedor VARCHAR(50))
LANGUAGE plpgsql
AS $$
BEGIN
  RETURN QUERY
  SELECT  detalle_orden_cod as id,
          materia_p_nombre as producto,
          detalle_orden_cantidad as cantidad,
          fecha_hora_inicio_estatus as fecha,
          sede_nombre as sede,
          persona_jur_razon_social as proveedor
  FROM Orden_De_Reposicion odr
  INNER JOIN Historico_Estatus_Orden heo ON odr.orden_id = heo.FK_orden_rep
  INNER JOIN Estatus_Orden eo ON heo.FK_estatus_orden = eo.estatus_ord_id
  INNER JOIN Detalle_Orden_Reposicion dor ON odr.orden_id = dor.FK_orden
  INNER JOIN Mate_P_Proveedor mpp ON dor.FK_mp_prov = mpp.materia_p_prov_id
  INNER JOIN Materia_Prima mp ON mpp.FK_materia_prima = mp.materia_p_id
  INNER JOIN Proveedor p ON mpp.FK_prov = p.cod_proveedor
  INNER JOIN Persona_Juridica pj ON p.prov_fk_persona_juri = pj.persona_jur_codigo
  INNER JOIN Contrato_De_Personal cdp ON odr.FK_contrato_per = cdp.contrato_codigo
  INNER JOIN Equipo e ON cdp.contrato_codigo = e.FK_cont_per
  INNER JOIN Zona z ON e.FK_zona = z.zona_id
  INNER JOIN Area a ON z.FK_area = a.area_id
  INNER JOIN Sede s ON a.FK_sede = s.sede_id
  WHERE eo.estatus_ord_nombre = 'Completada';
end
$$;

-- Lista de pagos realizados a los proveedores por período de tiempo.
CREATE OR REPLACE FUNCTION pagos_proveedores_por_periodo_proc(IN fecha_inicio DATE, IN fecha_fin DATE)
RETURNS TABLE(id INTEGER, nombre VARCHAR(50), fecha TIMESTAMP, monto DECIMAL(10, 2))
LANGUAGE plpgsql
AS $$
BEGIN
  RETURN QUERY
  SELECT odr_metodo_pago_id as id, persona_jur_razon_social as nombre,odr_metodo_pago_fecha as fecha, odr_metodo_pago_monto as monto
  FROM odr_metodo_pago omp
  INNER JOIN Orden_De_Reposicion odr ON omp.odr_metodo_pago_fk_orden = odr.orden_id
  INNER JOIN Detalle_Orden_Reposicion dor ON odr.orden_id = dor.FK_orden
  INNER JOIN Mate_P_Proveedor mpp ON dor.FK_mp_prov = mpp.materia_p_prov_id
  INNER JOIN Proveedor p ON mpp.FK_prov = p.cod_proveedor
  INNER JOIN Persona_Juridica pj ON p.prov_fk_persona_juri = pj.persona_jur_codigo
  WHERE odr_metodo_pago_fecha BETWEEN fecha_inicio AND fecha_fin;
end
$$;

-- Lista de modelos de avión con las piezas (formato que está en el enunciado)
CREATE OR REPLACE FUNCTION modelos_avion_piezas()
RETURNS TABLE(m_pieza_nombre VARCHAR(50), m_pieza_descripcion VARCHAR(200), modelo_avion_nombre VARCHAR(50))
LANGUAGE plpgsql
AS $$
BEGIN
  RETURN QUERY
  SELECT mp.m_pieza_nombre, mp.m_pieza_descripcion, ma.modelo_avion_nombre
  FROM Modelo_Pieza mp
  INNER JOIN Componente ON mp.m_pieza_id = Componente.componente_fk_pieza_principal
  INNER JOIN Modelo_Pieza mpDos ON Componente.componente_fk_pieza_componente = mpDos.m_pieza_id
  INNER JOIN ma_mp ON mp.m_pieza_id = ma_mp.ma_mp_fk_modelo_pieza
  INNER JOIN Modelo_Avion ma ON ma_mp.ma_mp_fk_modelo_avion = ma.modelo_avion_id;
end
$$;

--  Lista de modelos de avión con los tipos de prueba que se deben realizar para su construcción junto a los cargos involucración indicando la duración de cada una
CREATE OR REPLACE FUNCTION modelos_avion_pruebas_cargos()
RETURNS TABLE(modelo_avion_nombre VARCHAR(50), tipo_pa_nombre VARCHAR(50), tipo_pa_duracion INTERVAL, zona_nombre VARCHAR(50))
LANGUAGE plpgsql
AS $$
BEGIN
  RETURN QUERY
  SELECT Modelo_Avion.modelo_avion_nombre, tipo_prueba_avion.tipo_pa_nombre, tipo_prueba_avion.tipo_pa_duracion, Zona.zona_nombre
  FROM Modelo_Avion
  INNER JOIN tipo_prueba_avion ON modelo_avion_id = tipo_pa_fk_modelo_avion
  INNER JOIN Zona ON tipo_pa_fk_zona = zona_id;
end
$$;

-- Lista de empleados con su horario.
CREATE OR REPLACE FUNCTION empleados_horario()
RETURNS TABLE(nombre TEXT, lunes TEXT, martes TEXT, miercoles TEXT, jueves TEXT, viernes TEXT)
LANGUAGE plpgsql
AS $$
BEGIN
  CREATE VIEW horarios_por_empleado AS
    SELECT
      pn.persona_nat_p_nombre || ' ' || pn.persona_nat_p_apellido AS nombre_completo,
      h.horario_dia,
      h.horario_hora_inicio || '-' ||h.horario_hora_fin AS horario
    FROM Persona_Natural as pn
    INNER JOIN Empleado e ON pn.persona_nat_codigo = e.FK_persona_nat
    INNER JOIN Contrato_De_Personal cdp ON cdp.FK_empleado = e.cod_empleado
    INNER JOIN Contrato_Horario ch ON ch.FK_codigo_contrato = cdp.contrato_codigo
    INNER JOIN Horario h ON h.horario_codigo = ch.FK_codigo_horario;

  RETURN QUERY
  SELECT
      nombre_completo,
      MAX(CASE WHEN horario_dia = 'Lunes' THEN horario END) AS Lunes,
      MAX(CASE WHEN horario_dia = 'Martes' THEN horario END) AS Martes,
      MAX(CASE WHEN horario_dia = 'Miercoles' THEN horario END) AS Miercoles,
      MAX(CASE WHEN horario_dia = 'Jueves' THEN horario END) AS Jueves,
      MAX(CASE WHEN horario_dia = 'Viernes' THEN horario END) AS Viernes
  FROM
      horarios_por_empleado
  GROUP BY
      nombre_completo;

  DROP VIEW horarios_por_empleado;
end
$$;

--Lista de empleados con proyectos asignados. (pruebas y ensamble)
CREATE OR REPLACE FUNCTION empleados_proyectos_asignados()
RETURNS TABLE(nombre_completo TEXT, proyecto VARCHAR(80), tipo_proyecto TEXT)
LANGUAGE plpgsql
AS $$
BEGIN
  RETURN QUERY
  SELECT
    pn.persona_nat_p_nombre || ' ' || pn.persona_nat_p_apellido AS nombre_completo,
    tpp.tipo_pp_nombre AS proyecto,
    'Prueba de Pieza' AS tipo_proyecto
  FROM Persona_Natural as pn
  INNER JOIN Empleado e ON pn.persona_nat_codigo = e.FK_persona_nat
  INNER JOIN Empleado_Prueba_Pieza epp ON e.cod_empleado = epp.empleado_prueba_pieza_fk_empleado
  INNER JOIN Prueba_Pieza pp ON epp.empleado_prueba_pieza_fk_prueba_pieza = pp.prueba_pieza_id
  INNER JOIN Tipo_Prueba_Pieza tpp ON pp.prueba_pieza_fk_tipo_prueba = tpp.tipo_pp_id
  UNION
  SELECT
    pn.persona_nat_p_nombre || ' ' || pn.persona_nat_p_apellido AS nombre_completo,
    tpa.tipo_pa_nombre AS proyecto,
    'Prueba de Avion' AS tipo_proyecto
  FROM Persona_Natural as pn
  INNER JOIN Empleado e ON pn.persona_nat_codigo = e.FK_persona_nat
  INNER JOIN Empleado_Prueba_Avion epa ON e.cod_empleado = epa.fk_empleado
  INNER JOIN Prueba_Avion pa ON epa.fk_prueba_avion = pa.prueba_avion_id
  INNER JOIN tipo_prueba_avion tpa ON pa.prueba_avion_fk_tipo_p_avion = tpa.tipo_pa_id
  UNION
  SELECT
    pn.persona_nat_p_nombre || ' ' || pn.persona_nat_p_apellido AS nombre_completo,
    tpm.tipo_pm_nombre AS proyecto,
    'Prueba de Material' AS tipo_proyecto
  FROM Persona_Natural as pn
  INNER JOIN Empleado e ON pn.persona_nat_codigo = e.FK_persona_nat
  INNER JOIN Empleado_Prueba_Material epm ON e.cod_empleado = epm.fk_empleado
  INNER JOIN Prueba_Material pm ON epm.fk_prueba_material = pm.cod_prueb_map
  INNER JOIN Tipo_Prueba_Mate tpm ON pm.FK_tipo_pm = tpm.tipo_pm_id
  UNION
  SELECT
    pn.persona_nat_p_nombre || ' ' || pn.persona_nat_p_apellido AS nombre_completo,
    'Ensamble de Avion ' || modelo_avion_nombre AS proyecto,
    'Ensamble' AS tipo_proyecto
  FROM Persona_Natural as pn
  INNER JOIN Empleado e ON pn.persona_nat_codigo = e.FK_persona_nat
  INNER JOIN Contrato_De_Personal cdp ON cdp.FK_empleado = e.cod_empleado
  INNER JOIN Equipo eq ON cdp.contrato_codigo = eq.FK_cont_per
  INNER JOIN Avion_Equipo ae ON eq.codigo_equipo = ae.avion_equipo_fk_equipo
  INNER JOIN Avion a ON ae.avion_equipo_fk_avion = a.avion_id
  INNER JOIN Modelo_Avion ma ON a.avion_fk_modelo = ma.modelo_avion_id
  UNION
  SELECT
    pn.persona_nat_p_nombre || ' ' || pn.persona_nat_p_apellido AS nombre_completo,
    'Ensamble de Pieza ' || m_pieza_nombre AS proyecto,
    'Ensamble' AS tipo_proyecto
  FROM Persona_Natural as pn
  INNER JOIN Empleado e ON pn.persona_nat_codigo = e.FK_persona_nat
  INNER JOIN Contrato_De_Personal cdp ON cdp.FK_empleado = e.cod_empleado
  INNER JOIN Equipo eq ON cdp.contrato_codigo = eq.FK_cont_per
  INNER JOIN Pieza_Equipo pe ON eq.codigo_equipo = pe.pieza_equipo_fk_equipo
  INNER JOIN Pieza p ON pe.pieza_equipo_fk_pieza = p.pieza_id
  INNER JOIN Modelo_Pieza mp ON p.pieza_fk_modelo_p = mp.m_pieza_id;
end
$$;





--CREAR USUARIOS CLIENTE NATURAL
drop procedure if exists crear_usuario_cliente_natural;

CREATE OR REPLACE PROCEDURE crear_usuario_cliente_natural(
  IN persona_nat_rif VARCHAR(20),
  IN persona_nat_direccion_fiscal VARCHAR(70),
  IN persona_nat_ced NUMERIC, --ok
  IN persona_nat_p_nombre VARCHAR(30), --ok
  IN persona_nat_s_nombre VARCHAR(30), --ok
  IN persona_nat_p_apellido VARCHAR(30), --ok
  IN persona_nat_s_apellido VARCHAR(30), --ok
  IN persona_nat_fecha_nac DATE,
  IN FK_lugar_fiscal INTEGER,
  IN telefono_codigo_area VARCHAR(5),
  IN telefono_numero VARCHAR(9),
  IN correo_nombre VARCHAR(50), --ok
  IN usuario_nombre VARCHAR(50),
  IN usuario_contrasena VARCHAR(50)
)
LANGUAGE plpgsql
AS $$
BEGIN
  INSERT INTO Persona_Natural(persona_nat_rif, persona_nat_direccion_fiscal, persona_nat_cedula, persona_nat_p_nombre, persona_nat_s_nombre, persona_nat_p_apellido, persona_nat_s_apellido, persona_nat_fecha_nac, FK_lugar_fiscal)
  VALUES(persona_nat_rif, persona_nat_direccion_fiscal, persona_nat_ced, persona_nat_p_nombre, persona_nat_s_nombre, persona_nat_p_apellido, persona_nat_s_apellido, persona_nat_fecha_nac, FK_lugar_fiscal);

  INSERT INTO Cliente_Natural(FK_persona_nat, cliente_nat_fecha_inicio_op)
  VALUES(currval('persona_natural_persona_nat_codigo_seq'), CURRENT_DATE);

  INSERT INTO Telefono(telefono_codigo_area, telefono_numero, FK_persona_nat)
  VALUES(telefono_codigo_area, telefono_numero, (SELECT persona_nat_codigo FROM Persona_Natural WHERE persona_nat_ced = persona_nat_cedula));

  INSERT INTO Correo(correo_nombre, FK_persona_nat)
  VALUES(correo_nombre, currval('persona_natural_persona_nat_codigo_seq'));

  INSERT INTO usuario(usuario_nombre, usuario_contrasena, usuario_fk_persona_nat, usuario_fk_rol)
  VALUES(usuario_nombre, usuario_contrasena, currval('persona_natural_persona_nat_codigo_seq'), 9);

END
$$;

--CREAR USUARIOS CLIENTE Juridico
drop procedure if exists crear_usuario_cliente_juridico;

CREATE OR REPLACE PROCEDURE crear_usuario_cliente_juridico(
  IN persona_jur_rif VARCHAR(20), --ok
  IN persona_jur_direccion_fiscal VARCHAR(200), --ok
  IN persona_jur_razon_social VARCHAR(50),
  IN persona_jur_pagina_web VARCHAR(50),
  IN persona_jur_direccion_fisica VARCHAR(200), --ok
  IN pj_fk_lugar_fiscal INTEGER, --ok
  IN pj_fk_lugar_fisica INTEGER, --ok
  IN telefono_codigo_area VARCHAR(5), --ok
  IN telefono_numero VARCHAR(9), --ok
  IN correo_nombre VARCHAR(50), --ok
  IN usuario_nombre VARCHAR(50), --ok
  IN usuario_contrasena VARCHAR(50) --ok
)
LANGUAGE plpgsql
AS $$
BEGIN
  INSERT INTO Persona_Juridica(persona_jur_rif, persona_jur_direccion_fiscal, persona_jur_razon_social, persona_jur_pagina_web, persona_jur_direccion_fisica, pj_fk_lugar_fiscal, pj_fk_lugar_fisica, persona_jur_fecha_inicio_op)
  VALUES(persona_jur_rif, persona_jur_direccion_fiscal, persona_jur_razon_social, persona_jur_pagina_web, persona_jur_direccion_fisica, pj_fk_lugar_fiscal, pj_fk_lugar_fisica, CURRENT_DATE);

  INSERT INTO cliente_juridico(cj_fk_persona_juri)
  VALUES(currval('persona_juridica_persona_jur_codigo_seq'));

  INSERT INTO Telefono(telefono_codigo_area, telefono_numero, FK_persona_jur)
  VALUES(telefono_codigo_area, telefono_numero, currval('persona_juridica_persona_jur_codigo_seq'));

  INSERT INTO Correo(correo_nombre, FK_persona_jur)
  VALUES(correo_nombre, currval('persona_juridica_persona_jur_codigo_seq'));

  INSERT INTO usuario(usuario_nombre, usuario_contrasena, usuario_fk_persona_jur, usuario_fk_rol)
  VALUES(usuario_nombre, usuario_contrasena, currval('persona_juridica_persona_jur_codigo_seq'), 9);
end
$$;

---Crea las pruebas que se le deben hacer al avion (REVISADO)
CREATE OR REPLACE FUNCTION insertar_pruebas_avion()
RETURNS TRIGGER AS $$
DECLARE 
    record RECORD;
BEGIN
    FOR record IN 
        SELECT * FROM Tipo_Prueba_Avion WHERE tipo_pa_fk_modelo_avion = NEW.avion_fk_modelo 
    LOOP
        INSERT INTO Prueba_Avion (prueba_avion_id, prueba_avion_fk_avion, prueba_avion_fk_tipo_p_avion)
        VALUES ((SELECT COALESCE(MAX(P.prueba_avion_id),1)+1 FROM Prueba_Avion P), NEW.avion_id, record.tipo_pa_id);

        INSERT INTO Historico_Estatus_Prueba_Avion (
            hist_est_pru_avion_cod, fecha_hora_inicio_estatus, fecha_hora_fin_estatus, fk_prueba_avion, fk_estatus_prueb_avion
        ) VALUES (
            (SELECT COALESCE(MAX(H.hist_est_pru_avion_cod),1)+1 FROM Historico_Estatus_Prueba_Avion H),
            CURRENT_DATE, 
            NULL, 
            (SELECT MAX(P.prueba_avion_id) FROM Prueba_Avion P), 
            4 -- Valor por defecto para fk_estatus_prueb_avion para iniciar la prueba
        );
    END LOOP;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


 CREATE OR REPLACE TRIGGER trigger_insertar_pruebas_avion
AFTER INSERT ON avion
FOR EACH ROW
EXECUTE FUNCTION insertar_pruebas_avion();


-- -- Solicitar las piezas a las sedes correspondientes, luego de pedir el avion, e insertar en hist y estatus (ARREGLADO)
 CREATE OR REPLACE FUNCTION solicitar_piezas_avion()
RETURNS TRIGGER AS $$
DECLARE
    record RECORD;
BEGIN
    FOR record IN
        SELECT * FROM ma_mp X
        WHERE X.ma_mp_fk_modelo_avion = NEW.avion_fk_modelo
    LOOP
        INSERT INTO Pedido (
            pedido_id,
            pedido_fecha,
            pedido_subtotal,
            pedido_total,
            pedido_fk_cliente_jur,
            pedido_fk_cliente_nat,
            pedido_fk_sede,
            pedido_fk_historico_tasa_dolar
        )
        VALUES (
            (SELECT COALESCE(MAX(P.pedido_id),1)+1 FROM Pedido P),
            CURRENT_DATE,
            NULL,
            NULL,
            NULL,
            NULL,
            (SELECT A.fk_sede
             FROM Pieza P, Area A, Zona Z, Pieza_Zona PZ
             WHERE P.pieza_fk_modelo_p = record.ma_mp_fk_modelo_pieza
             AND PZ.pieza_zona_fk_pieza = P.pieza_id
             AND PZ.pieza_zona_fk_zona = Z.zona_id
             AND Z.fk_area = A.area_id),
            (SELECT MAX(HT.h_tasa_id) FROM Historico_Tasa_Dolar HT)
        );

        INSERT INTO Detalle_Pedido (
            detalle_pedido_id,
            detalle_pedido_cantidad,
            detalle_pedido_precio_unitario,
            detalle_pedido_fk_pedido,
            detalle_pedido_fk_avion,
            detalle_pedido_fk_pieza
        )
        VALUES (
            (SELECT COALESCE(MAX(D.detalle_pedido_id),1)+1 FROM Detalle_Pedido D), 
            10, 
            10, 
            (SELECT MAX(P.pedido_id) FROM Pedido P), 
            NULL, 
            record.ma_mp_fk_modelo_pieza
        );

        INSERT INTO Historico_Estatus_Pedido (
            historico_estatus_pedido_id,
            historico_estatus_pedido_fecha_hora_inicio,
            historico_estatus_pedido_fk_pedido,
            historico_estatus_pedido_fk_estatus_pedido
        )
        VALUES (
            (SELECT COALESCE(MAX(H.historico_estatus_pedido_id),1)+1 FROM Historico_Estatus_Pedido H),
            CURRENT_TIMESTAMP,
            (SELECT MAX(P.pedido_id) FROM Pedido P),
            1
        );

    END LOOP;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

 CREATE OR REPLACE TRIGGER trigger_solicitar_piezas_avion
 AFTER INSERT ON avion
 FOR EACH ROW
 EXECUTE FUNCTION solicitar_piezas_avion();


-- CRUD AVION
-- READ
CREATE OR REPLACE FUNCTION obtener_aviones()
RETURNS TABLE(id integer, nombre character varying, descripcion character varying, precio numeric)
LANGUAGE plpgsql
AS $$
BEGIN
  RETURN QUERY SELECT modelo_avion_id as id, modelo_avion_nombre as nombre, modelo_avion_descripcion as descripcion, modelo_avion_precio as precio
  FROM modelo_avion;
END
$$;

-- CREAR
CREATE OR REPLACE FUNCTION crear_modelo_avion(p_nombre VARCHAR(50), p_descripcion VARCHAR(200))
RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO modelo_avion(modelo_avion_nombre, modelo_avion_descripcion)
    VALUES(p_nombre, p_descripcion);
END
$$;

-- DELETE
CREATE OR REPLACE FUNCTION eliminar_modelo_avion(p_id INT)
RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM modelo_avion
    WHERE modelo_avion_id = p_id;
END
$$;

-- Read
CREATE OR REPLACE FUNCTION obtener_avion(p_id INT)
RETURNS TABLE(id integer, nombre character varying, descripcion character varying)
LANGUAGE plpgsql
AS $$
BEGIN
  RETURN QUERY SELECT modelo_avion_id as id, modelo_avion_nombre as nombre, modelo_avion_descripcion as descripcion
  FROM modelo_avion
  WHERE modelo_avion_id = p_id;
END
$$;

-- UPDATE
CREATE OR REPLACE FUNCTION actualizar_modelo_avion(p_id INT, p_nombre VARCHAR(50), p_descripcion VARCHAR(200))
RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE modelo_avion
    SET modelo_avion_nombre = p_nombre, modelo_avion_descripcion = p_descripcion
    WHERE modelo_avion_id = p_id;
END
$$;

-- CRUD TIPO PRUEBAS
-- READ
CREATE OR REPLACE FUNCTION obtener_tipo_pruebas()
RETURNS TABLE(id integer, nombre VARCHAR(50), duracion INTERVAL, tipo text)
LANGUAGE plpgsql
AS $$
BEGIN
  RETURN QUERY
  SELECT tipo_pp_id as id, tipo_pp_nombre as nombre, tipo_pp_duracion as duracion, 'pieza' as tipo
  FROM tipo_prueba_pieza
  UNION
  SELECT tipo_pm_id as id, tipo_pm_nombre as nombre, tipo_pm_duracion as duracion, 'material' as tipo
  FROM tipo_prueba_mate
  UNION
  SELECT tipo_pa_id as id, tipo_pa_nombre as nombre, tipo_pa_duracion as duracion, 'avion' as tipo
  FROM tipo_prueba_avion;
END
$$;

CREATE OR REPLACE FUNCTION obtener_tipo_prueba(p_id INT, p_tipo TEXT)
RETURNS TABLE(id integer, nombre VARCHAR(50), duracion INTERVAL, tipo text)
LANGUAGE plpgsql
AS $$
BEGIN
  IF p_tipo = 'pieza' THEN
    RETURN QUERY
    SELECT tipo_pp_id as id, tipo_pp_nombre as nombre, tipo_pp_duracion as duracion, 'pieza' as tipo
    FROM tipo_prueba_pieza
    WHERE tipo_pp_id = p_id;
  ELSIF p_tipo = 'material' THEN
    RETURN QUERY
    SELECT tipo_pm_id as id, tipo_pm_nombre as nombre, tipo_pm_duracion as duracion, 'material' as tipo
    FROM tipo_prueba_mate
    WHERE tipo_pm_id = p_id;
  ELSE
    RETURN QUERY
    SELECT tipo_pa_id as id, tipo_pa_nombre as nombre, tipo_pa_duracion as duracion, 'avion' as tipo
    FROM tipo_prueba_avion
    WHERE tipo_pa_id = p_id;
  END IF;
END
$$;



-- DELETE
CREATE OR REPLACE FUNCTION eliminar_tipo_prueba(p_id INT, p_tipo TEXT)
RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN
    IF p_tipo = 'pieza' THEN
        DELETE FROM tipo_prueba_pieza
        WHERE tipo_pp_id = p_id;
    ELSIF p_tipo = 'material' THEN
        DELETE FROM tipo_prueba_mate
        WHERE tipo_pm_id = p_id;
    ELSE
        DELETE FROM tipo_prueba_avion
        WHERE tipo_pa_id = p_id;
    END IF;
END
$$;

-- CREATE
CREATE OR REPLACE FUNCTION crear_tipo_prueba(p_nombre VARCHAR(50), p_duracion INTERVAL, p_tipo TEXT, fk_zona INTEGER)
RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN
    IF p_tipo = 'pieza' THEN
        INSERT INTO tipo_prueba_pieza(tipo_pp_nombre, tipo_pp_duracion, FK_zona_tip_pru_pie)
        VALUES(p_nombre, p_duracion, fk_zona);
    ELSIF p_tipo = 'material' THEN
        INSERT INTO tipo_prueba_mate(tipo_pm_nombre, tipo_pm_duracion, FK_zona)
        VALUES(p_nombre, p_duracion, fk_zona);
    ELSE
        INSERT INTO tipo_prueba_avion(tipo_pa_nombre, tipo_pa_duracion, tipo_pa_fk_zona)
        VALUES(p_nombre, p_duracion, fk_zona);
    END IF;
END
$$;

-- UPDATE
CREATE OR REPLACE FUNCTION actualizar_tipo_prueba(p_id INT, p_nombre VARCHAR(50), p_duracion INTERVAL, p_tipo TEXT, fk_zonsa INTEGER)
RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN
    IF p_tipo = 'pieza' THEN
        UPDATE tipo_prueba_pieza
        SET tipo_pp_nombre = p_nombre, tipo_pp_duracion = p_duracion, FK_zona_tip_pru_pie = fk_zonsa
        WHERE tipo_pp_id = p_id;
    ELSIF p_tipo = 'material' THEN
        UPDATE tipo_prueba_mate
        SET tipo_pm_nombre = p_nombre, tipo_pm_duracion = p_duracion, FK_zona = fk_zonsa
        WHERE tipo_pm_id = p_id;
    ELSE
      UPDATE tipo_prueba_avion
        SET tipo_pa_nombre = p_nombre, tipo_pa_duracion = p_duracion, tipo_pa_fk_zona = fk_zonsa
        WHERE tipo_pa_id = p_id;
    END IF;
END
$$;

-- CRUD PROVEEDOR
-- READ
CREATE OR REPLACE FUNCTION obtener_proveedores()
RETURNS TABLE(id integer, nombre VARCHAR(50), rif VARCHAR(20), direccion_fiscal VARCHAR(200), pagina_web VARCHAR(50), calificacion INTEGER)
LANGUAGE plpgsql
AS $$
BEGIN
  RETURN QUERY
  SELECT cod_proveedor as id, persona_jur_razon_social as nombre, persona_jur_rif as rif, persona_jur_direccion_fiscal as direccion_fiscal, persona_jur_pagina_web as pagina_web, proveedor_calificacion as calificacion
  FROM proveedor
  INNER JOIN persona_juridica ON proveedor.prov_fk_persona_juri = persona_juridica.persona_jur_codigo;
END
$$;

-- READ

CREATE OR REPLACE FUNCTION obtener_proveedor(p_id INT)
RETURNS TABLE(id integer, nombre VARCHAR(50), rif VARCHAR(20), direccion_fiscal VARCHAR(200), pagina_web VARCHAR(50), calificacion INTEGER, lugar_nom VARCHAR(50))
LANGUAGE plpgsql
AS $$
BEGIN
  RETURN QUERY
  SELECT cod_proveedor as id, persona_jur_razon_social as nombre, persona_jur_rif as rif, persona_jur_direccion_fiscal as direccion_fiscal, persona_jur_pagina_web as pagina_web, proveedor_calificacion as calificacion, lugar_nombre as lugar_nom
  FROM proveedor
  INNER JOIN persona_juridica ON proveedor.prov_fk_persona_juri = persona_juridica.persona_jur_codigo
  INNER JOIN lugar ON persona_juridica.pj_fk_lugar_fiscal = lugar.lugar_codigo
  WHERE cod_proveedor = p_id;
END
$$;

-- UPDATE
CREATE OR REPLACE FUNCTION actualizar_proveedor(p_id INT, p_calificacion INT, p_jur_rif VARCHAR(20), p_jur_razon_social VARCHAR(50), p_jur_pagina_web VARCHAR(50), p_jur_direccion_fisica VARCHAR(200), lugar_nom VARCHAR(50))
RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE proveedor
    SET proveedor_calificacion = p_calificacion
    WHERE cod_proveedor = p_id;

    UPDATE persona_juridica
    SET persona_jur_rif = p_jur_rif, persona_jur_razon_social = p_jur_razon_social, persona_jur_pagina_web = p_jur_pagina_web, persona_jur_direccion_fisica = p_jur_direccion_fisica, persona_jur_direccion_fiscal = p_jur_direccion_fisica, pj_fk_lugar_fisica = (SELECT lugar_codigo FROM lugar WHERE lugar_tipo = 'parroquia' LIMIT 1), pj_fk_lugar_fiscal = (SELECT lugar_codigo FROM lugar WHERE lugar_tipo = 'parroquia' LIMIT 1)
    WHERE persona_jur_codigo = (SELECT prov_fk_persona_juri FROM proveedor WHERE cod_proveedor = p_id);
END
$$;

-- Crear proveedor
CREATE OR REPLACE FUNCTION crear_proveedor(p_calificacion INT, p_jur_rif VARCHAR(20), p_jur_razon_social VARCHAR(50), p_jur_pagina_web VARCHAR(50), p_jur_direccion_fisica VARCHAR(200), lugar_nom VARCHAR(50))
RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO persona_juridica(persona_jur_rif, persona_jur_razon_social, persona_jur_pagina_web, persona_jur_direccion_fisica, persona_jur_direccion_fiscal, pj_fk_lugar_fisica, pj_fk_lugar_fiscal, persona_jur_fecha_inicio_op)
    VALUES(p_jur_rif, p_jur_razon_social, p_jur_pagina_web, p_jur_direccion_fisica, p_jur_direccion_fisica, (SELECT lugar_codigo FROM lugar WHERE lugar_nombre = lugar_nom), (SELECT lugar_codigo FROM lugar WHERE lugar_tipo = 'parroquia' LIMIT 1), CURRENT_DATE);

    INSERT INTO proveedor(prov_fk_persona_juri, proveedor_calificacion)
    VALUES(currval('persona_juridica_persona_jur_codigo_seq'), p_calificacion);
END
$$;

-- DELETE
CREATE OR REPLACE FUNCTION eliminar_proveedor(p_id INT)
RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM persona_juridica
    WHERE persona_jur_codigo = (SELECT prov_fk_persona_juri FROM proveedor WHERE cod_proveedor = p_id);
    DELETE FROM proveedor
    WHERE cod_proveedor = p_id;
END
$$;

-- CRUD EMPLEADO
-- READ
CREATE OR REPLACE FUNCTION obtener_empleados()
RETURNS TABLE(id integer, cedula NUMERIC, nombre TEXT, fecha_nacimiento DATE, direccion VARCHAR(200))
LANGUAGE plpgsql
AS $$
BEGIN
  RETURN QUERY
  SELECT cod_empleado as id, persona_nat_cedula as cedula, persona_nat_p_nombre || ' ' || persona_nat_s_nombre || ' ' || persona_nat_p_apellido || ' ' || persona_nat_s_apellido as nombre, persona_nat_fecha_nac as fecha_nacimiento, persona_nat_direccion_fiscal as direccion
  FROM empleado
  INNER JOIN persona_natural ON empleado.FK_persona_nat = persona_natural.persona_nat_codigo;
END
$$;

CREATE OR REPLACE FUNCTION obtener_empleado(p_id INT)
RETURNS TABLE(id integer, cedula NUMERIC, nombre VARCHAR(30), sNombre VARCHAR(30), apellido VARCHAR(30), sApellido VARCHAR(30), fechanac DATE, direccion VARCHAR(200), rif VARCHAR(20), experiencia VARCHAR(200), lugar VARCHAR(30))
LANGUAGE plpgsql
AS $$
BEGIN
  RETURN QUERY
  SELECT cod_empleado as id, persona_nat_cedula as cedula, persona_nat_p_nombre as nombre, persona_nat_s_nombre as sNombre, persona_nat_p_apellido as apellido, persona_nat_s_apellido as sApellido, persona_nat_fecha_nac as fechanac, persona_nat_direccion_fiscal as direccion, persona_nat_rif as rif, empleado_exp_profesional as experiencia, lugar_nombre as lugar
  FROM empleado
  INNER JOIN persona_natural ON empleado.FK_persona_nat = persona_natural.persona_nat_codigo
  INNER JOIN lugar ON persona_natural.FK_lugar_fiscal = lugar.lugar_codigo
  WHERE cod_empleado = p_id;
END
$$;

-- UPDATE
CREATE OR REPLACE FUNCTION actualizar_empleado(p_id INT, p_cedula NUMERIC, p_p_nombre VARCHAR(30), p_s_nombre VARCHAR(30), p_p_apellido VARCHAR(30), p_s_apellido VARCHAR(30), p_fecha_nac DATE, p_direccion VARCHAR(200), p_rif VARCHAR(20), e_experiencia VARCHAR(200), lugar_nom VARCHAR(30))
RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE persona_natural
    SET persona_nat_cedula = p_cedula, persona_nat_p_nombre = p_p_nombre, persona_nat_s_nombre = p_s_nombre, persona_nat_p_apellido = p_p_apellido, persona_nat_s_apellido = p_s_apellido, persona_nat_fecha_nac = p_fecha_nac, persona_nat_direccion_fiscal = p_direccion,
    persona_nat_rif = p_rif,
    FK_lugar_fiscal = (SELECT lugar_codigo FROM lugar WHERE lugar_nombre = lugar_nom)
    WHERE persona_nat_codigo = (SELECT FK_persona_nat FROM empleado WHERE cod_empleado = p_id);
    UPDATE empleado
    SET empleado_exp_profesional = e_experiencia
    WHERE cod_empleado = p_id;
END
$$;

-- CREATE
CREATE OR REPLACE FUNCTION crear_empleado(p_cedula NUMERIC, p_p_nombre VARCHAR(30), p_s_nombre VARCHAR(30), p_p_apellido VARCHAR(30), p_s_apellido VARCHAR(30), p_fecha_nac DATE, p_direccion VARCHAR(200), p_rif VARCHAR(20), e_experiencia VARCHAR(200), lugar_nom VARCHAR(30))
RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO persona_natural(persona_nat_cedula, persona_nat_p_nombre, persona_nat_s_nombre, persona_nat_p_apellido, persona_nat_s_apellido, persona_nat_fecha_nac, persona_nat_direccion_fiscal, persona_nat_rif, FK_lugar_fiscal)
    VALUES(p_cedula, p_p_nombre, p_s_nombre, p_p_apellido, p_s_apellido, p_fecha_nac, p_direccion, p_rif, (SELECT lugar_codigo FROM lugar WHERE lugar_tipo = 'parroquia' LIMIT 1));

    INSERT INTO empleado(FK_persona_nat, empleado_exp_profesional)
    VALUES(currval('persona_natural_persona_nat_codigo_seq'), e_experiencia);
END
$$;

-- DELETE
CREATE OR REPLACE FUNCTION eliminar_empleado(p_id INT)
RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM persona_natural
    WHERE persona_nat_codigo = (SELECT FK_persona_nat FROM empleado WHERE cod_empleado = p_id);
    DELETE FROM empleado
    WHERE cod_empleado = p_id;
END
$$;

-- CRUD ROL
-- READ
CREATE OR REPLACE FUNCTION obtener_roles()
RETURNS TABLE(id integer, nombre VARCHAR(50), descripcion VARCHAR(300))
LANGUAGE plpgsql
AS $$
BEGIN
  RETURN QUERY
  SELECT rol_codigo as id, rol_nombre as nombre, rol_descripcion as descripcion
  FROM rol;
END
$$;

CREATE OR REPLACE FUNCTION obtener_rol(p_id INT)
RETURNS TABLE(id integer, nombre VARCHAR(50), descripcion VARCHAR(300))
LANGUAGE plpgsql
AS $$
BEGIN
  RETURN QUERY
  SELECT rol_codigo as id, rol_nombre as nombre, rol_descripcion as descripcion
  FROM rol
  WHERE rol_codigo = p_id;
END
$$;

-- UPDATE
CREATE OR REPLACE FUNCTION actualizar_rol(p_id INT, p_nombre VARCHAR(50), p_descripcion VARCHAR(300))
RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE rol
    SET rol_nombre = p_nombre, rol_descripcion = p_descripcion
    WHERE rol_codigo = p_id;
END
$$;

-- DELETE
CREATE OR REPLACE FUNCTION eliminar_rol(p_id INT)
RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM rol_privilegio
    WHERE rp_fk_rol = p_id;
    DELETE FROM rol
    WHERE rol_codigo = p_id;
END
$$;

-- CREATE
CREATE OR REPLACE FUNCTION crear_rol(p_nombre VARCHAR(50), p_descripcion VARCHAR(300))
RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO rol(rol_nombre, rol_descripcion)
    VALUES(p_nombre, p_descripcion);
END
$$;

 -- $$ LANGUAGE plpgsql;
--  Crear orden de reposicion de materia prima luego de un pedido cuando no hay en el inventario, e insertar en hist estatus (ARREGLADO)
CREATE OR REPLACE FUNCTION comprar_material() 
RETURNS TRIGGER AS $$
DECLARE
    record RECORD;
BEGIN
    FOR record IN 
        SELECT I.*
        FROM Inventario_Almacen I, Almacen A
        WHERE I.fk_almacen = A.almacen_id AND A.fk_sede = NEW.pedido_fk_sede
    LOOP
        RAISE NOTICE 'Verificando inventario: %', record.inv_alm_cant;
        IF record IS NULL THEN
            EXIT;
        ELSIF record.inv_alm_cant < 20 THEN
            INSERT INTO Orden_De_Reposicion (
                orden_id, 
                orden_fecha, 
                orden_subtotal, 
                orden_total, 
                fk_contrato_per, 
                fk_tasa_dolar
            )
            VALUES (
                (SELECT COALESCE(MAX(O.orden_id)+1, 1) FROM Orden_De_Reposicion O), 
                NEW.pedido_fecha, 
                NULL, 
                NULL, 
                NULL, 
                (SELECT MAX(HT.h_tasa_id) FROM Historico_Tasa_Dolar HT)
            );

            INSERT INTO Detalle_Orden_Reposicion (
                detalle_orden_cod, 
                detalle_orden_cantidad, 
                detalle_orden_precio_unitario, 
                fk_orden, 
                fk_mp_prov
            )
            VALUES (
                (SELECT COALESCE(MAX(detalle_orden_cod)+1, 1) FROM Detalle_Orden_Reposicion D), 
                100, 
                100, 
                (SELECT MAX(O.orden_id) FROM Orden_De_Reposicion O), 
                (SELECT MP.fk_prov FROM MATE_P_PROVEEDOR MP WHERE MP.fk_materia_prima = record.fk_mat_prim)
            );

            INSERT INTO Historico_Estatus_Orden (
                hist_est_ord_cod,
                fecha_hora_inicio_estatus,
                FK_orden_rep,
                FK_estatus_orden
            )
            VALUES (
                (SELECT COALESCE(MAX(H.hist_est_ord_cod)+1, 1) FROM Historico_Estatus_Orden H),
                CURRENT_TIMESTAMP,
                (SELECT MAX(O.orden_id) FROM Orden_De_Reposicion O),
                1
            );
        END IF;
    END LOOP;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE TRIGGER trigger_comprar_material
 AFTER INSERT ON Pedido
 FOR EACH ROW
 EXECUTE FUNCTION comprar_material();


-- Insertar las pruebas que se le deben hacer a las piezas luego de la insersion de un avion (ARREGLADO)
CREATE OR REPLACE FUNCTION insertar_pruebas_piezas()
RETURNS TRIGGER AS $$
DECLARE
    record RECORD;
    pieza RECORD;
    piez RECORD;
BEGIN
FOR piez IN
SELECT pieza_id from pieza 
inner join ma_mp on pieza_fk_modelo_p = ma_mp_fk_modelo_pieza
WHERE ma_mp_fk_modelo_avion = NEW.avion_fk_modelo
LOOP

INSERT INTO pieza_avion (pieza_avion_id,pieza_avion_fk_pieza, pieza_avion_fk_avion)
VALUES ((SELECT COALESCE(MAX(pieza_avion_id),1)+1 FROM pieza_avion),piez.pieza_id, new.avion_id);
END LOOP;

    FOR pieza IN 
        SELECT pieza_avion_fk_pieza FROM Pieza_Avion WHERE pieza_avion_fk_avion = NEW.avion_id
    LOOP
        FOR record IN 
            SELECT * FROM Tipo_Prueba_Pieza
        LOOP
            INSERT INTO Prueba_Pieza (prueba_pieza_id, prueba_pieza_fk_pieza, prueba_pieza_fk_tipo_prueba)
            VALUES ((SELECT COALESCE(MAX(P.prueba_pieza_id),1)+1 FROM Prueba_Pieza P), pieza.pieza_avion_fk_pieza, record.tipo_pp_id);

            INSERT INTO Historico_Estatus_Prueba_Pieza (
                hist_est_pru_piez_id, hist_est_pru_piez_fecha_hora_inicio, hist_est_pru_piez_fecha_hora_fin, hist_est_pru_piez_fk_prueba_pieza, hist_est_pru_piez_fk_estatus_prueba_pieza
            ) VALUES (
                (SELECT COALESCE(MAX(H.hist_est_pru_piez_id),1)+1 FROM Historico_Estatus_Prueba_Pieza H),
                CURRENT_DATE,
                NULL,
                (SELECT MAX(P.prueba_pieza_id) FROM Prueba_Pieza P),
                4 -- Valor por defecto para hist_est_pru_piez_fk_estatus_prueba_pieza para decir que no se han iniciado
            );
        END LOOP;
    END LOOP;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

 CREATE OR REPLACE TRIGGER trigger_insertar_pruebas_piezas
 AFTER INSERT ON AVION
 FOR EACH ROW
 EXECUTE FUNCTION insertar_pruebas_piezas();


CREATE OR REPLACE FUNCTION devolver_privilegios_por_id_usuario(id_usuario INT) RETURNS TABLE (
    nombre_permiso VARCHAR(50)
) AS $$
    SELECT p.privilegio_descripcion
    FROM privilegio p
    INNER JOIN rol_privilegio rp ON p.privilegio_codigo = rp.rp_fk_privilegio
    INNER JOIN usuario u ON u.usuario_fk_rol = rp.rp_fk_rol
    WHERE u.usuario_codigo = id_usuario;
$$ LANGUAGE SQL;





 CREATE OR REPLACE FUNCTION fabricacion_estatus_pieza()
RETURNS TABLE(id_pieza INTEGER,nombre_pieza VARCHAR(40), descripcion_pieza VARCHAR(40), nombre_sede VARCHAR(40), nombre_area VARCHAR(40), estatus_pieza VARCHAR(40))
LANGUAGE plpgsql
AS $$
BEGIN
 RETURN QUERY
SELECT DISTINCT  
pieza_id as id_pieza , 
m_pieza_nombre as nombre_pieza, 
m_pieza_descripcion as descripcion_pieza, 
sede_nombre as nombre_sede, 
area_nombre as nombre_area,
estatus_ped_nombre as estatus_pieza
FROM detalle_pedido dp,pieza_avion, modelo_pieza, pieza_zona
inner join pieza on pieza_zona_fk_pieza = pieza_id
inner join zona on pieza_zona_fk_zona = zona_id
inner join area on fk_area = area_id
inner join sede on fk_sede = sede_id
inner join pedido on sede_id = pedido_fk_sede
inner join historico_estatus_pedido on historico_estatus_pedido_fk_pedido = pedido_id
inner join estatus_pedido on historico_estatus_pedido_fk_estatus_pedido = estatus_ped_id 
Where pieza_id = m_pieza_id and pieza_avion_fk_pieza = pieza_id and detalle_pedido_fk_modelo_avion is null and dp.detalle_pedido_fk_pedido = pedido_id;
END
$$;



CREATE OR REPLACE FUNCTION ala_mas_utilizada()
RETURNS TABLE (
    pieza_id INTEGER,
    pieza_nombre VARCHAR(30),
    pieza_descripcion VARCHAR(40),
    total BIGINT 
)
LANGUAGE plpgsql
AS $$
BEGIN
 RETURN QUERY 
    SELECT mp.m_pieza_id as pieza_id, 
           mp.m_pieza_nombre as pieza_nombre, 
           mp.m_pieza_descripcion as pieza_descripcion, 
           count(*) as total
    FROM modelo_pieza mp
    INNER JOIN pieza p ON p.pieza_fk_modelo_p = mp.m_pieza_id
    INNER JOIN pieza_avion pa ON p.pieza_id = pa.pieza_avion_fk_pieza
    WHERE mp.m_pieza_nombre LIKE 'Ala%'
    GROUP BY mp.m_pieza_id, mp.m_pieza_nombre, mp.m_pieza_descripcion
    ORDER BY total DESC
    LIMIT 1;
    END
$$;



CREATE OR REPLACE FUNCTION obtener_inventario_fecha()
RETURNS TABLE(codigo INTEGER, stock INTEGER, direccion_almacen VARCHAR(40), nombre_sede VARCHAR(40),nombre_materiap VARCHAR(40), nombre_pieza VARCHAR(30), fecha_entrada_almacen DATE)
LANGUAGE plpgsql
AS $$
BEGIN
  RETURN QUERY
SELECT 
    ia.cod_inv_almacen as codigo, 
    ia.inv_alm_cant as stock, 
	a.almacen_direccion as direccion_almacen, 
    s.sede_nombre as nombre_sede, 
    mp.materia_p_nombre as nombre_materiap, 
    mop.m_pieza_nombre as nombre_pieza, 
    ia.fecha_entrada as fecha_entrada_almacen
FROM 
    inventario_almacen ia
    INNER JOIN almacen a ON ia.fk_almacen = a.almacen_id
    INNER JOIN sede s ON a.fk_sede = s.sede_id
    LEFT JOIN materia_prima mp ON ia.fk_mat_prim = mp.materia_p_id
    LEFT JOIN pieza p ON ia.fk_pieza = p.pieza_id
    LEFT JOIN modelo_pieza mop ON mop.m_pieza_id = p.pieza_fk_modelo_p
ORDER BY 
    ia.fecha_entrada DESC;
END
$$;

--Crea avion
CREATE OR REPLACE FUNCTION crear_avion(IN avion_matricula_d VARCHAR(20), IN p_modelo INTEGER)
RETURNS INTEGER
LANGUAGE plpgsql
AS $$
DECLARE
    avion_codigo INTEGER;
BEGIN
    INSERT INTO avion(avion_matricula, avion_fk_modelo)
    VALUES(avion_matricula_d, p_modelo);

    SELECT MAX(avion_id) INTO avion_codigo FROM avion;
    RETURN avion_codigo;
END
$$;

--Crea el pedido del avion
CREATE OR REPLACE FUNCTION crear_pedido_avion(IN cliente_id INTEGER, tipo_cliente TEXT)
RETURNS INTEGER
LANGUAGE plpgsql
AS $$
DECLARE
    pedido_codigo INTEGER;
BEGIN
    INSERT INTO Pedido(pedido_id,pedido_fecha, pedido_subtotal, pedido_total, pedido_fk_cliente_jur, pedido_fk_cliente_nat, pedido_fk_historico_tasa_dolar)
    VALUES((SELECT MAX(pedido_id)+1 FROM Pedido), CURRENT_DATE, NULL, NULL, CASE WHEN tipo_cliente = 'juridico' THEN cliente_id ELSE NULL END, CASE WHEN tipo_cliente = 'natural' THEN cliente_id ELSE NULL END, (SELECT MAX(h_tasa_id) FROM historico_tasa_dolar));

    SELECT MAX(pedido_id) INTO pedido_codigo FROM Pedido;
    RETURN pedido_codigo;
END
$$;

CREATE OR REPLACE FUNCTION crear_detalle_pedido_avion(IN cantidad INTEGER, IN pedido_id INTEGER, IN avions_id INTEGER)
RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO Detalle_Pedido(detalle_pedido_id,detalle_pedido_cantidad, detalle_pedido_precio_unitario, detalle_pedido_fk_pedido, detalle_pedido_fk_avion)
    VALUES((SELECT MAX(detalle_pedido_id)+1 FROM Detalle_Pedido),cantidad, (SELECT ma.modelo_avion_precio FROM avion a INNER JOIN modelo_avion ma ON a.avion_fk_modelo = ma.modelo_avion_id WHERE a.avion_id = avions_id), 
          pedido_id, avions_id);
END
$$;

CREATE OR REPLACE FUNCTION anadir_pago_tdc(IN monto NUMERIC, IN numero_tarjeta VARCHAR(16), IN fecha_vencimiento DATE, IN cvv VARCHAR(3), IN titular_id INTEGER, IN tipo_cliente TEXT, IN pedido_id INTEGER, IN banco_id INTEGER)
RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO tdc(tdc_metodo_pago_cod,tdc_numero_tarjeta, tdc_fecha_vencimiento, tdc_cvv,tdc_fk_persona_jur, tdc_fk_persona_nat, tdc_fk_banco)
    VALUES ((SELECT MAX(tdc_metodo_pago_cod)+1 FROM tdc),numero_tarjeta, fecha_vencimiento, cvv, CASE WHEN tipo_cliente = 'juridico' THEN titular_id ELSE NULL END, CASE WHEN tipo_cliente = 'natural' THEN titular_id ELSE NULL END, banco_id);

    INSERT INTO Pedido_Metodo_Pago(pedido_metodo_pago_fk_pedido, pedido_metodo_pago_fk_TDC, pedido_metodo_pago_monto, pedido_metodo_pago_fecha)
    VALUES (pedido_id, (SELECT MAX(tdc_id) FROM tdc), monto, CURRENT_DATE);
END
$$;

CREATE OR REPLACE FUNCTION anadir_pago_tdd(IN monto NUMERIC, IN numero_tarjeta VARCHAR(16), IN fecha_vencimiento DATE, IN cvv VARCHAR(3), IN titular_id INTEGER, IN tipo_cliente TEXT, IN pedido_id INTEGER, IN banco_id INTEGER)
RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO tdd(tdd_metodo_pago_cod, tdd_numero_tarjeta, tdd_fecha_vencimiento, tdd_cvv,tdd_fk_persona_jur, tdd_fk_persona_nat, tdd_fk_banco)
    VALUES ((SELECT MAX(tdd_metodo_pago_cod)+1 FROM tdd),numero_tarjeta, fecha_vencimiento, cvv, CASE WHEN tipo_cliente = 'juridico' THEN titular_id ELSE NULL END, CASE WHEN tipo_cliente = 'natural' THEN titular_id ELSE NULL END, banco_id);

    INSERT INTO Pedido_Metodo_Pago(pedido_metodo_pago_fk_pedido, pedido_metodo_pago_fk_TDD, pedido_metodo_pago_monto, pedido_metodo_pago_fecha)
    VALUES (pedido_id, (SELECT MAX(tdd_id) FROM tdd), monto, CURRENT_DATE);
END
$$;

CREATE OR REPLACE FUNCTION anadir_pago_cheque(IN monto NUMERIC, IN numero_cheque VARCHAR(8), IN banco_id INTEGER, IN titular_id INTEGER, IN tipo_cliente TEXT, IN pedido_id INTEGER)
RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO cheque(cheque_metodo_pago_cod,cheque_numero, cheque_fk_banco, cheque_fk_per_jur, cheque_fk_per_nat)
    VALUES ((SELECT MAX(cheque_metodo_pago_cod)+1 FROM cheque),numero_cheque, banco_id, CASE WHEN tipo_cliente = 'juridico' THEN titular_id ELSE NULL END, CASE WHEN tipo_cliente = 'natural' THEN titular_id ELSE NULL END);

    INSERT INTO Pedido_Metodo_Pago(pedido_metodo_pago_fk_pedido, pedido_metodo_pago_fk_cheque, pedido_metodo_pago_monto, pedido_metodo_pago_fecha)
    VALUES (pedido_id, (SELECT MAX(cheque_id) FROM cheque), monto, CURRENT_DATE);
END
$$;

CREATE OR REPLACE FUNCTION anadir_pago_efectivo(IN monto NUMERIC, IN titular_id INTEGER, IN tipo_cliente TEXT, IN pedido_id INTEGER, IN denominacion VARCHAR(20), IN cantidad_piezas INTEGER)
RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO efectivo(efectivo_metodo_pago_cod,efectivo_denominacion, efectivo_cant_piezas, efectivo_fk_per_jur, efectivo_fk_per_nat)
    VALUES ((SELECT MAX(efectivo_metodo_pago_cod)+1 FROM efectivo),denominacion, cantidad_piezas, CASE WHEN tipo_cliente = 'juridico' THEN titular_id ELSE NULL END, CASE WHEN tipo_cliente = 'natural' THEN titular_id ELSE NULL END);

    INSERT INTO Pedido_Metodo_Pago(pedido_metodo_pago_fk_pedido, pedido_metodo_pago_fk_efectivo, pedido_metodo_pago_monto, pedido_metodo_pago_fecha)
    VALUES (pedido_id, (SELECT MAX(efectivo_metodo_pago_cod) FROM efectivo), monto, CURRENT_DATE);
END
$$;

