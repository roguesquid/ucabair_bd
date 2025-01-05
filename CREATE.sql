-- DROP DATABASE IF EXISTS UCABAIR;
-- CREATE DATABASE UCABAIR;

CREATE TABLE lugar(
    lugar_codigo SERIAL,
    lugar_nombre VARCHAR(50) NOT NULL,
    lugar_tipo VARCHAR(20) NOT NULL,
    lugar_fk_lugar INTEGER,
    CONSTRAINT pk_lugar PRIMARY KEY(lugar_codigo),
    CONSTRAINT fk_lugar FOREIGN KEY(lugar_fk_lugar) REFERENCES lugar(lugar_codigo)
);

CREATE TABLE Persona_Juridica (
    persona_jur_codigo SERIAL,
    persona_jur_rif VARCHAR(20) NOT NULL UNIQUE,
    persona_jur_direccion_fiscal VARCHAR(200),
    persona_jur_razon_social VARCHAR(50),
    persona_jur_pagina_web VARCHAR(50),
    persona_jur_direccion_fisica VARCHAR(200),
    pj_fk_lugar_fiscal INTEGER,
    pj_fk_lugar_fisica INTEGER,
    persona_jur_fecha_inicio_op DATE,
    CONSTRAINT pk_persona_juridica PRIMARY KEY(persona_jur_codigo),
    CONSTRAINT fk_lugar_fiscal FOREIGN KEY(pj_fk_lugar_fiscal) REFERENCES lugar(lugar_codigo),
    CONSTRAINT fk_lugar_fisica FOREIGN KEY(pj_fk_lugar_fisica) REFERENCES lugar(lugar_codigo)
);

CREATE TABLE cliente_juridico(
    cod_cliente_juri SERIAL,
    cj_fk_persona_juri INTEGER,
    CONSTRAINT pk_cliente_juridico PRIMARY KEY(cod_cliente_juri),
    CONSTRAINT fk_persona_juri FOREIGN KEY(cj_fk_persona_juri) REFERENCES Persona_Juridica(persona_jur_codigo)
);

CREATE TABLE proveedor(
    cod_proveedor SERIAL,
    prov_fk_persona_juri INTEGER NOT NULL,
    proveedor_calificacion INTEGER NOT NULL, --debe ir entre 0 y 10
    CONSTRAINT pk_proveedor PRIMARY KEY(cod_proveedor),
    CONSTRAINT fk_persona_juri FOREIGN KEY(prov_fk_persona_juri) REFERENCES Persona_Juridica(persona_jur_codigo),
    CONSTRAINT ck_proveedor_calificacion CHECK(proveedor_calificacion >= 0 AND proveedor_calificacion <= 10)
);

CREATE TABLE Persona_Natural (
    persona_nat_codigo SERIAL,
    persona_nat_rif VARCHAR(20) NOT NULL UNIQUE,
    persona_nat_direccion_fiscal VARCHAR(70) NOT NULL,
    persona_nat_cedula NUMERIC NOT NULL UNIQUE,
    persona_nat_p_nombre VARCHAR(30) NOT NULL,
    persona_nat_s_nombre VARCHAR(30),
    persona_nat_p_apellido VARCHAR(30) NOT NULL,
    persona_nat_s_apellido VARCHAR(30),
    persona_nat_fecha_nac DATE NOT NULL,
    FK_lugar_fiscal INTEGER NOT NULL,
    Constraint PK_persona_natural primary key (persona_nat_codigo),
    Constraint FK_lugar_pers_nat foreign key (FK_lugar_fiscal) references Lugar(lugar_codigo)
);

CREATE TABLE Cliente_Natural (
    cod_client_nat SERIAL,
    FK_persona_nat INTEGER NOT NULL,
    cliente_nat_fecha_inicio_op DATE NOT NULL,
    Constraint PK_cliente_natural primary key (cod_client_nat),
    Constraint FK_per_nat_cliente_natural foreign key (FK_persona_nat) references Persona_Natural (persona_nat_codigo)
);

CREATE TABLE Empleado (
    cod_empleado SERIAL,
    FK_persona_nat INTEGER NOT NULL UNIQUE,
    empleado_exp_profesional VARCHAR(200) NOT NULL,
    Constraint PK_empleado primary key (cod_empleado),
    Constraint FK_per_nat_empleado foreign key (FK_persona_nat) references Persona_Natural (persona_nat_codigo)
);

CREATE TABLE rol(
    rol_codigo SERIAL,
    rol_nombre VARCHAR(50) NOT NULL,
    rol_descripcion VARCHAR(300),
    CONSTRAINT pk_rol PRIMARY KEY(rol_codigo)
);

--falta arco exclusivo
CREATE TABLE usuario(
    usuario_codigo SERIAL,
    usuario_nombre VARCHAR(50) NOT NULL,
    usuario_contrasena VARCHAR(50) NOT NULL,
    usuario_fk_persona_nat INTEGER,
    usuario_fk_persona_jur INTEGER,
    usuario_fk_rol INTEGER,
    CONSTRAINT pk_usuario PRIMARY KEY(usuario_codigo),
    CONSTRAINT fk_persona_nat FOREIGN KEY(usuario_fk_persona_nat) REFERENCES Persona_Natural(persona_nat_codigo),
    CONSTRAINT fk_persona_jur FOREIGN KEY(usuario_fk_persona_jur) REFERENCES Persona_Juridica(persona_jur_codigo),
    CONSTRAINT fk_rol FOREIGN KEY(usuario_fk_rol) REFERENCES rol(rol_codigo)
);

CREATE TABLE privilegio(
    privilegio_codigo SERIAL,
    privilegio_descripcion VARCHAR(300) NOT NULL,
    privilegio_tipo VARCHAR(40),
    CONSTRAINT pk_privilegio PRIMARY KEY(privilegio_codigo)
);

CREATE TABLE rol_privilegio(
    id_rol_privilegio SERIAL,
    rp_fk_rol INTEGER,
    rp_fk_privilegio INTEGER,
    CONSTRAINT pk_rol_privilegio PRIMARY KEY(id_rol_privilegio),
    CONSTRAINT fk_rol FOREIGN KEY(rp_fk_rol) REFERENCES rol(rol_codigo),
    CONSTRAINT fk_privilegio FOREIGN KEY(rp_fk_privilegio) REFERENCES privilegio(privilegio_codigo)
);

