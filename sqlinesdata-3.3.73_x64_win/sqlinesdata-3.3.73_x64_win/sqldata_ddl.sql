-- SQLines Data 3.3.73 x64 - Database Migration Tool.
-- Copyright (c) 2020 SQLines. All Rights Reserved.

-- All DDL SQL statements executed for the target database

-- Current timestamp: 2020-10-29 16:33:22.245

DROP TABLE [master_history];

-- Failed (47 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'master_history', because it does not exist or you do not have permission.

DROP TABLE [one_to_many];

-- Failed (32 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'one_to_many', because it does not exist or you do not have permission.

CREATE TABLE [master_history]
(
   [history_id] DECIMAL(19,0) NOT NULL,
   [trans_type] VARCHAR(40),
   [tstamp] ,
   [updated_by] VARCHAR(120),
   [trace_id] VARCHAR(64),
   [span_id] VARCHAR(64),
   [id] DECIMAL(19,0),
   [version] DECIMAL(10,0),
   [name] VARCHAR(120)
);

-- Failed (15 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]The definition for column 'tstamp' must include a data type.

DROP TABLE [master];

-- Failed (62 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'master', because it does not exist or you do not have permission.

DROP TABLE [sys_config];

-- Failed (78 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'sys_config', because it does not exist or you do not have permission.

CREATE TABLE [one_to_many]
(
   [id] DECIMAL(19,0) NOT NULL,
   [version] DECIMAL(10,0),
   [master_id] DECIMAL(19,0),
   [name] VARCHAR(120)
);

-- Ok (16 ms)

CREATE TABLE [master]
(
   [id] DECIMAL(19,0) NOT NULL,
   [version] DECIMAL(10,0),
   [name] VARCHAR(120)
);

-- Ok (0 ms)

CREATE TABLE [sys_config]
(
   [variable] VARCHAR(512) NOT NULL,
   [value] VARCHAR(512),
   [set_time] ,
   [set_by] VARCHAR(512)
);

-- Failed (0 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]The definition for column 'set_time' must include a data type.

DROP TABLE [one_to_many_history];

-- Failed (31 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'one_to_many_history', because it does not exist or you do not have permission.

DROP TABLE [one_to_one];

-- Failed (31 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'one_to_one', because it does not exist or you do not have permission.

CREATE TABLE [one_to_many_history]
(
   [history_id] DECIMAL(19,0) NOT NULL,
   [trans_type] VARCHAR(40),
   [tstamp] ,
   [updated_by] VARCHAR(120),
   [trace_id] VARCHAR(64),
   [span_id] VARCHAR(64),
   [id] DECIMAL(19,0),
   [version] DECIMAL(10,0),
   [master_id] DECIMAL(19,0),
   [name] VARCHAR(120)
);

-- Failed (0 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]The definition for column 'tstamp' must include a data type.

CREATE TABLE [one_to_one]
(
   [id] DECIMAL(19,0) NOT NULL,
   [version] DECIMAL(10,0),
   [master_id] DECIMAL(19,0),
   [name] VARCHAR(120)
);

-- Ok (0 ms)

DROP TABLE [one_to_one_history];

-- Failed (47 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'one_to_one_history', because it does not exist or you do not have permission.

DROP TABLE [many_to_many];

-- Failed (47 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'many_to_many', because it does not exist or you do not have permission.

CREATE TABLE [one_to_one_history]
(
   [history_id] DECIMAL(19,0) NOT NULL,
   [trans_type] VARCHAR(40),
   [tstamp] ,
   [updated_by] VARCHAR(120),
   [trace_id] VARCHAR(64),
   [span_id] VARCHAR(64),
   [id] DECIMAL(19,0),
   [version] DECIMAL(10,0),
   [master_id] DECIMAL(19,0),
   [name] VARCHAR(120)
);

-- Failed (0 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]The definition for column 'tstamp' must include a data type.

CREATE TABLE [many_to_many]
(
   [id] DECIMAL(19,0) NOT NULL,
   [version] DECIMAL(10,0),
   [name] VARCHAR(120)
);

-- Ok (15 ms)

DROP TABLE [many_to_many_history];

-- Failed (16 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'many_to_many_history', because it does not exist or you do not have permission.

DROP TABLE [master_mtm_xref];

-- Failed (16 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'master_mtm_xref', because it does not exist or you do not have permission.

CREATE TABLE [many_to_many_history]
(
   [history_id] DECIMAL(19,0) NOT NULL,
   [trans_type] VARCHAR(40),
   [tstamp] ,
   [updated_by] VARCHAR(120),
   [trace_id] VARCHAR(64),
   [span_id] VARCHAR(64),
   [id] DECIMAL(19,0),
   [version] DECIMAL(10,0),
   [name] VARCHAR(120)
);

-- Failed (0 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]The definition for column 'tstamp' must include a data type.

CREATE TABLE [master_mtm_xref]
(
   [master_id] DECIMAL(19,0) NOT NULL,
   [mtm_id] DECIMAL(19,0) NOT NULL
);

-- Ok (0 ms)

DROP TABLE [asociadoasignacion];

-- Failed (31 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'asociadoasignacion', because it does not exist or you do not have permission.

DROP TABLE [master_mtm_xref_history];

-- Failed (47 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'master_mtm_xref_history', because it does not exist or you do not have permission.

DROP TABLE [calculos];

-- Failed (31 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'calculos', because it does not exist or you do not have permission.

CREATE TABLE [asociadoasignacion]
(
   [id] INTEGER NOT NULL,
   [asociado] VARCHAR(1020),
   [movimiento] VARCHAR(1020),
   [fechas] DATE,
   [acciones] VARCHAR(1020),
   [costoinicial] FLOAT,
   [precioventa] FLOAT,
   [comision] FLOAT
);

-- Ok (0 ms)

CREATE TABLE [master_mtm_xref_history]
(
   [history_id] DECIMAL(19,0) NOT NULL,
   [trans_type] VARCHAR(40),
   [tstamp] ,
   [updated_by] VARCHAR(120),
   [trace_id] VARCHAR(64),
   [span_id] VARCHAR(64),
   [master_id] DECIMAL(19,0),
   [mtm_id] DECIMAL(19,0)
);

-- Failed (0 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]The definition for column 'tstamp' must include a data type.

CREATE TABLE [calculos]
(
   [asociado] VARCHAR(1020) NOT NULL,
   [movimiento] VARCHAR(1020) NOT NULL,
   [acciones] INTEGER NOT NULL,
   [saldoacomulado] INTEGER NOT NULL,
   [fechas] DATE,
   [saldo] INTEGER,
   [retiro] INTEGER,
   [venta] INTEGER,
   [precioventa] FLOAT,
   [fechaanterior] DATE,
   [comision] FLOAT
);

-- Ok (0 ms)

DROP TABLE [asociado_reforma];

-- Failed (31 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'asociado_reforma', because it does not exist or you do not have permission.

CREATE TABLE [asociado_reforma]
(
   [id] INTEGER NOT NULL,
   [id_reforma] INTEGER,
   [fecha_evaluacion] DATE,
   [bandera] 
);

-- Failed (0 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]The definition for column 'bandera' must include a data type.

DROP TABLE [contacto];

-- Failed (16 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'contacto', because it does not exist or you do not have permission.

DROP TABLE [carga_inicial];

-- Failed (16 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'carga_inicial', because it does not exist or you do not have permission.

DROP TABLE [employee];

-- Failed (15 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'employee', because it does not exist or you do not have permission.

CREATE TABLE [contacto]
(
   [id] INTEGER NOT NULL,
   [contact_user_id] VARCHAR(1020),
   [contact_name] VARCHAR(1020),
   [contact_ext] VARCHAR(1020),
   [contact_mail] VARCHAR(1020)
);

-- Ok (16 ms)

CREATE TABLE [carga_inicial]
(
   [asociado] INTEGER NOT NULL,
   [movimiento] VARCHAR(1020),
   [fecha_mov] DATE,
   [fecha_ant] DATE,
   [acciones] INTEGER,
   [acciones_compra] INTEGER,
   [acciones_venta] INTEGER,
   [acciones_baja] INTEGER,
   [acumulado] INTEGER,
   [costoinixaccion] FLOAT,
   [costoinitot] FLOAT,
   [costopromedioant] FLOAT,
   [costototal] FLOAT,
   [costopromediomov] FLOAT,
   [inpc_his] FLOAT,
   [inpc] FLOAT,
   [factor] FLOAT,
   [costopromedioact] FLOAT,
   [costopromacttotacc] FLOAT,
   [acciones_vendidas] FLOAT,
   [presioventaxaccion] FLOAT,
   [costoxaccionAct] FLOAT,
   [totalventa] FLOAT,
   [totalcosto] FLOAT,
   [comisionxventa] FLOAT,
   [perdidafiscal] FLOAT
);

-- Ok (0 ms)

CREATE TABLE [employee]
(
   [id] INTEGER NOT NULL,
   [first_name] VARCHAR(1020),
   [last_name] VARCHAR(1020),
   [salary] INTEGER
);

-- Ok (0 ms)

DROP TABLE [estatus];

-- Failed (31 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'estatus', because it does not exist or you do not have permission.

CREATE TABLE [estatus]
(
   [id] INTEGER NOT NULL,
   [nombre] VARCHAR(1020),
   [descripcion] VARCHAR(1020)
);

-- Ok (0 ms)

DROP TABLE [inpc];

-- Failed (31 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'inpc', because it does not exist or you do not have permission.

DROP TABLE [nivel];

-- Failed (32 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'nivel', because it does not exist or you do not have permission.

DROP TABLE [pais_moneda];

-- Failed (32 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'pais_moneda', because it does not exist or you do not have permission.

CREATE TABLE [inpc]
(
   [fecha] DATE NOT NULL,
   [inpc] FLOAT
);

-- Ok (0 ms)

CREATE TABLE [nivel]
(
   [id] INTEGER NOT NULL,
   [clave] VARCHAR(1020),
   [descripcion] VARCHAR(1020),
   [porcentaje] SMALLINT
);

-- Ok (0 ms)

DROP TABLE [parametro];

-- Failed (31 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'parametro', because it does not exist or you do not have permission.

CREATE TABLE [pais_moneda]
(
   [id_pais] VARCHAR(1020) NOT NULL,
   [desc_pais] VARCHAR(1020),
   [faconv_dolar] FLOAT,
   [numero_salarios] INTEGER,
   [fecha_actualizacion] DATE
);

-- Ok (0 ms)

CREATE TABLE [parametro]
(
   [id] INTEGER NOT NULL,
   [descripcion] VARCHAR(1020),
   [nombre] VARCHAR(1020),
   [valor] VARCHAR(1020),
   [tipo_valor] INTEGER,
   [editable] 
);

-- Failed (0 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]The definition for column 'editable' must include a data type.

DROP TABLE [puesto];

-- Failed (31 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'puesto', because it does not exist or you do not have permission.

DROP TABLE [precio_accion];

-- Failed (31 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'precio_accion', because it does not exist or you do not have permission.

CREATE TABLE [puesto]
(
   [id] INTEGER NOT NULL,
   [descripcion] VARCHAR(1020),
   [id_nivel] INTEGER
);

-- Ok (0 ms)

DROP TABLE [perfil];

-- Failed (47 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'perfil', because it does not exist or you do not have permission.

CREATE TABLE [precio_accion]
(
   [id] INTEGER NOT NULL,
   [fecha] DATE,
   [precio_accion] DECIMAL(19,2)
);

-- Ok (0 ms)

CREATE TABLE [perfil]
(
   [id] INTEGER NOT NULL,
   [perfil] VARCHAR(1020),
   [perfil_scu] VARCHAR(1020)
);

-- Ok (15 ms)

DROP TABLE [razon_rechazo];

-- Failed (31 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'razon_rechazo', because it does not exist or you do not have permission.

CREATE TABLE [razon_rechazo]
(
   [id] INTEGER NOT NULL,
   [descripcion] VARCHAR(1020)
);

-- Ok (0 ms)

DROP TABLE [tipo_autorizacion];

-- Failed (16 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'tipo_autorizacion', because it does not exist or you do not have permission.

DROP TABLE [tipo_asignacion];

-- Failed (32 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'tipo_asignacion', because it does not exist or you do not have permission.

CREATE TABLE [tipo_autorizacion]
(
   [id] INTEGER NOT NULL,
   [descripcion] VARCHAR(1020)
);

-- Ok (0 ms)

CREATE TABLE [tipo_asignacion]
(
   [id] INTEGER NOT NULL,
   [tipo] VARCHAR(1020)
);

-- Ok (0 ms)

DROP TABLE [usuario];

-- Failed (31 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'usuario', because it does not exist or you do not have permission.

DROP TABLE [tipo_venta];

-- Failed (47 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'tipo_venta', because it does not exist or you do not have permission.

CREATE TABLE [usuario]
(
   [id] INTEGER NOT NULL,
   [id_usuario] VARCHAR(1020),
   [nombre] VARCHAR(1020),
   [password] VARCHAR(1020),
   [correo] VARCHAR(1020),
   [id_asociado] INTEGER
);

-- Ok (0 ms)

CREATE TABLE [tipo_venta]
(
   [id] INTEGER NOT NULL,
   [descripcion] VARCHAR(1020),
   [tiene_cuentas] 
);

-- Failed (0 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]The definition for column 'tiene_cuentas' must include a data type.

DROP TABLE [asignacion];

-- Failed (15 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'asignacion', because it does not exist or you do not have permission.

DROP TABLE [acciones_reportar];

-- Failed (31 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'acciones_reportar', because it does not exist or you do not have permission.

CREATE TABLE [asignacion]
(
   [id] INTEGER NOT NULL,
   [monto_normal] DECIMAL(19,2),
   [monto_adicional] DECIMAL(19,2),
   [monto_especial] DECIMAL(19,2),
   [monto_asignacion] DECIMAL(19,2),
   [id_estatus] INTEGER NOT NULL,
   [id_tipo_asignacion] INTEGER NOT NULL,
   [fecha_captura] DATE,
   [porcentaje_acciones_disponibles] SMALLINT,
   [id_asignacion_previa] INTEGER NOT NULL,
   [usuario_captura] INTEGER NOT NULL,
   [acciones_asignadas] DECIMAL(19,2),
   [acciones_remanentes] DECIMAL(19,2),
   [numero_asociados_participantes] INTEGER,
   [numero_asociados_rechazados] INTEGER,
   [orden_autorizacion] INTEGER,
   [numero_asignacion] INTEGER
);

-- Ok (0 ms)

CREATE TABLE [acciones_reportar]
(
   [id] INTEGER NOT NULL,
   [id_contrato] INTEGER,
   [id_asignacion] INTEGER,
   [numero_acciones_reportar] INTEGER,
   [id_estatus] INTEGER NOT NULL,
   [fecha_registro] DATE,
   [fecha_proceso] DATE,
   [tipo_proceso] INTEGER,
   [solicitud_activa] 
);

-- Failed (15 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]The definition for column 'solicitud_activa' must include a data type.

DROP TABLE [asociado_cuenta];

-- Failed (31 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'asociado_cuenta', because it does not exist or you do not have permission.

CREATE TABLE [asociado_cuenta]
(
   [id] INTEGER NOT NULL,
   [id_asociado] INTEGER NOT NULL,
   [id_tipo_cuenta] INTEGER NOT NULL
);

-- Ok (0 ms)

DROP TABLE [autorizacion];

-- Failed (31 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'autorizacion', because it does not exist or you do not have permission.

DROP TABLE [asignacion_previa];

-- Failed (31 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'asignacion_previa', because it does not exist or you do not have permission.

DROP TABLE [asociado];

-- Failed (47 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'asociado', because it does not exist or you do not have permission.

CREATE TABLE [autorizacion]
(
   [id] INTEGER NOT NULL,
   [fecha_captura] DATE,
   [id_usuario_captura] INTEGER NOT NULL,
   [id_perfil_captura] INTEGER NOT NULL,
   [id_solicitud] INTEGER,
   [id_tipo_autorizacion] INTEGER NOT NULL,
   [id_estatus] INTEGER NOT NULL,
   [comentario] VARCHAR(1020)
);

-- Ok (0 ms)

CREATE TABLE [asignacion_previa]
(
   [id] INTEGER NOT NULL,
   [fecha_captura] DATE,
   [monto_normal] DECIMAL(19,2),
   [monto_adicional] DECIMAL(19,2),
   [monto_conceptos] DECIMAL(19,2),
   [monto_total] DECIMAL(19,2),
   [fecha_contrato] DATE,
   [cantidad_acciones_pedidas] DECIMAL(19,2),
   [cantidad_acciones_compradas] DECIMAL(19,2),
   [precio_unitario_accion] DECIMAL(19,2),
   [precio_total_acciones] DECIMAL(19,2),
   [id_tipo_asignacion] INTEGER NOT NULL,
   [id_usuario_genera] INTEGER NOT NULL,
   [id_estatus] INTEGER NOT NULL,
   [orden_autorizacion] INTEGER
);

-- Ok (0 ms)

CREATE TABLE [asociado]
(
   [id] INTEGER NOT NULL,
   [status] VARCHAR(1020),
   [nombre] VARCHAR(1020),
   [calificacion] FLOAT,
   [fecha_evaluacion] DATE,
   [sueldo_mensual_actual] DECIMAL(19,2),
   [sueldo_mensual_anterior] DECIMAL(19,2),
   [fecha_ejecutivo] DATE,
   [fecha_efectiva] DATE,
   [fecha_baja] DATE,
   [correo] VARCHAR(1020),
   [fecha_actualizacion] DATE,
   [especial] ,
   [jubilado] ,
   [bandera_reforma] INTEGER,
   [id_pais] VARCHAR(1020),
   [id_puesto_actual] INTEGER NOT NULL
);

-- Failed (0 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]The definition for column 'especial' must include a data type.

DROP TABLE [bitacora];

-- Failed (31 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'bitacora', because it does not exist or you do not have permission.

CREATE TABLE [bitacora]
(
   [id] INTEGER NOT NULL,
   [fecha_registro] DATE,
   [mensaje] VARCHAR(1020),
   [id_usuario_genera] INTEGER,
   [id_asociado_afectado] INTEGER
);

-- Ok (0 ms)

DROP TABLE [calendario_asociado];

-- Failed (16 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'calendario_asociado', because it does not exist or you do not have permission.

DROP TABLE [calendario];

-- Failed (47 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'calendario', because it does not exist or you do not have permission.

CREATE TABLE [calendario_asociado]
(
   [id] INTEGER NOT NULL,
   [id_calendario] INTEGER NOT NULL,
   [id_asociado] INTEGER NOT NULL
);

-- Ok (0 ms)

DROP TABLE [calendario_nivel];

-- Failed (47 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'calendario_nivel', because it does not exist or you do not have permission.

CREATE TABLE [calendario]
(
   [id] INTEGER NOT NULL,
   [periodo] INTEGER,
   [fecha_captura] DATE,
   [id_estatus] INTEGER NOT NULL,
   [id_usuario_captura] INTEGER NOT NULL,
   [version] INTEGER,
   [orden_autorizacion] INTEGER
);

-- Ok (0 ms)

CREATE TABLE [calendario_nivel]
(
   [id] INTEGER NOT NULL,
   [id_calendario] INTEGER NOT NULL,
   [id_nivel] INTEGER NOT NULL
);

-- Ok (0 ms)

DROP TABLE [concepto_asignacion];

-- Failed (16 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'concepto_asignacion', because it does not exist or you do not have permission.

CREATE TABLE [concepto_asignacion]
(
   [id] INTEGER NOT NULL,
   [concepto] VARCHAR(1020),
   [monto] DECIMAL(19,2),
   [porcentaje] SMALLINT,
   [total] DECIMAL(19,2),
   [id_asignacion_previa] INTEGER NOT NULL
);

-- Ok (16 ms)

DROP TABLE [contrato];

-- Failed (15 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'contrato', because it does not exist or you do not have permission.

CREATE TABLE [contrato]
(
   [id] INTEGER NOT NULL,
   [numero_contrato] VARCHAR(1020),
   [fecha_entrega_rh] DATE,
   [fecha_entrega_fiduciario] DATE,
   [fecha_revisa_fiduciario] DATE,
   [fecha_entrega_ejecutivo] DATE,
   [acciones_asignadas] INTEGER,
   [acciones_vendidas] INTEGER,
   [fecha_captura] DATE,
   [id_asignacion] INTEGER,
   [id_asociado] INTEGER,
   [id_estatus] INTEGER NOT NULL
);

-- Ok (0 ms)

DROP TABLE [elemento_asociado_cuenta];

-- Failed (47 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'elemento_asociado_cuenta', because it does not exist or you do not have permission.

DROP TABLE [detalle_venta_acciones];

-- Failed (47 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'detalle_venta_acciones', because it does not exist or you do not have permission.

CREATE TABLE [elemento_asociado_cuenta]
(
   [id] INTEGER NOT NULL,
   [valor_elemento] VARCHAR(1020),
   [id_elemento_tipo_cuenta] INTEGER NOT NULL,
   [id_asociado_cuenta] INTEGER NOT NULL
);

-- Ok (0 ms)

DROP TABLE [elemento_tipo_cuenta];

-- Failed (31 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'elemento_tipo_cuenta', because it does not exist or you do not have permission.

CREATE TABLE [detalle_venta_acciones]
(
   [id] INTEGER NOT NULL,
   [id_contrato] INTEGER NOT NULL,
   [porcentaje_disponible] SMALLINT,
   [id_solicitud_venta_acciones] INTEGER NOT NULL,
   [acciones_a_vender] INTEGER,
   [acciones_vendidas] INTEGER,
   [id_estatus] INTEGER NOT NULL,
   [fecha_proceso_gc] DATE,
   [fecha_venta] DATE,
   [precio_venta] DECIMAL(19,2),
   [precio_asignacion] DECIMAL(19,2),
   [comision_banco] DECIMAL(19,2),
   [importe_asociado] DECIMAL(19,2),
   [isr] DECIMAL(19,2),
   [comentario] VARCHAR(1020),
   [acciones_fisicas] INTEGER
);

-- Ok (0 ms)

CREATE TABLE [elemento_tipo_cuenta]
(
   [id] INTEGER NOT NULL,
   [descripcion] VARCHAR(1020),
   [valor_nulo] ,
   [valor_numerico] ,
   [caracteres_valor] INTEGER,
   [id_tipo_cuenta] INTEGER NOT NULL
);

-- Failed (0 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]The definition for column 'valor_nulo' must include a data type.

DROP TABLE [flujo_autorizacion];

-- Failed (31 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'flujo_autorizacion', because it does not exist or you do not have permission.

CREATE TABLE [flujo_autorizacion]
(
   [id] INTEGER NOT NULL,
   [orden_autorizacion] INTEGER,
   [id_tipo_autorizacion] INTEGER,
   [id_perfil_autorizador] INTEGER
);

-- Ok (0 ms)

DROP TABLE [menu_perfil];

-- Failed (31 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'menu_perfil', because it does not exist or you do not have permission.

DROP TABLE [horario];

-- Failed (31 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'horario', because it does not exist or you do not have permission.

DROP TABLE [menu];

-- Failed (47 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'menu', because it does not exist or you do not have permission.

CREATE TABLE [menu_perfil]
(
   [id] INTEGER NOT NULL,
   [id_menu] INTEGER,
   [id_perfil] INTEGER
);

-- Ok (0 ms)

CREATE TABLE [horario]
(
   [id] INTEGER NOT NULL,
   [id_perfil] INTEGER,
   [dia] SMALLINT,
   [hora_inicio] DATE,
   [hora_fin] DATE
);

-- Ok (0 ms)

CREATE TABLE [menu]
(
   [id] INTEGER NOT NULL,
   [nombre] VARCHAR(1020),
   [descripcion] VARCHAR(1020),
   [predecesor] INTEGER,
   [accion] VARCHAR(1020),
   [orden] INTEGER
);

-- Ok (0 ms)

DROP TABLE [periodo_calendario];

-- Failed (31 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'periodo_calendario', because it does not exist or you do not have permission.

CREATE TABLE [periodo_calendario]
(
   [id] INTEGER NOT NULL,
   [fecha_inicio] DATE,
   [fecha_fin] DATE,
   [id_calendario] INTEGER NOT NULL
);

-- Ok (16 ms)

DROP TABLE [solicitud_venta_acciones];

-- Failed (31 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'solicitud_venta_acciones', because it does not exist or you do not have permission.

CREATE TABLE [solicitud_venta_acciones]
(
   [id] INTEGER NOT NULL,
   [fecha_solicitud] DATE,
   [id_usuario_captura] INTEGER NOT NULL,
   [id_estatus] INTEGER NOT NULL,
   [id_cuenta_deposito] INTEGER,
   [id_cuenta_acciones] INTEGER,
   [id_tipo_venta] INTEGER NOT NULL,
   [fecha_propuesta_venta] DATE,
   [orden_autorizacion] INTEGER,
   [comentario] VARCHAR(1020)
);

-- Ok (16 ms)

DROP TABLE [usuario_asignacion_previa];

-- Failed (32 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'usuario_asignacion_previa', because it does not exist or you do not have permission.

DROP TABLE [tipo_cuenta];

-- Failed (62 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'tipo_cuenta', because it does not exist or you do not have permission.

DROP TABLE [usuario_asignacion];

-- Failed (62 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'usuario_asignacion', because it does not exist or you do not have permission.

CREATE TABLE [usuario_asignacion_previa]
(
   [id] INTEGER NOT NULL,
   [nivel_puesto] VARCHAR(1020),
   [salario] DECIMAL(19,2),
   [salario_anterior] DECIMAL(19,2),
   [porcentaje] SMALLINT,
   [monto_normal] DECIMAL(19,2),
   [monto_adicional] DECIMAL(19,2),
   [monto_total] DECIMAL(19,2),
   [id_asociado] INTEGER NOT NULL,
   [id_asignacion_previa] INTEGER NOT NULL
);

-- Ok (0 ms)

CREATE TABLE [tipo_cuenta]
(
   [id] INTEGER NOT NULL,
   [descripcion] VARCHAR(1020),
   [id_tipo_venta] INTEGER NOT NULL
);

-- Ok (0 ms)

CREATE TABLE [usuario_asignacion]
(
   [id] INTEGER NOT NULL,
   [nivel_puesto] VARCHAR(1020),
   [salario] DECIMAL(19,2),
   [salario_anterior] DECIMAL(19,2),
   [porcentaje_puesto] SMALLINT,
   [id_asociado] INTEGER NOT NULL,
   [monto_normal] DECIMAL(19,2),
   [monto_adicional] DECIMAL(19,2),
   [monto_especial] DECIMAL(19,2),
   [monto_total] DECIMAL(19,2),
   [id_asignacion] INTEGER NOT NULL,
   [comentario_especial] VARCHAR(1020),
   [comentario_menor_tres] VARCHAR(1020)
);

-- Ok (0 ms)

DROP TABLE [usuario_perfil];

-- Failed (31 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'usuario_perfil', because it does not exist or you do not have permission.

DROP TABLE [usuario_rechazado];

-- Failed (16 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]Cannot drop the table 'usuario_rechazado', because it does not exist or you do not have permission.

CREATE TABLE [usuario_perfil]
(
   [id] INTEGER NOT NULL,
   [id_usuario] INTEGER,
   [id_perfil] INTEGER,
   [estatus] INTEGER
);

-- Ok (0 ms)

CREATE TABLE [usuario_rechazado]
(
   [id] INTEGER NOT NULL,
   [comentario] VARCHAR(1020),
   [id_asignacion] INTEGER NOT NULL,
   [id_razon_rechazo] INTEGER NOT NULL,
   [id_asociado] INTEGER NOT NULL
);

-- Ok (0 ms)