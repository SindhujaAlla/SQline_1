-- SQLines Data 3.3.73 x64 - Database Migration Tool.
-- Copyright (c) 2020 SQLines. All Rights Reserved.

-- Failed DDL SQL statements executed for the target database

-- Current timestamp: 2020-10-29 16:33:22.260

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

CREATE TABLE [sys_config]
(
   [variable] VARCHAR(512) NOT NULL,
   [value] VARCHAR(512),
   [set_time] ,
   [set_by] VARCHAR(512)
);

-- Failed (0 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]The definition for column 'set_time' must include a data type.

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

CREATE TABLE [asociado_reforma]
(
   [id] INTEGER NOT NULL,
   [id_reforma] INTEGER,
   [fecha_evaluacion] DATE,
   [bandera] 
);

-- Failed (0 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]The definition for column 'bandera' must include a data type.

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

CREATE TABLE [tipo_venta]
(
   [id] INTEGER NOT NULL,
   [descripcion] VARCHAR(1020),
   [tiene_cuentas] 
);

-- Failed (0 ms)
-- [Microsoft][SQL Server Native Client 11.0][SQL Server]The definition for column 'tiene_cuentas' must include a data type.

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