CREATE TABLE contacto(
    contacto_id SERIAL,
    contacto_nombre VARCHAR(80) NOT NULL,
    contacto_red_social VARCHAR(128),
    contacto_fk_empleado INTEGER NOT NULL,
    CONSTRAINT pk_contacto PRIMARY KEY(contacto_id),
    CONSTRAINT fk_empleado FOREIGN KEY(contacto_fk_empleado) REFERENCES Empleado(cod_empleado)
);

CREATE TABLE Telefono (
    telefono_codigo SERIAL,
    telefono_codigo_area VARCHAR(5) NOT NULL,
    telefono_numero VARCHAR(9) NOT NULL,
    FK_persona_jur INTEGER,
    FK_persona_nat INTEGER,
    FK_contacto INTEGER,
    Constraint PK_telefono primary key (telefono_codigo),
    Constraint FK_perjur_telf foreign key (FK_persona_jur) references Persona_juridica (persona_jur_codigo),
    Constraint FK_pernat_telf foreign key (FK_persona_nat) references Persona_Natural (persona_nat_codigo),
    Constraint FK_contacto_telf foreign key (FK_contacto) references Contacto (contacto_id)
);

CREATE TABLE Correo (
    codigo_correo SERIAL,
    correo_nombre VARCHAR(50) NOT NULL,
    FK_persona_nat INTEGER,
    FK_persona_jur INTEGER,
    Constraint PK_correo primary key (codigo_correo),
    Constraint FK_perjur_correo foreign key (FK_persona_jur) references Persona_juridica (persona_jur_codigo),
    Constraint FK_pernat_correo foreign key (FK_persona_nat) references Persona_Natural (persona_nat_codigo)
);

CREATE TABLE Titulo (
    titulo_codigo SERIAL,
    titulo_tipo VARCHAR(16) NOT NULL,
    titulo_nombre VARCHAR(128) NOT NULL,
    titulo_universidad VARCHAR(128) NOT NULL,
    titulo_fecha_obtencion DATE NOT NULL,
    Constraint PK_titulo primary key (titulo_codigo)
);

CREATE TABLE Emp_Titulo (
    id_emp_titulo SERIAL,
    FK_empleado INTEGER NOT NULL,
    FK_titulo_codigo INTEGER NOT NULL,
    Constraint PK_emp_titulo primary key (id_emp_titulo),
    Constraint FK_emple_emp_titulo foreign key (FK_empleado) references Empleado (cod_empleado),
    Constraint FK_titulo_emp_titulo foreign key (FK_titulo_codigo) references titulo (titulo_codigo)
);

CREATE TABLE Beneficiario_Empleado (
    cod_bene_emp SERIAL,
    FK_empleado INTEGER NOT NULL,
    FK_persona_nat INTEGER NOT NULL,
    Constraint PK_benef_emple primary key (cod_bene_emp),
    Constraint FK_emple_benf_empl foreign key (FK_empleado) references Empleado (cod_empleado),
    Constraint FK_per_nat_ben_empl foreign key (FK_persona_nat) references Persona_Natural (persona_nat_codigo)
);

CREATE TABLE Contrato_de_personal (
    contrato_codigo SERIAL,
    contrato_fecha_inicio DATE NOT NULL,
    contrato_fecha_fin DATE,
    FK_empleado INTEGER NOT NULL,
    Constraint PK_contrato_personal primary key (contrato_codigo),
    Constraint FK_empleado_contratodp foreign key (FK_empleado) references Empleado (cod_empleado)
);

CREATE TABLE Vacacion (
    vacacion_codigo SERIAL,
    vacacion_fecha_inicio DATE NOT NULL,
    vacacion_fecha_fin DATE,
    vacacion_total_dias INTEGER NOT NULL,
    FK_contrato INTEGER NOT NULL,
    Constraint PK_vacacion primary key (vacacion_codigo),
    Constraint FK_contrato_vacacion foreign key (FK_contrato) references Contrato_de_personal (contrato_codigo)
);

CREATE TABLE Beneficio (
    beneficio_codigo SERIAL,
    beneficio_nombre VARCHAR(80) NOT NULL,
    beneficio_descripcion VARCHAR(200) NOT NULL,
    beneficio_tipo VARCHAR(20) NOT NULL,
    Constraint PK_beneficio primary key (beneficio_codigo)
);

CREATE TABLE Contrato_P_Beneficio (
    codigo_cp_ben SERIAL,
    FK_beneficio INTEGER NOT NULL,
    FK_contrato INTEGER NOT NULL,
    cont_p_beneficio_monto NUMERIC(7,2),
    Constraint PK_contrato_p_beneficio primary key (codigo_cp_ben),
    Constraint FK_contratop_ben_beneficio foreign key (FK_beneficio) references Beneficio(beneficio_codigo),
    Constraint FK_contrato_p_ben_contrato foreign key (FK_contrato) references Contrato_de_personal(contrato_codigo)
);

CREATE TABLE Cargo (
    cargo_codigo SERIAL,
    cargo_nombre VARCHAR(30) NOT NULL,
    cargo_descripcion VARCHAR (100) NOT NULL,
    Constraint PK_cargo primary key (cargo_codigo)
);

CREATE TABLE Contrato_Cargo (
    codigo_contrato_cargo SERIAL,
    cont_carg_fecha_inicio DATE NOT NULL,
    cont_carg_fecha_fin DATE,
    cont_carg_sueldo_mensual NUMERIC(7,2),
    cont_carg_horas_sem INTEGER NOT NULL,
    cont_carg_sueldo_p_hora NUMERIC(7,2),
    FK_cargo INTEGER NOT NULL,
    FK_contrato INTEGER NOT NULL,
    Constraint PK_contrato_cargo primary key (codigo_contrato_cargo),
    Constraint FK_contrato_cargo_cargo foreign key (FK_cargo) references Cargo(cargo_codigo),
    Constraint FK_contrato_cargo_contrato foreign key (FK_contrato) references Contrato_De_Personal(contrato_codigo)
);

