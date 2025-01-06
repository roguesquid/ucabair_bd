-- Listado de proveedores con los productos / servicios que ofrecen
CREATE PROCEDURE proveedores_productos()
LANGUAGE plpgsql
AS $$
BEGIN
  SELECT persona_jur_razon_social, materia_p_nombre
  FROM Persona_Juridica
  INNER JOIN proveedor ON proveedor.prov_fk_persona_juri = Persona_Juridica.persona_jur_codigo
  INNER JOIN Mate_P_Proveedor ON proveedor.cod_proveedor = Mate_P_Proveedor.FK_prov
  INNER JOIN Materia_Prima ON Materia_prima.materia_p_id = Mate_P_Proveedor.FK_materia_prima;
end
$$;

-- Lista de los ingresos al inventario por solicitudes a los proveedores.
CREATE PROCEDURE  ingresos_inventario_por_solicitudes_a_proveedores()
LANGUAGE plpgsql
AS $$
BEGIN
  SELECT detalle_orden_cod as id, materia_p_nombre as producto,detalle_orden_cantidad as cantidad, fecha_hora_inicio_estatus as fecha, sede_nombre as sede, persona_jur_razon_social as proveedor
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
CREATE PROCEDURE pagos_proveedores_por_periodo(IN fecha_inicio DATE, IN fecha_fin DATE)
LANGUAGE plpgsql
AS $$
BEGIN
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
CREATE PROCEDURE modelos_avion_piezas()
LANGUAGE plpgsql
AS $$
BEGIN
  SELECT mp.m_pieza_nombre, mp.m_pieza_descripcion, ma.modelo_avion_nombre
  FROM Modelo_Pieza mp
  INNER JOIN Componente ON mp.m_pieza_id = Componente.componente_fk_pieza_principal
  INNER JOIN Modelo_Pieza mpDos ON Componente.componente_fk_pieza_componente = mpDos.m_pieza_id
  INNER JOIN ma_mp ON mp.m_pieza_id = ma_mp.ma_mp_fk_modelo_pieza
  INNER JOIN Modelo_Avion ma ON ma_mp.ma_mp_fk_modelo_avion = ma.modelo_avion_id;
end
$$;

--  Lista de modelos de avión con los tipos de prueba que se deben realizar para su construcción junto a los cargos involucración indicando la duración de cada una

CREATE PROCEDURE modelos_avion_pruebas_cargos()
LANGUAGE plpgsql
AS $$
BEGIN
  SELECT modelo_avion_nombre, tipo_pa_nombre, tipo_pa_duracion, zona_nombre
  FROM Modelo_Avion
  INNER JOIN tipo_prueba_avion ON modelo_avion_id = tipo_pa_fk_modelo_avion
  INNER JOIN Zona ON tipo_pa_fk_zona = zona_id;
end
$$;

-- Lista de empleados con su horario.
CREATE PROCEDURE empleados_horario()
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
CREATE PROCEDURE empleados_proyectos_asignados()
LANGUAGE plpgsql
AS $$
BEGIN
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

CREATE PROCEDURE crear_usuario_cliente_juridico(
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

--Crea las pruebas que se le deben hacer al avion
CREATE OR REPLACE FUNCTION insertar_pruebas_avion() RETURNS TRIGGER AS $$
DECLARE 
   record RECORD;
BEGIN
   FOR record IN SELECT tipo_pa_fk_modelo_avion FROM Tipo_Prueba_Avion WHERE tipo_pa_fk_modelo_avion = NEW.avion_fk_modelo 
   LOOP
      INSERT INTO Prueba_Avion (prueba_avion_id, prueba_avion_fk_avion, prueba_avion_fk_tipo_p_avion) 
      VALUES ((SELECT MAX(P.prueba_avion_id)+1 FROM Prueba_Avion P), NEW.avion_id, record.tipo_pa_fk_modelo_avion);
   END LOOP;
   RETURN NEW;
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_insertar_pruebas_avion
AFTER INSERT ON avion
FOR EACH ROW
EXECUTE FUNCTION insertar_pruebas_avion();

-- Solicitar las piezas a las sedes correspondientes, luego de pedir el avion
CREATE OR REPLACE FUNCTION solicitar_piezas_avion() RETURNS TRIGGER AS $$
DECLARE 
   record RECORD;
BEGIN
   FOR record IN SELECT * FROM ma_mp X WHERE X.ma_mp_fk_modelo_avion = NEW.avion_fk_modelo
   LOOP
      INSERT INTO Pedido (pedido_id, pedido_fecha, pedido_subtotal, pedido_total, pedido_fk_cliente_jur, pedido_fk_cliente_nat, pedido_fk_sede, pedido_fk_historico_tasa_dolar)
      VALUES ((SELECT MAX(P.pedido_id)+1 FROM Pedido P), '2025-07-01', NULL, NULL, NULL, NULL, (
      SELECT A.fk_sede 
      FROM Pieza P, Area A, Zona Z, Pieza_Zona PZ
      WHERE P.pieza_fk_modelo_p = record.ma_mp_fk_modelo_pieza AND PZ.pieza_zona_fk_pieza = P.pieza_id AND PZ.pieza_zona_fk_zona = Z.zona_id AND Z.fk_area = A.area_id 
      ), (SELECT MAX(HT.h_tasa_id) FROM Historico_Tasa_Dolar HT));     
   END LOOP;
   RETURN NEW;    
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_solicitar_piezas_avion
AFTER INSERT ON avion
FOR EACH ROW
EXECUTE FUNCTION solicitar_piezas_avion();