CREATE TABLE Asistencia (
    asistencia_codigo SERIAL,
    asistencia_fecha_hora_entrada TIMESTAMP NOT NULL,
    asistencia_fecha_hora_salida TIMESTAMP,
    FK_contrato INTEGER NOT NULL,
    Constraint PK_asistencia primary key (asistencia_codigo),
    Constraint FK_asistencia_contrato foreign key (FK_contrato) references Contrato_De_Personal(contrato_codigo)
);

CREATE TABLE Horario (
    horario_codigo SERIAL,
    horario_hora_inicio TIME NOT NULL,
    horario_hora_fin TIME NOT NULL,
    horario_dia VARCHAR(10) NOT NULL,
    Constraint PK_horario primary key (horario_codigo),
    Constraint check_horario_dia CHECK (horario_dia IN ('Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo'))
);

CREATE TABLE Contrato_Horario (
    codigo_contrato_horario SERIAL,
    FK_codigo_horario INTEGER NOT NULL,
    FK_codigo_contrato INTEGER NOT NULL,
    Constraint PK_contrato_horario primary key (codigo_contrato_horario),
    Constraint FK_contrato_horario_horario foreign key (FK_codigo_horario) references Horario(horario_codigo),
    Constraint FK_contrato_horario_contrato foreign key (FK_codigo_contrato) references Contrato_De_Personal(contrato_codigo)
);

CREATE TABLE SEDE (
    sede_id SERIAL,
    sede_nombre VARCHAR(50) NOT NULL,
    sede_descripcion VARCHAR(200),
    sede_direccion VARCHAR(200) NOT NULL,
    FK_lugar INTEGER NOT NULL UNIQUE,
    Constraint PK_sede primary key (sede_id),
    Constraint FK_sede_lugar foreign key (FK_lugar) references Lugar(lugar_codigo)
);

CREATE TABLE Area (
    area_id SERIAL,
    area_nombre VARCHAR(50) NOT NULL,
    area_descripcion VARCHAR(200) NOT NULL,
    FK_sede INTEGER NOT NULL,
    Constraint PK_area primary key (area_id),
    Constraint FK_area_sede foreign key (FK_sede) references Sede(sede_id)
);

CREATE TABLE Zona (
    zona_id SERIAL,
    zona_nombre VARCHAR(50) NOT NULL,
    zona_descripcion VARCHAR(200) NOT NULL,
    FK_area INTEGER,
    Constraint PK_zona primary key (zona_id),
    Constraint FK_zona_area foreign key (FK_area) references Area(area_id)
);

CREATE TABLE Equipo (
    codigo_equipo SERIAL,
    fecha_hora_inicio TIMESTAMP NOT NULL,
    fecha_hora_fin TIMESTAMP,
    FK_cont_per INTEGER NOT NULL,
    FK_zona INTEGER,
    Constraint PK_equipo primary key (codigo_equipo),
    Constraint FK_equipo_cont_per foreign key (FK_cont_per) references Contrato_de_personal(contrato_codigo),
    Constraint FK_equipo_zona foreign key (FK_zona) references Zona(zona_id)
);

CREATE TABLE Almacen (
    almacen_id SERIAL,
    almacen_capacidad INTEGER NOT NULL,
    almacen_direccion VARCHAR(200) NOT NULL,
    FK_sede INTEGER NOT NULL UNIQUE,
    Constraint PK_almacen primary key (almacen_id),
    Constraint FK_almacen_sede foreign key (FK_sede) references Sede(sede_id)
);

CREATE TABLE banco(
    banco_codigo SERIAL,
    banco_nombre VARCHAR(50) NOT NULL,
    constraint pk_banco primary key(banco_codigo)
);

CREATE TABLE tdc(
    tdc_metodo_pago_cod SERIAL,
    tdc_numero_tarjeta VARCHAR(16) NOT NULL,
    tdc_cvv VARCHAR(3) NOT NULL,
    tdc_fecha_vencimiento DATE NOT NULL,
    tdc_fk_persona_nat INTEGER,
    tdc_fk_persona_jur INTEGER,
    tdc_fk_banco INTEGER NOT NULL,
    constraint pk_tdc primary key(tdc_metodo_pago_cod),
    constraint fk_persona_nat foreign key(tdc_fk_persona_nat) references Persona_Natural(persona_nat_codigo),
    constraint fk_persona_jur foreign key(tdc_fk_persona_jur) references Persona_Juridica(persona_jur_codigo),
    constraint fk_banco foreign key(tdc_fk_banco) references banco(banco_codigo)
);

CREATE TABLE tdd(
    tdd_metodo_pago_cod SERIAL,
    tdd_numero_tarjeta VARCHAR(16) NOT NULL,
    tdd_cvv VARCHAR(3) NOT NULL,
    tdd_fecha_vencimiento DATE NOT NULL,
    tdd_fk_persona_nat INTEGER,
    tdd_fk_persona_jur INTEGER,
    tdd_fk_banco INTEGER NOT NULL,
    constraint pk_tdd primary key(tdd_metodo_pago_cod),
    constraint fk_persona_nat foreign key(tdd_fk_persona_nat) references Persona_Natural(persona_nat_codigo),
    constraint fk_persona_jur foreign key(tdd_fk_persona_jur) references Persona_Juridica(persona_jur_codigo),
    constraint fk_banco foreign key(tdd_fk_banco) references banco(banco_codigo)
);

CREATE TABLE cheque(
    cheque_metodo_pago_cod SERIAL,
    cheque_numero VARCHAR(8) NOT NULL,
    cheque_fk_per_nat INTEGER,
    cheque_fk_per_jur INTEGER,
    cheque_fk_banco INTEGER NOT NULL,
    constraint pk_cheque primary key(cheque_metodo_pago_cod),
    constraint fk_persona_nat foreign key(cheque_fk_per_nat) references Persona_Natural(persona_nat_codigo),
    constraint fk_persona_jur foreign key(cheque_fk_per_jur) references Persona_Juridica(persona_jur_codigo),
    constraint fk_banco foreign key(cheque_fk_banco) references banco(banco_codigo)
);

CREATE TABLE efectivo(
    efectivo_metodo_pago_cod SERIAL,
    efectivo_denominacion VARCHAR(20) NOT NULL,
    efectivo_cant_piezas INTEGER,
    efectivo_fk_per_nat INTEGER,
    efectivo_fk_per_jur INTEGER,
    constraint pk_efectivo primary key(efectivo_metodo_pago_cod),
    constraint fk_persona_nat foreign key(efectivo_fk_per_nat) references Persona_Natural(persona_nat_codigo),
    constraint fk_persona_jur foreign key(efectivo_fk_per_jur) references Persona_Juridica(persona_jur_codigo)
);

CREATE TABLE Estatus_Orden (
  estatus_ord_id SERIAL,
  estatus_ord_nombre VARCHAR(50) NOT NULL,
  estatus_ord_descripcion VARCHAR(200),
  CONSTRAINT PK_estatus_orden PRIMARY KEY (estatus_ord_id)
);

CREATE TABLE estatus_pedido(
  estatus_ped_id SERIAL,
  estatus_ped_nombre VARCHAR(50) NOT NULL,
  estatus_ped_descripcion VARCHAR(200),
    CONSTRAINT pk_estatus_pedido PRIMARY KEY(estatus_ped_id)
);

CREATE TABLE Materia_prima (
  materia_p_id SERIAL,
  materia_p_nombre VARCHAR(50) NOT NULL,
  materia_p_descripcion VARCHAR(200),
    CONSTRAINT PK_materia_prima PRIMARY KEY (materia_p_id)
);

CREATE TABLE Mate_P_Proveedor (
  materia_p_prov_id SERIAL,
  mate_p_prov_precio DECIMAL(10, 2) NOT NULL,
  FK_materia_prima INTEGER NOT NULL,
  FK_prov INTEGER NOT NULL,
  CONSTRAINT PK_mate_p_proveedor PRIMARY KEY (materia_p_prov_id),
  CONSTRAINT FK_materia_prima_mate_p_proveedor FOREIGN KEY (FK_materia_prima) REFERENCES Materia_Prima(materia_p_id),
  CONSTRAINT FK_proveedor_mate_p_proveedor FOREIGN KEY (FK_prov) REFERENCES Proveedor(cod_proveedor)
);

CREATE TABLE Historico_Tasa_Dolar (
  H_tasa_id SERIAL,
  H_tasa_precio DECIMAL(4,2) NOT NULL,
  H_tasa_fecha_inicio DATE NOT NULL,
  H_tasa_fecha_fin DATE,
    CONSTRAINT PK_historico_tasa_dolar PRIMARY KEY (H_tasa_id)
);

CREATE TABLE Tipo_Prueba_Mate (
  tipo_pm_id SERIAL,
  tipo_pm_nombre VARCHAR(50) NOT NULL,
  tipo_pm_duracion TIME NOT NULL, --debe ir en horas laborables
  FK_zona INTEGER NOT NULL,
    CONSTRAINT PK_tipo_prueba_mate PRIMARY KEY (tipo_pm_id),
    CONSTRAINT FK_zona_tipo_prueba_mate FOREIGN KEY (FK_zona) REFERENCES Zona(zona_id)
);

CREATE TABLE Prueba_Material (
  cod_prueb_map SERIAL,
  FK_tipo_pm INTEGER NOT NULL,
  FK_materia_p_pm INTEGER NOT NULL,
    CONSTRAINT PK_prueba_material PRIMARY KEY (cod_prueb_map),
    CONSTRAINT FK_tipo_prueba_mate_prueba_material FOREIGN KEY (FK_tipo_pm) REFERENCES Tipo_Prueba_Mate(tipo_pm_id),
    CONSTRAINT FK_materia_prima_prueba_material FOREIGN KEY (FK_materia_p_pm) REFERENCES Materia_Prima(materia_p_id)
);

CREATE TABLE estatus_prueba_mate(
    estatus_pm_id SERIAL,
    estatus_pm_nombre VARCHAR(20) NOT NULL,
    estatus_pm_descripcion VARCHAR(200) NOT NULL,
    CONSTRAINT pk_estatus_prueba_mate PRIMARY KEY(estatus_pm_id)
);

CREATE TABLE Historico_Estatus_Prueba_Mate (
    hist_est_pru_mate_cod SERIAL,
    fecha_hora_inicio_estatus TIMESTAMP NOT NULL,
    fecha_hora_fin_estatus TIMESTAMP,
    FK_estatus_pm INTEGER NOT NULL,
    FK_prueba_mate INTEGER NOT NULL,
    CONSTRAINT PK_historico_estatus_prueba_mate PRIMARY KEY (hist_est_pru_mate_cod),
    CONSTRAINT FK_estatus_prueba_mate_historico FOREIGN KEY (FK_estatus_pm) REFERENCES estatus_prueba_mate(estatus_pm_id),
    CONSTRAINT FK_prueba_mate_historico FOREIGN KEY (FK_prueba_mate) REFERENCES Prueba_Material(cod_prueb_map)
);

CREATE TABLE Orden_De_Reposicion (
    orden_id SERIAL,
    orden_fecha DATE NOT NULL,
    orden_subtotal INTEGER,
    orden_total INTEGER,
    FK_contrato_per INTEGER NOT NULL,
    FK_tasa_dolar INTEGER NOT NULL,
    CONSTRAINT PK_orden_de_reposicion PRIMARY KEY (orden_id),
    CONSTRAINT FK_contrato_orden_de_reposicion FOREIGN KEY (FK_contrato_per) REFERENCES Contrato_de_personal(contrato_codigo),
    CONSTRAINT FK_tasa_dolar_orden_de_reposicion FOREIGN KEY (FK_tasa_dolar) REFERENCES Historico_Tasa_Dolar(H_tasa_id)
);

CREATE TABLE Historico_Estatus_Orden (
    hist_est_ord_cod INTEGER NOT NULL,
    fecha_hora_inicio_estatus TIMESTAMP NOT NULL,
    fecha_hora_fin_estatus TIMESTAMP,
    FK_orden_rep INTEGER NOT NULL,
    FK_estatus_orden INTEGER NOT NULL,
    CONSTRAINT PK_historico_estatus_orden PRIMARY KEY (hist_est_ord_cod),
    CONSTRAINT FK_orden_historico_estatus FOREIGN KEY (FK_orden_rep) REFERENCES Orden_De_Reposicion(orden_id),
    CONSTRAINT FK_estatus_orden_historico FOREIGN KEY (FK_estatus_orden) REFERENCES Estatus_Orden(estatus_ord_id)
);

CREATE TABLE Caracteristica (
    caracteristica_id SERIAL,
    caracteristica_nombre VARCHAR(50) NOT NULL,
    caracteristica_descripcion VARCHAR(200),
    CONSTRAINT PK_caracteristica PRIMARY KEY (caracteristica_id)
);

CREATE TABLE estatus_prueba_avion(
    estatus_pa_id SERIAL,
    estatus_pa_nombre VARCHAR(20) NOT NULL,
    estatus_pa_descripcion VARCHAR(200) NOT NULL,
    CONSTRAINT pk_estatus_prueba_avion PRIMARY KEY(estatus_pa_id)
);

CREATE TABLE Estatus_Prueba_Pieza (
    estatus_pp_id SERIAL,
    estatus_pp_nombre VARCHAR(50) NOT NULL,
    estatus_pp_descripcion VARCHAR(200) NOT NULL,
    CONSTRAINT PK_estatus_prueba_pieza PRIMARY KEY (estatus_pp_id)
);

CREATE TABLE Tipo_Prueba_Pieza (
    tipo_pp_id SERIAL,
    tipo_pp_nombre VARCHAR(50) NOT NULL,
    tipo_pp_duracion TIME NOT NULL, --debe ir en horas laborables
    FK_zona_tip_pru_pie INTEGER,
    CONSTRAINT PK_tipo_prueba_pieza PRIMARY KEY (tipo_pp_id),
    CONSTRAINT FK_zona_tipo_prueba_pieza FOREIGN KEY (FK_zona_tip_pru_pie) REFERENCES Zona(zona_id)
);

CREATE TABLE Modelo_Avion (
    modelo_avion_id INTEGER NOT NULL,
    modelo_avion_descripcion VARCHAR(200),
    modelo_avion_nombre VARCHAR(50) NOT NULL,
    CONSTRAINT PK_modelo_avion PRIMARY KEY (modelo_avion_id)
);

CREATE TABLE tipo_prueba_avion(
    tipo_pa_id SERIAL,
    tipo_pa_nombre VARCHAR(50) NOT NULL,
    tipo_pa_duracion INTERVAL NOT NULL, --VA EN HORAS LABORALES
    tipo_pa_fk_zona INTEGER NOT NULL,
    tipo_pa_fk_modelo_avion INTEGER NOT NULL,
    CONSTRAINT pk_tipo_prueba_avion PRIMARY KEY(tipo_pa_id),
    CONSTRAINT fk_zona_tipo_prueba_avion FOREIGN KEY(tipo_pa_fk_zona) REFERENCES Zona(zona_id),
    CONSTRAINT fk_modelo_avion_tipo_prueba_avion FOREIGN KEY(tipo_pa_fk_modelo_avion) REFERENCES Modelo_Avion(modelo_avion_id)
);

CREATE TABLE avion(
    avion_id SERIAL,
    avion_fecha_entrega DATE, --calculado
    avion_diseno_especial BOOLEAN,
    avion_matricula VARCHAR(20),
    avion_fk_modelo INTEGER NOT NULL,
    CONSTRAINT pk_avion PRIMARY KEY(avion_id),
    CONSTRAINT fk_modelo FOREIGN KEY(avion_fk_modelo) REFERENCES Modelo_Avion(modelo_avion_id)
);

CREATE TABLE Prueba_Avion(
    prueba_avion_id SERIAL,
    prueba_avion_fk_avion INTEGER NOT NULL,
    prueba_avion_fk_tipo_p_avion INTEGER NOT NULL,
    CONSTRAINT pk_prueba_avion PRIMARY KEY(prueba_avion_id),
    CONSTRAINT fk_avion FOREIGN KEY(prueba_avion_fk_avion) REFERENCES avion(avion_id),
    CONSTRAINT fk_tipo_prueba_avion FOREIGN KEY(prueba_avion_fk_tipo_p_avion) REFERENCES tipo_prueba_avion(tipo_pa_id)
);

CREATE TABLE Historico_Estatus_Prueba_Avion(
    hist_est_pru_avion_cod SERIAL,
    fecha_hora_inicio_estatus TIMESTAMP NOT NULL,
    fecha_hora_fin_estatus TIMESTAMP,
    FK_prueba_avion INTEGER NOT NULL,
    FK_estatus_prueb_avion INTEGER NOT NULL,
    CONSTRAINT pk_historico_estatus_prueba_avion PRIMARY KEY(hist_est_pru_avion_cod),
    CONSTRAINT fk_prueba_avion_historico FOREIGN KEY(FK_prueba_avion) REFERENCES Prueba_Avion(prueba_avion_id),
    CONSTRAINT fk_estatus_prueba_avion_historico FOREIGN KEY(FK_estatus_prueb_avion) REFERENCES estatus_prueba_avion(estatus_pa_id)
);

CREATE TABLE Modelo_Avion_Caracteristica(
    modelo_avion_caract_id SERIAL,
    modelo_avion_caract_valor DECIMAL(15,5),
    modelo_avion_caract_unidad_medida VARCHAR(70),
    modelo_avion_caract_fk_modelo INTEGER NOT NULL,
    modelo_avion_caract_fk_caract INTEGER NOT NULL,
    CONSTRAINT pk_modelo_avion_caracteristica PRIMARY KEY(modelo_avion_caract_id),
    CONSTRAINT fk_modelo_modelo_avion_caracteristica FOREIGN KEY(modelo_avion_caract_fk_modelo) REFERENCES Modelo_Avion(modelo_avion_id),
    CONSTRAINT fk_caracteristica_modelo_avion_caracteristica FOREIGN KEY(modelo_avion_caract_fk_caract) REFERENCES Caracteristica(caracteristica_id)
);

CREATE TABLE Historico_Precio_Venta(
    precio_venta_id SERIAL,
    precio_venta_valor DECIMAL(10,2) NOT NULL,
    precio_venta_fecha_inicio DATE NOT NULL,
    precio_venta_fecha_fin DATE,
    fk_precio_venta_H_tasa_dolar INTEGER NOT NULL,
    fk_precio_venta_avion INTEGER NOT NULL,
    CONSTRAINT pk_historico_precio_venta PRIMARY KEY(precio_venta_id),
    CONSTRAINT fk_tasa_dolar_historico_precio_venta FOREIGN KEY(fk_precio_venta_H_tasa_dolar) REFERENCES Historico_Tasa_Dolar(H_tasa_id),
    CONSTRAINT fk_avion_historico_precio_venta FOREIGN KEY(fk_precio_venta_avion) REFERENCES avion(avion_id)
);

CREATE TABLE Empleado_Prueba_Material(
    empleado_prueba_material_id SERIAL,
    fk_empleado INTEGER NOT NULL,
    fk_prueba_material INTEGER NOT NULL,
    CONSTRAINT pk_empleado_prueba_material PRIMARY KEY(empleado_prueba_material_id),
    CONSTRAINT fk_empleado_empleado_prueba_material FOREIGN KEY(fk_empleado) REFERENCES Empleado(cod_empleado),
    CONSTRAINT fk_prueba_material_empleado_prueba_material FOREIGN KEY(fk_prueba_material) REFERENCES Prueba_Material(cod_prueb_map)
);

CREATE TABLE Empleado_Prueba_Avion(
    empleado_prueba_avion_id SERIAL,
    fk_empleado INTEGER NOT NULL,
    fk_prueba_avion INTEGER NOT NULL,
    CONSTRAINT pk_empleado_prueba_avion PRIMARY KEY(empleado_prueba_avion_id),
    CONSTRAINT fk_empleado_empleado_prueba_avion FOREIGN KEY(fk_empleado) REFERENCES Empleado(cod_empleado),
    CONSTRAINT fk_prueba_avion_empleado_prueba_avion FOREIGN KEY(fk_prueba_avion) REFERENCES Prueba_Avion(prueba_avion_id)
);

CREATE TABLE Modelo_Pieza(
    m_pieza_id SERIAL,
    m_pieza_nombre VARCHAR(50) NOT NULL,
    m_pieza_descripcion VARCHAR(200) NOT NULL,
    CONSTRAINT pk_modelo_pieza PRIMARY KEY(m_pieza_id)
);

CREATE TABLE Componente(
    componente_id SERIAL,
    componente_fk_pieza_principal INTEGER NOT NULL,
    componente_fk_pieza_componente INTEGER NOT NULL,
    CONSTRAINT pk_componente PRIMARY KEY(componente_id),
    CONSTRAINT fk_pieza_principal_componente FOREIGN KEY(componente_fk_pieza_principal) REFERENCES Modelo_Pieza(m_pieza_id),
    CONSTRAINT fk_pieza_componente_componente FOREIGN KEY(componente_fk_pieza_componente) REFERENCES Modelo_Pieza(m_pieza_id)
);

CREATE TABLE modelo_p_caracteristica(
    m_p_caract_id SERIAL,
    m_p_caract_fk_modelo INTEGER NOT NULL,
    m_p_caract_fk_caract INTEGER NOT NULL,
    CONSTRAINT pk_modelo_pieza_caracteristica PRIMARY KEY(m_p_caract_id),
    CONSTRAINT fk_modelo_modelo_pieza_caracteristica FOREIGN KEY(m_p_caract_fk_modelo) REFERENCES Modelo_Pieza(m_pieza_id),
    CONSTRAINT fk_caracteristica_modelo_pieza_caracteristica FOREIGN KEY(m_p_caract_fk_caract) REFERENCES Caracteristica(caracteristica_id)
);

CREATE TABLE mat_prima_pieza(
    mat_p_pieza_id SERIAL,
    mat_p_pieza_cantidad INTEGER NOT NULL,
    fk_pieza INTEGER NOT NULL,
    fk_mat_prima INTEGER NOT NULL,
    CONSTRAINT pk_mat_prima_pieza PRIMARY KEY(mat_p_pieza_id),
    CONSTRAINT fk_pieza_mat_prima_pieza FOREIGN KEY(fk_pieza) REFERENCES Modelo_Pieza(m_pieza_id),
    CONSTRAINT fk_mat_prima_mat_prima_pieza FOREIGN KEY(fk_mat_prima) REFERENCES Materia_Prima(materia_p_id)
);

CREATE TABLE Pieza(
    pieza_id SERIAL,
    pieza_caracteristica_esp VARCHAR(200),
    pieza_fk_modelo_p INTEGER NOT NULL,
    CONSTRAINT pk_pieza PRIMARY KEY(pieza_id),
    CONSTRAINT fk_modelo_pieza FOREIGN KEY(pieza_fk_modelo_p) REFERENCES Modelo_Pieza(m_pieza_id)
);

CREATE TABLE Inventario_Almacen (
    cod_inv_almacen SERIAL,
    inv_alm_cant INTEGER NOT NULL,
    FK_almacen INTEGER NOT NULL,
    FK_mat_prim INTEGER,
    FK_pieza INTEGER,
    Constraint PK_inventario_almacen primary key (cod_inv_almacen),
    Constraint FK_inventario_almacen_almacen foreign key (FK_almacen) references Almacen (almacen_id),
    Constraint FK_inventario_almacen_mat_prim foreign key (FK_mat_prim) references Materia_prima(materia_p_id),
    Constraint FK_inventario_pieza foreign key (FK_pieza) references Pieza(pieza_id)
);

CREATE TABLE Detalle_Orden_Reposicion (
    detalle_orden_cod SERIAL,
    detalle_orden_cantidad INTEGER NOT NULL,
    detalle_orden_precio_unitario DECIMAL(10, 2) NOT NULL,
    FK_orden INTEGER NOT NULL,
    FK_mp_prov INTEGER NOT NULL,
    CONSTRAINT PK_detalle_orden_reposicion PRIMARY KEY (detalle_orden_cod),
    CONSTRAINT FK_orden_detalle_orden_reposicion FOREIGN KEY (FK_orden) REFERENCES Orden_De_Reposicion(orden_id),
    CONSTRAINT FK_mate_prov_detalle_orden_reposicion FOREIGN KEY (FK_mp_prov) REFERENCES Mate_P_Proveedor(materia_p_prov_id)
);


CREATE TABLE Pieza_Avion(
    pieza_avion_id SERIAL,
    pieza_avion_fk_pieza INTEGER NOT NULL,
    pieza_avion_fk_avion INTEGER NOT NULL,
    CONSTRAINT pk_pieza_avion PRIMARY KEY(pieza_avion_id),
    CONSTRAINT fk_pieza_pieza_avion FOREIGN KEY(pieza_avion_fk_pieza) REFERENCES Pieza(pieza_id),
    CONSTRAINT fk_avion_pieza_avion FOREIGN KEY(pieza_avion_fk_avion) REFERENCES avion(avion_id)
);

CREATE TABLE Prueba_Pieza(
    prueba_pieza_id SERIAL,
    prueba_pieza_fk_pieza INTEGER NOT NULL,
    prueba_pieza_fk_tipo_prueba INTEGER NOT NULL,
    CONSTRAINT pk_prueba_pieza PRIMARY KEY(prueba_pieza_id),
    CONSTRAINT fk_pieza_prueba_pieza FOREIGN KEY(prueba_pieza_fk_pieza) REFERENCES Pieza(pieza_id),
    CONSTRAINT fk_tipo_prueba_prueba_pieza FOREIGN KEY(prueba_pieza_fk_tipo_prueba) REFERENCES Tipo_Prueba_Pieza(tipo_pp_id)
);

CREATE TABLE Historico_Estatus_Prueba_Pieza(
    hist_est_pru_piez_id SERIAL,
    hist_est_pru_piez_fecha_hora_inicio TIMESTAMP NOT NULL,
    hist_est_pru_piez_fecha_hora_fin TIMESTAMP,
    hist_est_pru_piez_fk_prueba_pieza INTEGER NOT NULL,
    hist_est_pru_piez_fk_estatus_prueba_pieza INTEGER NOT NULL,
    CONSTRAINT pk_historico_estatus_prueba_pieza PRIMARY KEY(hist_est_pru_piez_id),
    CONSTRAINT fk_prueba_pieza_historico FOREIGN KEY(hist_est_pru_piez_fk_prueba_pieza) REFERENCES Prueba_Pieza(prueba_pieza_id),
    CONSTRAINT fk_estatus_prueba_pieza_historico FOREIGN KEY(hist_est_pru_piez_fk_estatus_prueba_pieza) REFERENCES Estatus_Prueba_Pieza(estatus_pp_id)
);

CREATE TABLE Pieza_Zona(
    pieza_zona_id SERIAL,
    pieza_zona_fk_pieza INTEGER NOT NULL,
    pieza_zona_fk_zona INTEGER NOT NULL,
    CONSTRAINT pk_pieza_zona PRIMARY KEY(pieza_zona_id),
    CONSTRAINT fk_pieza_pieza_zona FOREIGN KEY(pieza_zona_fk_pieza) REFERENCES Pieza(pieza_id),
    CONSTRAINT fk_zona_pieza_zona FOREIGN KEY(pieza_zona_fk_zona) REFERENCES Zona(zona_id)
);

CREATE TABLE Empleado_Prueba_Pieza(
    empleado_prueba_pieza_id SERIAL,
    empleado_prueba_pieza_fk_empleado INTEGER NOT NULL,
    empleado_prueba_pieza_fk_prueba_pieza INTEGER NOT NULL,
    CONSTRAINT pk_empleado_prueba_pieza PRIMARY KEY(empleado_prueba_pieza_id),
    CONSTRAINT fk_empleado_empleado_prueba_pieza FOREIGN KEY(empleado_prueba_pieza_fk_empleado) REFERENCES Empleado(cod_empleado),
    CONSTRAINT fk_prueba_pieza_empleado_prueba_pieza FOREIGN KEY(empleado_prueba_pieza_fk_prueba_pieza) REFERENCES Prueba_Pieza(prueba_pieza_id)
);

--ARCO EXCLUSIVO
CREATE TABLE Pedido(
    pedido_id SERIAL,
    pedido_fecha DATE NOT NULL,
    pedido_subtotal DECIMAL(10,2),
    pedido_total DECIMAL(10,2),
    pedido_fk_cliente_jur INTEGER,
    pedido_fk_cliente_nat INTEGER,
    pedido_fk_sede INTEGER NOT NULL,
    pedido_fk_historico_tasa_dolar INTEGER NOT NULL,
    CONSTRAINT pk_pedido PRIMARY KEY(pedido_id),
    CONSTRAINT fk_cliente_jur_pedido FOREIGN KEY(pedido_fk_cliente_jur) REFERENCES cliente_juridico(cod_cliente_juri),
    CONSTRAINT fk_cliente_nat_pedido FOREIGN KEY(pedido_fk_cliente_nat) REFERENCES Cliente_Natural(cod_client_nat),
    CONSTRAINT fk_sede_pedido FOREIGN KEY(pedido_fk_sede) REFERENCES Sede(sede_id),
    CONSTRAINT fk_historico_tasa_dolar_pedido FOREIGN KEY(pedido_fk_historico_tasa_dolar) REFERENCES Historico_Tasa_Dolar(H_tasa_id)
);

--ARREGLAR EN EL ER VA CON MODELO AVION Y MODELO PIEZA Y SE HACE UN TRIGGER QUE GENERE AUTOMATICAMENE EL AVION O PIEZA
CREATE TABLE Detalle_Pedido(
    detalle_pedido_id SERIAL,
    detalle_pedido_cantidad INTEGER NOT NULL,
    detalle_pedido_precio_unitario DECIMAL(10,2) NOT NULL,
    detalle_pedido_fk_pedido INTEGER NOT NULL,
    detalle_pedido_fk_modelo_avion INTEGER,
    detalle_pedido_fk_modelo_pieza INTEGER,
    CONSTRAINT pk_detalle_pedido PRIMARY KEY(detalle_pedido_id),
    CONSTRAINT fk_pedido_detalle_pedido FOREIGN KEY(detalle_pedido_fk_pedido) REFERENCES Pedido(pedido_id),
    CONSTRAINT fk_avion_detalle_pedido FOREIGN KEY(detalle_pedido_fk_modelo_avion) REFERENCES Modelo_Avion(modelo_avion_id),
    CONSTRAINT fk_pieza_detalle_pedido FOREIGN KEY(detalle_pedido_fk_modelo_pieza) REFERENCES Modelo_Pieza(m_pieza_id)
);

CREATE TABLE Historico_Estatus_Pedido(
    historico_estatus_pedido_id SERIAL,
    historico_estatus_pedido_fecha_hora_inicio TIMESTAMP NOT NULL,
    historico_estatus_pedido_fecha_hora_fin TIMESTAMP,
    historico_estatus_pedido_fk_pedido INTEGER NOT NULL,
    historico_estatus_pedido_fk_estatus_pedido INTEGER NOT NULL,
    CONSTRAINT pk_historico_estatus_pedido PRIMARY KEY(historico_estatus_pedido_id),
    CONSTRAINT fk_pedido_historico_estatus_pedido FOREIGN KEY(historico_estatus_pedido_fk_pedido) REFERENCES Pedido(pedido_id),
    CONSTRAINT fk_estatus_pedido_historico_estatus_pedido FOREIGN KEY(historico_estatus_pedido_fk_estatus_pedido) REFERENCES estatus_pedido(estatus_ped_id)
);

--AÑADIR ARCO EXCLUSIVO
CREATE TABLE Pedido_Metodo_Pago(
    pedido_metodo_pago_id SERIAL,
    pedido_metodo_pago_fk_pedido INTEGER NOT NULL,
    pedido_metodo_pago_fk_TDC INTEGER,
    pedido_metodo_pago_fk_TDD INTEGER,
    pedido_metodo_pago_fk_cheque INTEGER,
    pedido_metodo_pago_fk_efectivo INTEGER,
    pedido_metodo_pago_monto DECIMAL(10,2) NOT NULL,
    pedido_metodo_pago_fecha TIMESTAMP NOT NULL,
    CONSTRAINT pk_pedido_metodo_pago PRIMARY KEY(pedido_metodo_pago_id),
    CONSTRAINT fk_pedido_pedido_metodo_pago FOREIGN KEY(pedido_metodo_pago_fk_pedido) REFERENCES Pedido(pedido_id),
    CONSTRAINT fk_TDC_pedido_metodo_pago FOREIGN KEY(pedido_metodo_pago_fk_TDC) REFERENCES tdc(tdc_metodo_pago_cod),
    CONSTRAINT fk_TDD_pedido_metodo_pago FOREIGN KEY(pedido_metodo_pago_fk_TDD) REFERENCES tdd(tdd_metodo_pago_cod),
    CONSTRAINT fk_cheque_pedido_metodo_pago FOREIGN KEY(pedido_metodo_pago_fk_cheque) REFERENCES cheque(cheque_metodo_pago_cod),
    CONSTRAINT fk_efectivo_pedido_metodo_pago FOREIGN KEY(pedido_metodo_pago_fk_efectivo) REFERENCES efectivo(efectivo_metodo_pago_cod)
);

CREATE TABLE odr_metodo_pago(
    odr_metodo_pago_id SERIAL,
    odr_metodo_pago_fk_orden INTEGER NOT NULL,
    odr_metodo_pago_fk_TDC INTEGER,
    odr_metodo_pago_fk_TDD INTEGER,
    odr_metodo_pago_fk_cheque INTEGER,
    odr_metodo_pago_fk_efectivo INTEGER,
    odr_metodo_pago_monto DECIMAL(10,2) NOT NULL,
    odr_metodo_pago_fecha TIMESTAMP NOT NULL,
    CONSTRAINT pk_odr_metodo_pago PRIMARY KEY(odr_metodo_pago_id),
    CONSTRAINT fk_orden_odr_metodo_pago FOREIGN KEY(odr_metodo_pago_fk_orden) REFERENCES Orden_De_Reposicion(orden_id),
    CONSTRAINT fk_TDC_odr_metodo_pago FOREIGN KEY(odr_metodo_pago_fk_TDC) REFERENCES tdc(tdc_metodo_pago_cod),
    CONSTRAINT fk_TDD_odr_metodo_pago FOREIGN KEY(odr_metodo_pago_fk_TDD) REFERENCES tdd(tdd_metodo_pago_cod),
    CONSTRAINT fk_cheque_odr_metodo_pago FOREIGN KEY(odr_metodo_pago_fk_cheque) REFERENCES cheque(cheque_metodo_pago_cod),
    CONSTRAINT fk_efectivo_odr_metodo_pago FOREIGN KEY(odr_metodo_pago_fk_efectivo) REFERENCES efectivo(efectivo_metodo_pago_cod)
);

CREATE TABLE pieza_equipo (
    pieza_equipo_id SERIAL,
    pieza_equipo_fk_pieza INTEGER NOT NULL,
    pieza_equipo_fk_equipo INTEGER NOT NULL,
    CONSTRAINT pk_pieza_equipo PRIMARY KEY(pieza_equipo_id),
    CONSTRAINT fk_pieza_pieza_equipo FOREIGN KEY(pieza_equipo_fk_pieza) REFERENCES Pieza(pieza_id),
    CONSTRAINT fk_equipo_pieza_equipo FOREIGN KEY(pieza_equipo_fk_equipo) REFERENCES Equipo(codigo_equipo)
);

CREATE TABLE avion_equipo (
    avion_equipo_id SERIAL,
    avion_equipo_fk_avion INTEGER NOT NULL,
    avion_equipo_fk_equipo INTEGER NOT NULL,
    CONSTRAINT pk_avion_equipo PRIMARY KEY(avion_equipo_id),
    CONSTRAINT fk_avion_avion_equipo FOREIGN KEY(avion_equipo_fk_avion) REFERENCES avion(avion_id),
    CONSTRAINT fk_equipo_avion_equipo FOREIGN KEY(avion_equipo_fk_equipo) REFERENCES Equipo(codigo_equipo)
);

CREATE TABLE ma_mp(
    ma_mp_id SERIAL,
    ma_mp_fk_modelo_avion INTEGER NOT NULL,
    ma_mp_fk_modelo_pieza INTEGER NOT NULL,
    CONSTRAINT pk_ma_mp PRIMARY KEY(ma_mp_id),
    CONSTRAINT fk_modelo_avion_ma_mp FOREIGN KEY(ma_mp_fk_modelo_avion) REFERENCES Modelo_Avion(modelo_avion_id),
    CONSTRAINT fk_modelo_pieza_ma_mp FOREIGN KEY(ma_mp_fk_modelo_pieza) REFERENCES Modelo_Pieza(m_pieza_id)
);
