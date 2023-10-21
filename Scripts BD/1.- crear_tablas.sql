USE [BD_NEGOCIOSREP]

/****** Object:  Table [dbo].[ge_actividades]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_actividades](
	[id_actividad] [int] IDENTITY(1,1) NOT NULL,
	[actividad] [nvarchar](200) NULL,
	[departamento_ti] [nvarchar](50) NULL,
	[area_usuario] [nvarchar](50) NULL,
	[interesado] [nvarchar](50) NULL,
	[responsable] [nvarchar](50) NULL,
	[fecha_solicitud] [datetime] NULL,
	[fecha_asignacion] [datetime] NULL,
	[fecha_fin] [datetime] NULL,
	[estado] [nvarchar](50) NULL,
	[prioridad] [decimal](18, 6) NULL,
	[avance] [decimal](18, 6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_amortizaciones]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_amortizaciones](
	[id_amortizacion] [int] IDENTITY(0,1) NOT NULL,
	[id_cronograma] [int] NOT NULL,
	[id_cliente] [int] NOT NULL,
	[id_establecimiento] [int] NOT NULL,
	[id_asesor] [int] NOT NULL,
	[idEstadoCuota] [int] NOT NULL,
	[Código crédito] [int] NOT NULL,
	[Nombre del Cliente] [nvarchar](250) NULL,
	[Fecha Programada] [datetime] NULL,
	[Fecha de Pago] [datetime] NULL,
	[Capital Programado] [decimal](18, 4) NULL,
	[Interes Programado] [decimal](18, 4) NULL,
	[Mora Programado] [decimal](18, 4) NULL,
	[Otros Programado] [decimal](18, 4) NULL,
	[Capital pagado] [decimal](18, 4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_asesores]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_asesores](
	[id_asesor] [int] IDENTITY(1,1) NOT NULL,
	[id_categoria] [int] NOT NULL,
	[codigo_asesor] [int] NULL,
	[asesor] [nvarchar](100) NULL,
	[fecha_ingreso] [datetime] NULL,
	[dni] [nvarchar](12) NULL,
 CONSTRAINT [PK_ge_asesores] PRIMARY KEY CLUSTERED 
(
	[id_asesor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_bimers]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_bimers](
	[agente_bimer] [nvarchar](50) NULL,
	[dFechaHora] [datetime] NULL,
	[cTipoDocumento] [nvarchar](255) NULL,
	[cDocumento] [nvarchar](255) NULL,
	[cMSISDN] [float] NULL,
	[cNNombre] [nvarchar](255) NULL,
	[cNApellido] [nvarchar](255) NULL,
	[EsColaborador] [float] NULL,
	[cDepartamento] [nvarchar](255) NULL,
	[cProvincia] [nvarchar](255) NULL,
	[cDistrito] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_bims]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_bims](
	[dFechaHora] [datetime] NULL,
	[cTipoDocumento] [nvarchar](255) NULL,
	[cDocumento] [float] NULL,
	[cMSISDN] [float] NULL,
	[cNNombre] [nvarchar](255) NULL,
	[cNApellido] [nvarchar](255) NULL,
	[EsColaborador] [float] NULL,
	[cDepartamento] [nvarchar](255) NULL,
	[cProvincia] [nvarchar](255) NULL,
	[cDistrito] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_campañas]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_campañas](
	[id_campaña] [int] IDENTITY(1,1) NOT NULL,
	[nombre_campaña] [nvarchar](200) NULL,
	[responsable] [nvarchar](200) NULL,
	[fecha_inicio] [datetime] NULL,
	[fecha_fin] [datetime] NULL,
	[version] [int] NULL,
 CONSTRAINT [PK_ge_campañas] PRIMARY KEY CLUSTERED 
(
	[id_campaña] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_canales]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_canales](
	[id_canal] [int] IDENTITY(0,1) NOT NULL,
	[canal] [nvarchar](50) NULL,
 CONSTRAINT [PK_ge_canales] PRIMARY KEY CLUSTERED 
(
	[id_canal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_castigos]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_castigos](
	[id_fecha] [int] NOT NULL,
	[id_cronograma] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_categoria_productos]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_categoria_productos](
	[id_categoria_producto] [int] IDENTITY(1,1) NOT NULL,
	[categoria_producto] [nvarchar](100) NULL,
	[sub_categoria] [nvarchar](100) NULL,
	[Sector] [nvarchar](50) NULL,
 CONSTRAINT [PK_ge_categoria_productos] PRIMARY KEY CLUSTERED 
(
	[id_categoria_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_categorias]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_categorias](
	[id_categoria] [int] IDENTITY(1,1) NOT NULL,
	[categoria] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ge_categorias] PRIMARY KEY CLUSTERED 
(
	[id_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_clientes]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_clientes](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[codigo_cliente] [int] NOT NULL,
	[dni] [nvarchar](50) NULL,
	[cliente] [nvarchar](200) NULL,
	[genero] [nvarchar](50) NULL,
	[estado_civil] [nvarchar](50) NULL,
	[clasificacion_interna] [nvarchar](50) NULL,
	[tipo_cliente] [nvarchar](50) NULL,
	[fecha_nacimiento] [datetime] NULL,
	[ubigeo_negocio] [nvarchar](50) NULL,
	[ubigeo_domicilio] [nvarchar](50) NULL,
	[nro_creditos_caja] [int] NULL,
	[fecha_inicio_actividades] [datetime] NULL,
	[siglas] [nvarchar](5) NULL,
	[direccion] [nvarchar](250) NULL,
	[tipo_vivienda] [nvarchar](100) NULL,
	[direccion_negocio] [nvarchar](200) NULL,
	[distrito_negocio] [nvarchar](120) NULL,
	[referencia_negocio] [nvarchar](50) NULL,
	[direccion_domicilio] [nvarchar](200) NULL,
	[distrito_domicilio] [nvarchar](120) NULL,
	[referencia_domicilio] [nvarchar](50) NULL,
	[telefono] [nvarchar](152) NULL,
	[codigo_sbs] [nvarchar](50) NULL,
	[dni_conyugue] [nvarchar](50) NULL,
	[lat] [varchar](100) NULL,
	[lon] [varchar](100) NULL,
 CONSTRAINT [PK_ge_clientes] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_cobranzas]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_cobranzas](
	[id_fecha] [int] NOT NULL,
	[fechaproceso] [date] NULL,
	[CodCliente] [int] NULL,
	[idCuenta] [int] NULL,
	[Region] [varchar](120) NULL,
	[Oficina] [varchar](120) NULL,
	[EOB] [varchar](120) NULL,
	[Cliente] [varchar](120) NULL,
	[GrupoSolidario] [varchar](150) NULL,
	[TramoMesPasado] [varchar](50) NULL,
	[Tramo] [varchar](50) NULL,
	[ProbabilidadPago] [varchar](30) NULL,
	[meta] [decimal](21, 6) NULL,
	[metaConsiderar] [decimal](21, 6) NULL,
	[Avance] [numeric](20, 4) NULL,
	[TopContencion] [varchar](15) NOT NULL,
	[SituacionContable] [varchar](100) NULL,
	[TipoCred] [varchar](100) NULL,
	[Producto] [varchar](100) NULL,
	[DiaImpacto] [date] NULL,
	[SaldoCapital] [money] NULL,
	[CapitalAtrasado] [money] NULL,
	[Cod1] [int] NOT NULL,
	[CapitalVencidoInicial] [money] NULL,
	[CapitalVencidoActual] [numeric](19, 4) NULL,
	[ReduccionDeSV] [numeric](20, 4) NULL,
	[Pago] [varchar](8) NOT NULL,
	[DiasAtraso] [int] NULL,
	[Moneda] [int] NULL,
	[NroCuotas] [int] NULL,
	[NroCuotasPagadas] [int] NULL,
	[fechaDesembolso] [date] NULL,
	[Calificacion] [varchar](10) NULL,
	[Provision] [money] NULL,
	[Analista] [varchar](150) NULL,
	[telefono] [varchar](160) NULL,
	[distrito] [varchar](120) NULL,
	[direccion] [varchar](255) NULL,
	[FechaUltimoPago] [date] NULL,
	[MesAñoDesembolso] [nvarchar](4000) NULL,
	[AsignadoSistema] [varchar](150) NULL,
	[Gestion] [varchar](6) NULL,
	[AsignacionTercerizada] [varchar](60) NULL,
	[callCenter] [varchar](150) NULL,
	[AñoDesembolso] [int] NULL,
	[MenorA2000] [varchar](12) NOT NULL,
	[Caidos] [nvarchar](4000) NULL,
	[SaldoVencidoCierre] [money] NULL,
	[ExpuestoProv] [int] NULL,
	[PROVISIONES_STRESS] [money] NULL,
	[VariacionProv] [money] NULL,
	[MaxCalificacion6m] [varchar](10) NULL,
	[numEntidades] [smallint] NULL,
	[ImpactoMes] [money] NULL,
	[Metodologia] [varchar](15) NOT NULL,
	[ProvisionCierre] [money] NULL,
	[MenorA5000] [varchar](2) NOT NULL,
	[MontoCob] [money] NULL,
	[CodCob] [nvarchar](max) NULL,
	[nroVisitas] [int] NULL,
	[nroHojasRuta] [int] NULL,
	[nroContactoCliente] [int] NULL,
	[totalGestion] [int] NULL,
	[Gestionado] [varchar](22) NOT NULL,
	[RecuEfectiva] [money] NULL,
	[Frecuencia] [varchar](20) NOT NULL,
	[EstadoCredito] [varchar](9) NULL,
	[encargado] [varchar](150) NULL,
	[SaldoTotal] [money] NULL,
	[lReprograma] [int] NULL,
	[Condonado] [varchar](2) NOT NULL,
	[UltimaFechaCondonacion] [date] NULL,
	[CondonadoCapitalInteres] [decimal](38, 2) NULL,
	[nroCondonaciones] [int] NULL,
	[CondonadoMes] [varchar](2) NOT NULL,
	[TotalCapitalMes] [decimal](38, 2) NULL,
	[TotalInteresMes] [decimal](38, 2) NULL,
	[CondonadoCapitalInteresMes] [decimal](38, 2) NULL,
	[DiasAtrasoPago] [smallint] NULL,
	[TotalRptCondonado] [decimal](14, 2) NULL,
	[ResponsableProvision] [varchar](250) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_compromisos]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_compromisos](
	[Codigo Cliente] [float] NULL,
	[Periodo] [float] NULL,
	[Monto] [float] NULL,
	[negocio_funciona] [nvarchar](255) NULL,
	[mismo_negocio] [nvarchar](255) NULL,
	[Region] [nvarchar](255) NULL,
	[Establecimiento] [nvarchar](255) NULL,
	[codigo_asesor] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_control]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_control](
	[fecha] [datetime] NULL,
	[fecha_inicio] [datetime] NULL,
	[fecha_fin] [datetime] NULL,
	[tipo_fecha] [int] NULL,
	[fecha_scoring] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_conyuges]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_conyuges](
	[idCli] [int] NULL,
	[idCliConyuge] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_credirapp]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_credirapp](
	[dni_encuestador] [varchar](max) NULL,
	[dni_cliente] [varchar](20) NOT NULL,
	[nombre_cliente] [varchar](512) NOT NULL,
	[edad] [int] NOT NULL,
	[genero] [varchar](20) NOT NULL,
	[estado_civil] [varchar](20) NOT NULL,
	[celular] [varchar](20) NOT NULL,
	[id_encuesta] [int] NOT NULL,
	[codigo_encuesta] [varchar](128) NULL,
	[id_usuario] [int] NULL,
	[id_tipo_encuesta] [int] NULL,
	[tipo_encuesta] [varchar](512) NULL,
	[feria] [varchar](512) NULL,
	[fecha_registro] [datetime] NULL,
	[fecha_sincronizacion] [datetime] NULL,
	[flag_credito] [varchar](2) NOT NULL,
	[cRespuesta] [varchar](max) NULL,
	[rspta_1] [varchar](max) NULL,
	[rspta_2] [varchar](max) NULL,
	[rspta_3] [varchar](max) NULL,
	[rspta_4] [varchar](max) NULL,
	[rspta_5] [varchar](max) NULL,
	[rspta_6] [varchar](max) NULL,
	[rspta_7] [varchar](max) NULL,
	[rspta_8] [varchar](max) NULL,
	[rspta_9] [varchar](max) NULL,
	[rspta_10] [varchar](max) NULL,
	[rspta_11] [varchar](max) NULL,
	[rspta_12] [varchar](max) NULL,
	[rspta_13] [varchar](max) NULL,
	[rspta_14] [varchar](max) NULL,
	[rspta_15] [varchar](max) NULL,
	[rspta_16] [varchar](max) NULL,
	[rspta_17] [varchar](max) NULL,
	[rspta_18] [varchar](max) NULL,
	[rspta_19] [varchar](max) NULL,
	[rspta_20] [varchar](max) NULL,
	[rspta_21] [varchar](max) NULL,
	[rspta_22] [varchar](max) NULL,
	[rspta_23] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_cronograma_garantias]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_cronograma_garantias](
	[id_cronograma_garantia] [int] IDENTITY(1,1) NOT NULL,
	[id_cronograma] [int] NULL,
	[id_garantia] [int] NULL,
 CONSTRAINT [PK_ge_cronograma_garantia] PRIMARY KEY CLUSTERED 
(
	[id_cronograma_garantia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_cronogramas]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_cronogramas](
	[id_cronograma] [int] IDENTITY(1,1) NOT NULL,
	[codigo_credito] [int] NOT NULL,
	[codigo_solicitud] [int] NOT NULL,
	[monto] [decimal](18, 4) NULL,
	[plazo] [int] NULL,
	[tasa] [decimal](18, 4) NULL,
	[dias_atraso] [int] NULL,
	[tipo_periodo] [nvarchar](50) NULL,
	[capital_pagar] [decimal](18, 4) NULL,
	[capital_pagado] [decimal](18, 4) NULL,
	[interes_pagar] [decimal](18, 4) NULL,
	[interes_pagado] [decimal](18, 4) NULL,
	[mora_pagar] [decimal](18, 4) NULL,
	[mora_pagado] [decimal](18, 4) NULL,
	[otros_pagar] [decimal](18, 4) NULL,
	[otros_pagado] [decimal](18, 4) NULL,
	[nro_cuotas] [int] NULL,
	[nro_cuotas_pagadas] [int] NULL,
	[nro_cuotas_pendientes] [int] NULL,
	[nro_cuotas_vencidas] [int] NULL,
	[tip_credito_sbs] [nvarchar](50) NULL,
	[fecha_ultimo_pago] [datetime] NULL,
	[fecha_vencimiento_cuota_actual] [datetime] NULL,
	[fecha_vencimiento_cuota_mas_atrasada] [datetime] NULL,
	[fecha_condonacion] [datetime] NULL,
	[capital_condonado] [decimal](18, 4) NULL,
	[interes_condonado] [decimal](18, 4) NULL,
	[mora_condonado] [decimal](18, 4) NULL,
	[fecha_desembolso] [datetime] NULL,
	[id_asesor_origen] [int] NULL,
	[frecuencia] [nvarchar](250) NULL,
	[destino] [nvarchar](250) NULL,
	[id_asesor_promotor] [int] NULL,
 CONSTRAINT [PK_ge_cronogramas] PRIMARY KEY CLUSTERED 
(
	[id_cronograma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_destino_campaña]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_destino_campaña](
	[id_destino_campaña] [int] IDENTITY(0,1) NOT NULL,
	[destino_campaña] [nvarchar](150) NULL,
 CONSTRAINT [PK_ge_destino_campaña] PRIMARY KEY CLUSTERED 
(
	[id_destino_campaña] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_establecimientos]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_establecimientos](
	[id_establecimiento] [int] IDENTITY(1,1) NOT NULL,
	[codigo_establecimiento] [int] NULL,
	[codigo_oficina] [int] NULL,
	[establecimiento] [nvarchar](100) NULL,
	[oficina] [nvarchar](100) NULL,
	[region] [nvarchar](100) NULL,
 CONSTRAINT [PK_ge_establecimientos] PRIMARY KEY CLUSTERED 
(
	[id_establecimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_estados]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_estados](
	[id_estado] [int] IDENTITY(1,1) NOT NULL,
	[estado] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ge_estados] PRIMARY KEY CLUSTERED 
(
	[id_estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_fallecidos]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_fallecidos](
	[codigo_cliente] [int] NULL,
	[Cliente] [nvarchar](255) NULL,
	[Dni] [float] NULL,
	[Fecha_fallecimiento] [datetime] NULL,
	[Fecha_registro_caja] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_fechas]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_fechas](
	[id_Fecha] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[año] [int] NOT NULL,
	[mes] [int] NOT NULL,
	[dia] [int] NOT NULL,
	[fin_mes] [int] NULL,
	[dia_semana] [varchar](9) NOT NULL,
	[dia_laboral] [int] NULL,
 CONSTRAINT [PK_ge_fechas] PRIMARY KEY CLUSTERED 
(
	[id_Fecha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_fechas_no_laborables]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_fechas_no_laborables](
	[fecha_no_laborable] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_frecuencia_pagos]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_frecuencia_pagos](
	[id_frecuencia_pago] [int] NULL,
	[frecuencia_de_pagos] [char](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_garantias]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_garantias](
	[id_garantia] [int] IDENTITY(1,1) NOT NULL,
	[codigo_garantia] [int] NULL,
	[tipo_garantia] [nvarchar](100) NULL,
	[valor_comercial] [decimal](18, 4) NULL,
	[valor_real] [decimal](18, 4) NULL,
	[tasador] [nvarchar](200) NULL,
	[fecha_tasacion] [datetime] NULL,
 CONSTRAINT [PK_ge_garantias] PRIMARY KEY CLUSTERED 
(
	[id_garantia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_gestores]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_gestores](
	[id_gestor] [int] IDENTITY(1,1) NOT NULL,
	[codigo_gestor] [int] NULL,
	[gestor] [nvarchar](200) NULL,
 CONSTRAINT [PK_ge_gestores] PRIMARY KEY CLUSTERED 
(
	[id_gestor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_monedas]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_monedas](
	[id_moneda] [int] IDENTITY(1,1) NOT NULL,
	[moneda] [nvarchar](50) NULL,
 CONSTRAINT [PK_ge_monedas] PRIMARY KEY CLUSTERED 
(
	[id_moneda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_plan_pagos]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_plan_pagos](
	[id_cronograma] [int] NOT NULL,
	[nro_cronograma] [int] NOT NULL,
	[codigo_credito] [int] NOT NULL,
	[nro_cuota] [int] NOT NULL,
	[tipo_cuota] [int] NULL,
	[fecha_programada] [datetime] NULL,
	[fecha_pago] [datetime] NULL,
	[capital_programado] [decimal](18, 5) NULL,
	[capital_pagado] [decimal](18, 5) NULL,
	[interes_programado] [decimal](18, 5) NULL,
	[interes_pagado] [decimal](18, 5) NULL,
	[mora_programado] [decimal](18, 5) NULL,
	[mora_pagado] [decimal](18, 5) NULL,
	[otros_programado] [decimal](18, 5) NULL,
	[otros_pagado] [decimal](18, 5) NULL,
	[interes_compensatorio_programado] [decimal](18, 5) NULL,
	[interes_compensatorio_pagado] [decimal](18, 5) NULL,
	[fecha_calculo_mora] [datetime] NULL,
	[id_cliente] [int] NULL,
 CONSTRAINT [PK_ge_plan_pagos] PRIMARY KEY CLUSTERED 
(
	[id_cronograma] ASC,
	[nro_cronograma] ASC,
	[codigo_credito] ASC,
	[nro_cuota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_promotores]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_promotores](
	[id_promotor] [int] IDENTITY(0,1) NOT NULL,
	[id_asesor] [int] NULL,
	[id_nivel_promotor] [int] NULL,
	[id_establecimiento] [int] NULL,
	[dni] [nvarchar](20) NULL,
	[nombre] [nvarchar](200) NULL,
	[fecha_nacimiento] [date] NULL,
	[fecha_ingreso] [date] NULL,
	[fecha_cese] [date] NULL,
	[estado] [nvarchar](20) NULL,
	[celular] [float] NULL,
	[genero] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_reprogramaciones]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_reprogramaciones](
	[codigo_Cuenta] [float] NULL,
	[fecha_reprogramacion] [datetime] NULL,
	[Tipo de Repro] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_sbs]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_sbs](
	[codsbs] [bigint] NOT NULL,
	[fecha] [date] NOT NULL,
	[codTipoDocTrib] [char](1) NULL,
	[ruc] [char](11) NULL,
	[codTipoDocIden] [char](1) NULL,
	[docIdentidad] [varchar](12) NULL,
	[codTipoPersona] [char](1) NULL,
	[codTipoEmpresa] [char](1) NULL,
	[cantEmpresas] [smallint] NULL,
	[deudaCalif0] [money] NULL,
	[deudaCalif1] [money] NULL,
	[deudaCalif2] [money] NULL,
	[deudaCalif3] [money] NULL,
	[deudaCalif4] [money] NULL,
	[apPaterno] [varchar](100) NULL,
	[apMaterno] [varchar](100) NULL,
	[apCasada] [varchar](100) NULL,
	[PrimerNombre] [varchar](100) NULL,
	[SegundoNombre] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_sectores_economicos]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_sectores_economicos](
	[Cod_Sector] [nvarchar](255) NULL,
	[Descripcion_Sector] [nvarchar](255) NULL,
	[Cod_division] [nvarchar](255) NULL,
	[Descripcion_division] [nvarchar](255) NULL,
	[Cod_Ciiu] [nvarchar](255) NULL,
	[Descripcion_Ciiu] [nvarchar](255) NULL,
	[Sector] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_solicitudes]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_solicitudes](
	[id_solicitud] [int] IDENTITY(1,1) NOT NULL,
	[codigo_solicitud] [int] NOT NULL,
	[fecha_registro] [datetime] NULL,
	[tipo_operacion] [nvarchar](50) NULL,
	[estado] [nvarchar](50) NULL,
	[monto] [decimal](18, 4) NULL,
	[tasa] [decimal](18, 4) NULL,
	[codigo_producto] [int] NULL,
	[plazo] [int] NULL,
	[destino] [nvarchar](100) NULL,
	[codigo_asesor] [int] NULL,
	[codigo_cliente] [int] NULL,
	[flag_excepcion] [int] NULL,
 CONSTRAINT [PK_ge_solicitudes] PRIMARY KEY CLUSTERED 
(
	[id_solicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_sub_productos]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_sub_productos](
	[id_sub_producto] [int] IDENTITY(1,1) NOT NULL,
	[codigo_sub_producto] [int] NULL,
	[codigo_producto] [int] NULL,
	[sub_producto] [nvarchar](100) NULL,
	[producto] [nvarchar](100) NULL,
	[grupo_campaña] [nvarchar](100) NULL,
 CONSTRAINT [PK_ge_sub_productos] PRIMARY KEY CLUSTERED 
(
	[id_sub_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_tipo_asesor]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_tipo_asesor](
	[id_tipo_asesor] [int] NULL,
	[tipo_asesor] [nvarchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_tipo_cambio]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_tipo_cambio](
	[id_tipo_cambio] [int] IDENTITY(1,1) NOT NULL,
	[id_fecha] [int] NULL,
	[id_moneda] [int] NULL,
	[tipo_cambio] [decimal](18, 5) NULL,
 CONSTRAINT [PK_ge_tipo_cambio] PRIMARY KEY CLUSTERED 
(
	[id_tipo_cambio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_tipo_clientes]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_tipo_clientes](
	[id_tipo_cliente] [int] NOT NULL,
	[tipo_cliente] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_tipo_productos]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_tipo_productos](
	[id_producto] [int] NOT NULL,
	[producto] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_tramo_recuperaciones]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_tramo_recuperaciones](
	[id_tramo_recuperacion] [int] IDENTITY(1,1) NOT NULL,
	[tramo_recuperacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_ge_tramo_recuperaciones] PRIMARY KEY CLUSTERED 
(
	[id_tramo_recuperacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_transacciones_bimers]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_transacciones_bimers](
	[dFechaHoraTransac] [datetime] NULL,
	[cMSISDN] [int] NULL,
	[cMSISDNReceptor] [int] NULL,
	[cTipoTransaccion] [nvarchar](255) NULL,
	[nMonto] [decimal](10, 5) NULL,
	[cPerfilRemitente] [nvarchar](255) NULL,
	[cPerfilReceptor] [nvarchar](255) NULL,
	[cEmp] [nvarchar](255) NULL,
	[cContexto] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_transferencias]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_transferencias](
	[id_transferencia] [int] IDENTITY(1,1) NOT NULL,
	[id_fecha] [int] NULL,
	[id_cronograma] [int] NULL,
	[id_asesor_inicial] [int] NULL,
	[id_asesor_final] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_trasnferencias_anterior]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_trasnferencias_anterior](
	[id_transferencia] [int] IDENTITY(1,1) NOT NULL,
	[id_fecha] [int] NULL,
	[id_cronograma] [int] NULL,
	[id_asesor_inicial] [int] NULL,
	[id_asesor_final] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_ubigeos]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_ubigeos](
	[id_ubigeo] [int] IDENTITY(1,1) NOT NULL,
	[codigo_ubigeo] [nvarchar](50) NULL,
	[ubigeo] [nvarchar](200) NULL,
 CONSTRAINT [PK_ge_ubigeos] PRIMARY KEY CLUSTERED 
(
	[id_ubigeo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_ubigeos_detalle]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_ubigeos_detalle](
	[id_ubigeo] [int] NOT NULL,
	[ubigeo] [nvarchar](10) NULL,
	[departamento] [nvarchar](50) NULL,
	[provincia] [nvarchar](50) NULL,
	[distrito] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ge_ubigeos_peru]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ge_ubigeos_peru](
	[CodUbigeo] [nvarchar](255) NULL,
	[CodDPTO] [float] NULL,
	[CodProvincia] [float] NULL,
	[CodDistrito] [float] NULL,
	[NomUbigeo] [nvarchar](255) NULL,
	[CodUbig] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gt_evolutivo_mensual]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gt_evolutivo_mensual](
	[id_fecha] [int] NULL,
	[id_asesor] [int] NOT NULL,
	[id_establecimiento] [int] NOT NULL,
	[id_canal] [int] NULL,
	[region] [nvarchar](100) NULL,
	[establecimiento] [nvarchar](100) NULL,
	[asesor] [nvarchar](100) NULL,
	[fecha] [datetime] NULL,
	[categoria_producto] [nvarchar](100) NULL,
	[sub_categoria] [nvarchar](100) NULL,
	[canal] [nvarchar](50) NULL,
	[operaciones] [decimal](38, 4) NULL,
	[desembolso] [decimal](38, 6) NULL,
	[saldo] [decimal](38, 6) NULL,
	[saldo_vigente] [decimal](38, 6) NULL,
	[saldo_mora] [decimal](38, 6) NULL,
	[saldo_mora_8] [decimal](38, 4) NULL,
	[cliente] [int] NULL,
	[cliente_vigente] [int] NULL,
	[cliente_mora] [int] NULL,
	[s_Var_mes] [int] NULL,
	[s_var_mes_vigente] [int] NULL,
	[s_var_mes_mora] [int] NULL,
	[s_var_mes_mora_8] [decimal](38, 4) NULL,
	[n_var_mes] [int] NULL,
	[n_var_mes_vigente] [int] NULL,
	[n_var_mes_mora] [int] NULL,
	[ratio_CAR] [decimal](38, 6) NULL,
	[tpp_saldo] [decimal](38, 6) NULL,
	[tpp_saldo_vigente] [decimal](38, 6) NULL,
	[tpp_desembolso] [decimal](38, 6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gt_saldos]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gt_saldos](
	[id_fecha] [int] NULL,
	[id_establecimiento] [int] NOT NULL,
	[id_asesor] [int] NOT NULL,
	[id_gestor] [int] NOT NULL,
	[id_cliente] [int] NOT NULL,
	[id_sub_producto] [int] NOT NULL,
	[id_categoria_producto] [int] NOT NULL,
	[id_moneda] [int] NOT NULL,
	[id_cronograma] [int] NOT NULL,
	[id_estado] [int] NOT NULL,
	[id_tramo_recuperacion] [int] NOT NULL,
	[flag_refinanciado] [int] NOT NULL,
	[flag_reprogramado] [int] NOT NULL,
	[flag_condonado] [int] NULL,
	[s_des_dia] [decimal](14, 2) NULL,
	[s_des_mes] [decimal](33, 6) NULL,
	[saldo] [decimal](38, 6) NULL,
	[saldo_vigente] [decimal](38, 6) NULL,
	[saldo_vencido] [decimal](38, 6) NULL,
	[saldo_judicial] [decimal](38, 6) NULL,
	[saldo_castigado] [decimal](38, 6) NULL,
	[n_des_dia] [int] NOT NULL,
	[n_des_mes] [decimal](29, 4) NULL,
	[cliente] [int] NOT NULL,
	[cliente_vigente] [int] NOT NULL,
	[cliente_vencido] [int] NOT NULL,
	[cliente_judicial] [int] NOT NULL,
	[cliente_castigado] [int] NOT NULL,
	[dias_atraso] [int] NULL,
	[nro_refinanciaciones] [int] NOT NULL,
	[nro_reprogramaciones] [bigint] NOT NULL,
	[nro_condonaciones] [int] NULL,
	[fecha_refinanciado] [date] NULL,
	[fecha_reprogramacion] [date] NULL,
	[fecha_condonacion] [datetime] NULL,
	[s_var_dia] [int] NOT NULL,
	[s_var_mes] [int] NOT NULL,
	[s_var_dia_vig] [int] NOT NULL,
	[s_var_mes_vig] [int] NOT NULL,
	[s_var_dia_ven] [int] NOT NULL,
	[s_var_mes_ven] [int] NOT NULL,
	[s_var_dia_jud] [int] NOT NULL,
	[s_var_mes_jud] [int] NOT NULL,
	[n_var_dia] [int] NOT NULL,
	[n_var_mes] [int] NOT NULL,
	[n_var_dia_vig] [int] NOT NULL,
	[n_var_mes_vig] [int] NOT NULL,
	[n_var_dia_ven] [int] NOT NULL,
	[n_var_mes_ven] [int] NOT NULL,
	[n_var_dia_jud] [int] NOT NULL,
	[n_var_mes_jud] [int] NOT NULL,
	[saldo_promedio] [int] NOT NULL,
	[id_asesor_origen] [int] NULL,
	[s_des_mes_neto] [decimal](37, 8) NULL,
	[s_des_dia_neto] [decimal](18, 4) NULL,
	[saldo_mora_8] [decimal](18, 4) NULL,
	[s_var_dia_mora_8] [decimal](18, 4) NULL,
	[s_var_mes_mora_8] [decimal](18, 4) NULL,
	[id_canal] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[log_error]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[log_error](
	[dFecha] [datetime] NULL,
	[ErrorNumber] [varchar](max) NULL,
	[ErrorSeverity] [varchar](max) NULL,
	[ErrorState] [varchar](max) NULL,
	[ErrorProcedure] [varchar](max) NULL,
	[ErrorLine] [varchar](max) NULL,
	[ErrorMessage] [varchar](max) NULL,
	[tarea] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResultadoSegmentacion_junio_21]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResultadoSegmentacion_junio_21](
	[codigo_cliente] [float] NULL,
	[categoria_producto] [varchar](50) NULL,
	[frecuencia] [nvarchar](255) NULL,
	[segmento_final] [nvarchar](255) NULL,
	[Oferta 12 +] [float] NULL,
	[Oferta 18 +] [float] NULL,
	[Oferta 24 +] [float] NULL,
	[Tipo_Operacion] [nvarchar](255) NULL,
	[Modalidad] [nvarchar](255) NULL,
	[Tipo Oferta ++++] [nvarchar](255) NULL,
	[region] [nvarchar](255) NULL,
	[establecimiento] [nvarchar](255) NULL,
	[codigoasesor] [varchar](4) NULL,
	[asesor] [varchar](120) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResultadoSegmentacion_mayo_21]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResultadoSegmentacion_mayo_21](
	[codigo_cliente] [float] NULL,
	[categoria_producto] [nvarchar](255) NULL,
	[frecuencia] [nvarchar](255) NULL,
	[segmento_final] [varchar](50) NULL,
	[Oferta 12 +] [float] NULL,
	[Oferta 18 +] [float] NULL,
	[Oferta 24 +] [float] NULL,
	[Tipo_Operacion] [nvarchar](255) NULL,
	[Modalidad] [nvarchar](255) NULL,
	[Tipo Oferta ++++] [nvarchar](255) NULL,
	[region] [nvarchar](255) NULL,
	[establecimiento] [nvarchar](255) NULL,
	[codigoasesor] [varchar](4) NULL,
	[asesor] [varchar](120) NULL,
	[cliente] [nvarchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResultadoSegmentacion_setiembre_21]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResultadoSegmentacion_setiembre_21](
	[codigo_cliente] [varchar](50) NULL,
	[categoria_producto] [varchar](50) NULL,
	[frecuencia] [varchar](50) NULL,
	[Segmento] [varchar](50) NULL,
	[Oferta 12 ] [varchar](50) NULL,
	[Oferta 18] [varchar](50) NULL,
	[Oferta 24] [varchar](50) NULL,
	[Tipo Operación] [varchar](50) NULL,
	[Modalidad] [varchar](50) NULL,
	[Tipo Oferta] [varchar](50) NULL,
	[cuota] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Retanqueo]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Retanqueo](
	[IDCLIENTE] [float] NULL,
	[DNI] [nvarchar](255) NULL,
	[IDESTABLECIMIENTO] [float] NULL,
	[MONTO] [float] NULL,
	[PLAZO] [float] NULL,
	[CAMPAÑA] [nvarchar](255) NULL,
	[TIPO CAMPAÑA] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[retanqueo_setiembre_21_resumido]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[retanqueo_setiembre_21_resumido](
	[region] [nvarchar](255) NULL,
	[oficina] [nvarchar](255) NULL,
	[establecimiento] [nvarchar](255) NULL,
	[codigo_cliente] [float] NULL,
	[codigo_credito] [float] NULL,
	[dni] [float] NULL,
	[codigo_sbs] [float] NULL,
	[cliente] [nvarchar](255) NULL,
	[cClasifInterna] [nvarchar](255) NULL,
	[categoria_producto] [nvarchar](255) NULL,
	[direccion] [nvarchar](255) NULL,
	[telefono] [nvarchar](255) NULL,
	[frecuencia] [nvarchar](255) NULL,
	[FrecuenciaINAC] [nvarchar](255) NULL,
	[fecha_desembolso] [datetime] NULL,
	[nro_cuotas_pendientes] [float] NULL,
	[monto] [float] NULL,
	[destino] [nvarchar](255) NULL,
	[numero_creditos_activos] [nvarchar](255) NULL,
	[nro_creditos_caja] [float] NULL,
	[saldo] [float] NULL,
	[dfechacancelacion] [float] NULL,
	[dFechaUltimaEval] [float] NULL,
	[dfechaculminacion] [float] NULL,
	[codigo_conyuge] [float] NULL,
	[tipo] [nvarchar](255) NULL,
	[cantEmpresas_final] [float] NULL,
	[CAL_1] [float] NULL,
	[cal_2] [nvarchar](255) NULL,
	[cantEmpresas_desembolso] [float] NULL,
	[saldo_titular_1] [float] NULL,
	[saldo_titular_2] [float] NULL,
	[saldo_titular_3] [float] NULL,
	[saldo_titular_4] [float] NULL,
	[saldo_titular_5] [float] NULL,
	[saldo_titular_6] [float] NULL,
	[saldo_titular_7] [float] NULL,
	[saldo_titular_8] [float] NULL,
	[saldo_titular_9] [float] NULL,
	[saldo_titular_10] [float] NULL,
	[saldo_titular_11] [float] NULL,
	[saldo_titular_12] [float] NULL,
	[fecha] [nvarchar](255) NULL,
	[codSBS] [nvarchar](255) NULL,
	[tipoDocIdentidad] [nvarchar](255) NULL,
	[docIdentidad] [nvarchar](255) NULL,
	[cantEmpresas] [nvarchar](255) NULL,
	[avaladoCodSbs] [nvarchar](255) NULL,
	[avaladoDoc] [nvarchar](255) NULL,
	[tipoDoc] [nvarchar](255) NULL,
	[avaladoSaldo] [nvarchar](255) NULL,
	[avaladoCalif] [nvarchar](255) NULL,
	[avaladoNumEntidad] [nvarchar](255) NULL,
	[Endeudamiento_disminuye] [nvarchar](255) NULL,
	[Grupos] [nvarchar](255) NULL,
	[tipoYMonto] [nvarchar](255) NULL,
	[codsbs_conyuge] [nvarchar](255) NULL,
	[numero_empresas_conyugue] [nvarchar](255) NULL,
	[calificacion_conyugue] [nvarchar](255) NULL,
	[RCA_Calificacion_titular] [nvarchar](255) NULL,
	[RCA_calificacion_conyugue] [nvarchar](255) NULL,
	[CAL_12] [float] NULL,
	[CAL_11] [float] NULL,
	[CAL_10] [float] NULL,
	[CAL_9] [float] NULL,
	[CAL_8] [float] NULL,
	[CAL_7] [float] NULL,
	[CAL_6] [float] NULL,
	[CAL_5] [float] NULL,
	[CAL_4] [float] NULL,
	[CAL_3] [float] NULL,
	[CAL_2_] [float] NULL,
	[CAL_1_] [float] NULL,
	[nro_cpp] [float] NULL,
	[deficiente] [float] NULL,
	[dudoso] [float] NULL,
	[perdida] [float] NULL,
	[filtro_nro_entidades] [nvarchar](255) NULL,
	[saldo_titular_1_] [float] NULL,
	[saldo_titular_12_] [float] NULL,
	[saldo_titular_24_] [float] NULL,
	[saldo_titular_desembolso] [float] NULL,
	[filtro_endeudamiento] [nvarchar](255) NULL,
	[Plazo] [float] NULL,
	[FAE] [nvarchar](255) NULL,
	[orden] [float] NULL,
	[Resultado SBS] [nvarchar](255) NULL,
	[Resultado IFI] [nvarchar](255) NULL,
	[Resultado Frecuencia] [nvarchar](255) NULL,
	[ResultadoEVA] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RetanqueoAgostov2]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RetanqueoAgostov2](
	[codigo_cliente] [float] NULL,
	[codigo_credito] [float] NULL,
	[dni] [float] NULL,
	[cClasifInterna] [nvarchar](255) NULL,
	[categoria_producto] [nvarchar](255) NULL,
	[frecuencia] [nvarchar](255) NULL,
	[nro_cuotas_pendientes] [float] NULL,
	[monto] [float] NULL,
	[destino] [nvarchar](255) NULL,
	[dfechacancelacion] [nvarchar](255) NULL,
	[dFechaUltimaEval] [datetime] NULL,
	[tipo] [nvarchar](255) NULL,
	[cantEmpresas_final] [float] NULL,
	[cantEmpresas_desembolso] [float] NULL,
	[numero_empresas_conyugue] [nvarchar](255) NULL,
	[calificacion_conyugue] [nvarchar](255) NULL,
	[saldo_titular_1_] [float] NULL,
	[saldo_titular_12_] [nvarchar](255) NULL,
	[saldo_titular_24_] [nvarchar](255) NULL,
	[saldo_titular_desembolso] [float] NULL,
	[plazo] [float] NULL,
	[MontoF] [float] NULL,
	[CAMPAÑA] [nvarchar](255) NULL,
	[TIPO CAMPAÑA] [nvarchar](255) NULL,
	[region] [nvarchar](255) NULL,
	[oficina] [nvarchar](255) NULL,
	[eob_pac_tic] [nvarchar](255) NULL,
	[IDESTABLECIMIENTO] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[retanqueoMayo]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[retanqueoMayo](
	[IDCLIENTE] [float] NULL,
	[DNI] [float] NULL,
	[IDESTABLECIMIENTO] [float] NULL,
	[MONTO] [float] NULL,
	[PLAZO] [float] NULL,
	[CAMPAÑA] [nvarchar](255) NULL,
	[TIPO CAMPAÑA] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[retanqueoNoviembreBasev4]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[retanqueoNoviembreBasev4](
	[IDCLIENTE] [varchar](50) NULL,
	[DNI] [varchar](50) NULL,
	[IDESTABLECIMIENTO] [varchar](50) NULL,
	[MONTO] [varchar](50) NULL,
	[PLAZO] [varchar](50) NULL,
	[CAMPAÑA] [varchar](50) NULL,
	[TIPO CAMPAÑA] [varchar](50) NULL,
	[codigo_credito] [int] NULL,
	[region] [varchar](255) NULL,
	[oficina] [nvarchar](100) NULL,
	[eob_pac_tic] [varchar](255) NULL,
	[clasificacion_interna] [nvarchar](50) NULL,
	[cliente] [nvarchar](200) NULL,
	[Direccion] [nvarchar](250) NULL,
	[codigo_asesor] [int] NULL,
	[asesor] [nvarchar](100) NULL,
	[telefono] [nvarchar](152) NULL,
	[cDistrito] [varchar](120) NULL,
	[cDireccion] [varchar](200) NULL,
	[cNombre] [varchar](150) NULL,
	[departamento] [varchar](120) NULL,
	[provincia] [varchar](120) NULL,
	[NroEmpresas] [int] NULL,
	[establecimiento] [nvarchar](100) NULL,
	[tipo] [varchar](8) NULL,
	[Tipo_de_operación] [varchar](12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rp_productividad]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rp_productividad](
	[fecha] [datetime] NULL,
	[Asesor] [nvarchar](100) NULL,
	[Oficina] [nvarchar](100) NULL,
	[Región] [nvarchar](100) NULL,
	[grupo] [varchar](9) NOT NULL,
	[Nro de Operaciones Nuevas] [int] NULL,
	[Nro de Operaciones en el Mes] [int] NULL,
	[Nro de Operaciones Meta] [int] NOT NULL,
	[% Cumplimiento Nro] [decimal](38, 6) NULL,
	[Saldo Desembolso en el Mes] [decimal](38, 6) NULL,
	[Saldo Desembolso Meta 1] [int] NOT NULL,
	[Saldo Desembolso Meta 2] [int] NOT NULL,
	[Saldo Desembolso Meta 3] [int] NOT NULL,
	[% Cumplimiento S/ 1] [decimal](38, 6) NULL,
	[% Cumplimiento S/ 2] [decimal](38, 6) NULL,
	[% Cumplimiento S/ 3] [decimal](38, 6) NULL,
	[Ticket Promedio] [decimal](38, 6) NULL,
	[Desembolso Promedio Diario] [decimal](38, 6) NULL,
	[Nro Operaciones Promedio Diarias] [numeric](38, 6) NULL,
	[Dias Transcurridos] [int] NULL,
	[Días sin Desembolso] [int] NULL,
	[Días con Desembolso] [int] NULL,
	[% Días sin Desembolso] [numeric](25, 12) NULL,
	[Día 1] [int] NULL,
	[Día 2] [int] NULL,
	[Día 3] [int] NULL,
	[Día 4] [int] NULL,
	[Día 5] [int] NULL,
	[Día 6] [int] NULL,
	[Día 7] [int] NULL,
	[Día 8] [int] NULL,
	[Día 9] [int] NULL,
	[Día 10] [int] NULL,
	[Día 11] [int] NULL,
	[Día 12] [int] NULL,
	[Día 13] [int] NULL,
	[Día 14] [int] NULL,
	[Día 15] [int] NULL,
	[Día 16] [int] NULL,
	[Día 17] [int] NULL,
	[Día 18] [int] NULL,
	[Día 19] [int] NULL,
	[Día 20] [int] NULL,
	[Día 21] [int] NULL,
	[Día 22] [int] NULL,
	[Día 23] [int] NULL,
	[Día 24] [int] NULL,
	[Día 25] [int] NULL,
	[Día 26] [int] NULL,
	[Día 27] [int] NULL,
	[Día 28] [int] NULL,
	[Día 29] [int] NULL,
	[Día 30] [int] NULL,
	[Día 31] [int] NULL,
	[Total Operaciones] [int] NULL,
	[Días sin Desembolso Aceptados] [numeric](12, 1) NULL,
	[Puesto Región] [bigint] NULL,
	[tipo] [nvarchar](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rpt_amortizaciones]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_amortizaciones](
	[Region] [varchar](100) NULL,
	[Oficina] [varchar](100) NULL,
	[Establecimiento] [varchar](100) NULL,
	[Nombre_del_cliente] [varchar](100) NULL,
	[Codigo_credito] [int] NOT NULL,
	[Nombre_del_asesor] [varchar](100) NULL,
	[Codigo_del_asesor] [int] NULL,
	[Nombre_producto] [varchar](100) NULL,
	[Estado_contable] [varchar](100) NULL,
	[Nombre_del_grupo] [varchar](100) NULL,
	[Fecha_programada] [date] NOT NULL,
	[Fecha_de_pago] [date] NULL,
	[Capital_programado] [decimal](18, 0) NULL,
	[Interes_programado] [decimal](18, 0) NULL,
	[Mora_programado] [decimal](18, 0) NULL,
	[Otros_programado] [decimal](18, 0) NULL,
	[Capital_pagado] [decimal](18, 0) NULL,
	[Saldo_total] [decimal](18, 0) NULL,
	[Orden] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rpt_avance_consumo]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_avance_consumo](
	[fecha] [datetime] NULL,
	[territorios] [varchar](16) NOT NULL,
	[region] [nvarchar](100) NULL,
	[establecimiento] [nvarchar](100) NULL,
	[oficina] [nvarchar](100) NULL,
	[asesor] [nvarchar](100) NULL,
	[cliente] [nvarchar](200) NULL,
	[oferta] [int] NULL,
	[desembolso] [decimal](38, 6) NULL,
	[operaciones] [decimal](38, 4) NULL,
	[tpp_D] [decimal](38, 6) NULL,
	[tipo] [varchar](12) NULL,
	[nro_oferta] [int] NOT NULL,
	[nro_des_consumo] [int] NOT NULL,
	[des_consumo] [decimal](38, 6) NULL,
	[tasa_anterior] [decimal](38, 9) NULL,
	[monto_anterior] [decimal](18, 4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rpt_avance_escolar]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_avance_escolar](
	[fecha] [datetime] NULL,
	[territorios] [varchar](16) NOT NULL,
	[region] [nvarchar](100) NULL,
	[establecimiento] [nvarchar](100) NULL,
	[asesor] [nvarchar](100) NULL,
	[codigo_cliente] [int] NULL,
	[id_cliente] [int] NULL,
	[id_cronograma] [int] NULL,
	[cliente] [nvarchar](200) NULL,
	[tipo] [varchar](12) NOT NULL,
	[sub_producto] [nvarchar](100) NULL,
	[oferta_nro] [int] NOT NULL,
	[oferta_monto] [float] NULL,
	[operaciones] [decimal](38, 4) NOT NULL,
	[desembolso] [decimal](38, 6) NULL,
	[tasa_desembolso] [decimal](38, 6) NULL,
	[visita] [int] NOT NULL,
	[n_escolar] [numeric](3, 2) NOT NULL,
	[n_base2] [numeric](3, 2) NULL,
	[des_escolar] [decimal](38, 6) NULL,
	[des_base] [decimal](38, 6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rpt_avance_fp]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_avance_fp](
	[fecha] [datetime] NULL,
	[territorios] [varchar](16) NOT NULL,
	[region] [nvarchar](4000) NULL,
	[establecimiento] [nvarchar](4000) NULL,
	[asesor] [nvarchar](100) NULL,
	[CÓDIGO DE CLIENTE] [float] NULL,
	[id_cliente] [int] NULL,
	[id_cronograma] [int] NULL,
	[NOMBRE DEL CLIENTE] [nvarchar](255) NULL,
	[TIPO] [nvarchar](255) NULL,
	[oferta_nro] [int] NOT NULL,
	[oferta_monto] [int] NULL,
	[operaciones] [decimal](38, 4) NOT NULL,
	[desembolso] [decimal](38, 6) NOT NULL,
	[tasa_desembolso] [decimal](38, 6) NOT NULL,
	[vis_feb] [int] NOT NULL,
	[oferta_monto_apro] [int] NULL,
	[oferta_monto_pre] [int] NULL,
	[oferta_nro_apro] [int] NOT NULL,
	[oferta_nro_pre] [int] NOT NULL,
	[operaciones_apro] [decimal](38, 4) NOT NULL,
	[operaciones_pre] [decimal](38, 4) NOT NULL,
	[desembolso_apro] [decimal](38, 6) NOT NULL,
	[desembolso_pre] [decimal](38, 6) NOT NULL,
	[tasa_des_apro] [decimal](38, 6) NOT NULL,
	[tasa_des_pre] [decimal](38, 6) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rpt_avance_madre]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_avance_madre](
	[fecha] [datetime] NULL,
	[territorios] [varchar](16) NOT NULL,
	[region] [nvarchar](4000) NULL,
	[establecimiento] [nvarchar](4000) NULL,
	[asesor] [nvarchar](100) NULL,
	[CÓDIGO DE CLIENTE] [float] NULL,
	[id_cliente] [int] NULL,
	[id_cronograma] [int] NULL,
	[NOMBRE DEL CLIENTE] [nvarchar](255) NULL,
	[TIPO] [nvarchar](255) NULL,
	[oferta_nro] [int] NOT NULL,
	[oferta_monto] [int] NULL,
	[operaciones] [decimal](38, 4) NOT NULL,
	[desembolso] [decimal](38, 6) NOT NULL,
	[tasa_desembolso] [decimal](38, 6) NOT NULL,
	[vis_feb] [int] NOT NULL,
	[oferta_monto_apro] [int] NULL,
	[oferta_monto_pre] [int] NULL,
	[oferta_nro_apro] [int] NOT NULL,
	[oferta_nro_pre] [int] NOT NULL,
	[operaciones_apro] [decimal](38, 4) NOT NULL,
	[operaciones_pre] [decimal](38, 4) NOT NULL,
	[desembolso_apro] [decimal](38, 6) NOT NULL,
	[desembolso_pre] [decimal](38, 6) NOT NULL,
	[tasa_des_apro] [decimal](38, 6) NOT NULL,
	[tasa_des_pre] [decimal](38, 6) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rpt_avance_recargate]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_avance_recargate](
	[fecha] [datetime] NULL,
	[territorios] [varchar](16) NOT NULL,
	[region] [nvarchar](100) NULL,
	[establecimiento] [nvarchar](100) NULL,
	[asesor] [nvarchar](100) NULL,
	[codigo_cliente] [int] NULL,
	[id_cliente] [int] NULL,
	[id_cronograma] [int] NULL,
	[NOMBRE_CLIENTE] [varchar](150) NULL,
	[oferta_nro] [int] NOT NULL,
	[oferta_monto] [numeric](38, 2) NULL,
	[operaciones] [decimal](38, 4) NOT NULL,
	[operaciones_dia] [int] NOT NULL,
	[desembolso] [decimal](38, 6) NOT NULL,
	[desembolso_dia] [decimal](38, 2) NOT NULL,
	[tasa_desembolso] [decimal](38, 6) NOT NULL,
	[tasa_desembolso_dia] [decimal](38, 10) NOT NULL,
	[tasa_anterior] [decimal](38, 9) NULL,
	[monto_anterior] [decimal](18, 4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rpt_comp_desembolso]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_comp_desembolso](
	[fecha] [date] NULL,
	[codigo_Cliente] [float] NULL,
	[cliente] [nvarchar](200) NULL,
	[tipo_cliente] [varchar](8) NOT NULL,
	[region] [nvarchar](255) NULL,
	[establecimiento] [nvarchar](255) NULL,
	[codigo_asesor] [int] NOT NULL,
	[asesor] [nvarchar](100) NULL,
	[oferta] [float] NULL,
	[fecha_desembolso] [datetime] NULL,
	[desembolso] [decimal](38, 6) NOT NULL,
	[operaciones] [decimal](38, 4) NOT NULL,
	[desembolso_dia] [decimal](38, 2) NOT NULL,
	[operaciones_dia] [int] NOT NULL,
	[clasificacion_interna] [nvarchar](50) NULL,
	[dias_atraso] [int] NOT NULL,
	[registros] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rpt_comp_desembolso_detalle]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_comp_desembolso_detalle](
	[fecha] [date] NULL,
	[codigo_Cliente] [float] NULL,
	[cliente] [nvarchar](200) NULL,
	[tipo_cliente] [varchar](8) NOT NULL,
	[region] [nvarchar](255) NULL,
	[establecimiento] [nvarchar](255) NULL,
	[codigo_asesor] [int] NOT NULL,
	[asesor] [nvarchar](100) NULL,
	[oferta] [float] NULL,
	[fecha_desembolso] [datetime] NULL,
	[desembolso] [decimal](38, 6) NOT NULL,
	[operaciones] [decimal](38, 4) NOT NULL,
	[desembolso_dia] [decimal](38, 2) NOT NULL,
	[operaciones_dia] [int] NOT NULL,
	[clasificacion_interna] [nvarchar](50) NULL,
	[dias_atraso] [int] NOT NULL,
	[registros] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rpt_derivadosALL]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_derivadosALL](
	[fechaa] [datetime] NULL,
	[Origen] [varchar](5) NOT NULL,
	[territorio] [varchar](16) NOT NULL,
	[region] [nvarchar](100) NULL,
	[establecimiento] [nvarchar](100) NULL,
	[nombre] [nvarchar](255) NULL,
	[documento] [nvarchar](255) NULL,
	[telefono] [nvarchar](255) NULL,
	[oferta] [decimal](18, 6) NULL,
	[n_oferta] [int] NOT NULL,
	[visita_mes] [int] NOT NULL,
	[n_recuperaciones] [int] NOT NULL,
	[n_creditos] [int] NOT NULL,
	[n_Solicitud] [int] NOT NULL,
	[n_Sol_ap] [int] NOT NULL,
	[desembolso] [decimal](38, 6) NOT NULL,
	[n_operaciones] [decimal](38, 4) NOT NULL,
	[operaciones] [decimal](38, 4) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rpt_derivadosALL_V2]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_derivadosALL_V2](
	[fecha] [datetime] NULL,
	[tipo_base] [varchar](5) NOT NULL,
	[nombre_campaña] [nvarchar](200) NOT NULL,
	[region] [nvarchar](255) NOT NULL,
	[establecimiento_est] [nvarchar](255) NOT NULL,
	[departamento] [nvarchar](255) NULL,
	[provincia] [nvarchar](255) NULL,
	[distrito] [nvarchar](255) NULL,
	[fecha_warmi] [date] NULL,
	[nombre] [nvarchar](255) NULL,
	[telefono] [nvarchar](255) NULL,
	[n_oferta] [int] NOT NULL,
	[oferta] [decimal](18, 6) NOT NULL,
	[resultado] [nvarchar](255) NULL,
	[gestion] [nvarchar](255) NULL,
	[call_resumen] [nvarchar](255) NULL,
	[call_estado] [nvarchar](255) NULL,
	[call_propuesta] [nvarchar](255) NULL,
	[sub_producto] [nvarchar](100) NULL,
	[flag_derivado_oficina] [int] NOT NULL,
	[visita_mes] [int] NOT NULL,
	[n_recuperaciones] [int] NOT NULL,
	[n_creditos] [int] NOT NULL,
	[n_Solicitud] [int] NOT NULL,
	[n_Sol_ap] [int] NOT NULL,
	[desembolso] [decimal](38, 6) NOT NULL,
	[n_operaciones] [decimal](38, 4) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rpt_derivadosCall_xls]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_derivadosCall_xls](
	[fecha] [datetime] NULL,
	[id_periodo] [int] NOT NULL,
	[territorio] [varchar](16) NOT NULL,
	[region] [nvarchar](100) NULL,
	[establecimiento] [nvarchar](100) NULL,
	[tipo_cliente] [nvarchar](200) NULL,
	[codigo_sbs] [nvarchar](100) NULL,
	[documento] [nvarchar](100) NULL,
	[oferta_deriv] [decimal](18, 6) NULL,
	[n_oferta] [int] NOT NULL,
	[tipo_oferta] [nvarchar](200) NULL,
	[campaña_oferta] [nvarchar](200) NULL,
	[gestion_call] [int] NOT NULL,
	[contactado] [int] NOT NULL,
	[derivados_oficina] [int] NOT NULL,
	[visita_mes] [int] NOT NULL,
	[n_recuperaciones] [int] NOT NULL,
	[n_creditos] [int] NOT NULL,
	[n_Solicitud] [int] NOT NULL,
	[n_Sol_ap] [int] NOT NULL,
	[desembolso] [decimal](38, 6) NOT NULL,
	[n_operaciones] [decimal](38, 4) NOT NULL,
	[der_desembolso] [decimal](38, 6) NOT NULL,
	[der_n_operaciones] [decimal](38, 4) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rpt_derivadosWarmi_xls]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_derivadosWarmi_xls](
	[fecha2] [datetime] NULL,
	[documento] [nvarchar](255) NULL,
	[fecha] [date] NULL,
	[localidad] [nvarchar](255) NULL,
	[nombre] [nvarchar](255) NULL,
	[resultado] [nvarchar](255) NULL,
	[gestion] [nvarchar](255) NULL,
	[call_estado] [nvarchar](255) NULL,
	[call_resumen] [nvarchar](255) NULL,
	[call_propuesta] [nvarchar](255) NULL,
	[telefono] [nvarchar](255) NULL,
	[oferta] [int] NOT NULL,
	[id_campaña] [int] NOT NULL,
	[id_establecimiento] [int] NOT NULL,
	[tipo_campaña] [varchar](19) NOT NULL,
	[departamento] [nvarchar](255) NULL,
	[provincia] [nvarchar](255) NULL,
	[distrito] [nvarchar](255) NULL,
	[n_oferta_derivOf] [int] NOT NULL,
	[oferta_derivOf] [int] NOT NULL,
	[territorio] [varchar](16) NOT NULL,
	[regionc] [nvarchar](255) NOT NULL,
	[establecimientoc] [nvarchar](255) NULL,
	[n_leads] [int] NOT NULL,
	[n_leadsAprobados] [int] NOT NULL,
	[gestion_call] [int] NOT NULL,
	[contactado_call] [int] NOT NULL,
	[derivado_oficina_call] [int] NOT NULL,
	[visita_mes] [int] NOT NULL,
	[n_recuperaciones] [int] NOT NULL,
	[n_creditos] [int] NOT NULL,
	[n_Solicitud] [int] NOT NULL,
	[n_Sol_ap] [int] NOT NULL,
	[desembolso] [decimal](38, 6) NOT NULL,
	[n_operaciones] [decimal](38, 4) NOT NULL,
	[nombre_campaña] [nvarchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rpt_diario_alianzarcc]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_diario_alianzarcc](
	[fecha] [date] NULL,
	[ZONA] [nvarchar](255) NULL,
	[DEPARTAMENTO] [nvarchar](255) NULL,
	[PROVINCIA] [nvarchar](255) NULL,
	[DISTRITO] [nvarchar](255) NULL,
	[LOCALIDAD] [nvarchar](255) NULL,
	[SECTOR] [nvarchar](255) NULL,
	[DNI] [nvarchar](255) NULL,
	[NOMBRES] [nvarchar](255) NULL,
	[SEXO] [nvarchar](255) NULL,
	[EDAD] [float] NULL,
	[celular] [nvarchar](255) NULL,
	[TIPO] [nvarchar](255) NULL,
	[telefono_1] [nvarchar](11) NULL,
	[telefono_2] [nvarchar](11) NULL,
	[telefono_3] [nvarchar](11) NULL,
	[codsbs] [bigint] NULL,
	[orden] [bigint] NULL,
	[id_cliente] [int] NULL,
	[bancarizado] [varchar](14) NOT NULL,
	[Nro_entidades] [smallint] NULL,
	[Cal_Mar20] [money] NULL,
	[Cal_Feb20] [money] NULL,
	[Cal_Ene20] [money] NULL,
	[Cal_Dic19] [money] NULL,
	[Cal_Nov19] [money] NULL,
	[Cal_Oct19] [money] NULL,
	[saldo_Mar20] [decimal](38, 2) NULL,
	[saldo_Feb20] [decimal](38, 2) NULL,
	[saldo_Ene20] [decimal](38, 2) NULL,
	[saldo_Dic19] [decimal](38, 2) NULL,
	[saldo_Nov19] [decimal](38, 2) NULL,
	[saldo_Oct19] [decimal](38, 2) NULL,
	[var_cal] [money] NULL,
	[saldo_caja] [decimal](38, 6) NULL,
	[resultado] [varchar](24) NOT NULL,
	[oficina] [nvarchar](100) NULL,
	[oficinas] [nvarchar](100) NULL,
	[idcli] [int] NULL,
	[codigo_Cliente] [int] NULL,
	[cliente] [nvarchar](200) NULL,
	[tipo_cliente] [varchar](8) NOT NULL,
	[fecha_desembolso] [datetime] NULL,
	[desembolso] [decimal](38, 6) NOT NULL,
	[operaciones] [decimal](38, 4) NOT NULL,
	[desembolso_dia] [decimal](38, 2) NOT NULL,
	[operaciones_dia] [int] NOT NULL,
	[clasificacion_interna] [nvarchar](50) NULL,
	[dias_atraso] [int] NOT NULL,
	[registros] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rpt_diario_amortizaciones]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_diario_amortizaciones](
	[idfecha] [int] NULL,
	[Oficina] [varchar](120) NULL,
	[Establecimiento] [varchar](60) NULL,
	[Region] [varchar](120) NULL,
	[idCuenta] [int] NULL,
	[Nombre del Cliente] [varchar](150) NULL,
	[Nombre del Producto] [varchar](100) NULL,
	[Nombre del Grupo] [varchar](max) NULL,
	[Nombre del Asesor] [nvarchar](255) NULL,
	[Fecha de Pago] [date] NULL,
	[CAPITAL PROGRAMADO] [decimal](15, 2) NULL,
	[INTERES PROGRAMADO] [decimal](15, 2) NULL,
	[Negativos Interes] [varchar](9) NOT NULL,
	[Negativos Capital] [varchar](9) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rpt_diario_directorio]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_diario_directorio](
	[id_fecha] [date] NULL,
	[region] [nvarchar](100) NULL,
	[categoria_producto] [nvarchar](100) NULL,
	[saldo_actual] [decimal](38, 6) NULL,
	[saldo_vigente_actual] [decimal](38, 6) NULL,
	[clientes_actual] [int] NULL,
	[clientes_mora] [int] NULL,
	[clientes_refinanciados] [int] NULL,
	[desembolso_actual] [decimal](38, 6) NULL,
	[operaciones_actual] [int] NULL,
	[mora_actual] [decimal](38, 6) NULL,
	[saldo_dia_anterior] [decimal](38, 6) NULL,
	[saldo_vigente_dia_anterior] [decimal](38, 6) NULL,
	[clientes_dia_anterior] [int] NULL,
	[clientes_mora_dia_anterior] [int] NULL,
	[clientes_refinanciados_dia_anterior] [int] NULL,
	[desembolso_dia_anterior] [decimal](38, 6) NULL,
	[operaciones_dia_anterior] [int] NULL,
	[mora_dia_anterior] [decimal](38, 6) NULL,
	[saldo_cierre] [decimal](38, 6) NULL,
	[saldo_vigente_cierre] [decimal](38, 6) NULL,
	[clientes_cierre] [int] NULL,
	[clientes_mora_cierre] [int] NULL,
	[clientes_refinanciados_cierre] [int] NULL,
	[desembolso_cierre] [decimal](38, 6) NULL,
	[operaciones_cierre] [int] NULL,
	[mora_cierre] [decimal](38, 6) NULL,
	[saldo_mes_anterior] [decimal](38, 6) NULL,
	[saldo_vigente_mes_anterior] [decimal](38, 6) NULL,
	[clientes_mes_anterior] [int] NULL,
	[clientes_mora_mes_anterior] [int] NULL,
	[clientes_refinanciados_mes_anterior] [int] NULL,
	[desembolso_mes_anterior] [decimal](38, 6) NULL,
	[operaciones_mes_anterior] [int] NULL,
	[mora_mes_anterior] [decimal](38, 6) NULL,
	[asesores_actual] [bigint] NULL,
	[asesores_anterior] [bigint] NULL,
	[asesores_cierre] [bigint] NULL,
	[asesores_mes_anterior] [bigint] NULL,
	[establecimiento] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rpt_diario_evolutivo]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_diario_evolutivo](
	[fecha_corta] [varchar](2) NULL,
	[id_fecha] [int] NULL,
	[id_asesor] [int] NOT NULL,
	[id_establecimiento] [int] NOT NULL,
	[region] [nvarchar](100) NULL,
	[establecimiento] [nvarchar](100) NULL,
	[asesor] [nvarchar](100) NULL,
	[categoria_producto] [nvarchar](100) NULL,
	[operaciones] [decimal](38, 4) NULL,
	[desembolso] [decimal](38, 6) NULL,
	[saldo] [decimal](38, 6) NULL,
	[saldo_vigente] [decimal](38, 6) NULL,
	[saldo_mora] [decimal](38, 6) NULL,
	[saldo_mora_8] [decimal](38, 4) NULL,
	[cliente] [int] NULL,
	[cliente_vigente] [int] NULL,
	[cliente_mora] [int] NULL,
	[s_Var_mes] [int] NULL,
	[s_var_mes_vigente] [int] NULL,
	[s_var_mes_mora] [int] NULL,
	[n_var_mes] [int] NULL,
	[n_var_mes_vigente] [int] NULL,
	[n_var_mes_mora] [int] NULL,
	[ratio_CAR] [decimal](38, 6) NULL,
	[tpp_saldo] [decimal](38, 6) NULL,
	[tpp_saldo_vigente] [decimal](38, 6) NULL,
	[tpp_desembolso] [decimal](38, 6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rpt_distancias]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_distancias](
	[id_fecha] [int] NULL,
	[region] [nvarchar](100) NULL,
	[establecimiento] [nvarchar](100) NULL,
	[asesor] [nvarchar](100) NULL,
	[categoria_producto] [nvarchar](100) NULL,
	[cliente] [nvarchar](200) NULL,
	[codigo_cliente] [int] NULL,
	[lat1] [float] NULL,
	[lat2] [varchar](100) NULL,
	[lon1] [float] NULL,
	[lon2] [varchar](100) NULL,
	[distancia] [float] NULL,
	[saldo_vigente] [decimal](38, 6) NULL,
	[saldo_vencido] [decimal](38, 6) NULL,
	[clientes_vigentes] [int] NOT NULL,
	[clientes_vencidos] [int] NOT NULL,
	[distancia_kilometros] [varchar](25) NOT NULL,
	[distancia_horas] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rpt_georeferenciacion]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_georeferenciacion](
	[id_fecha] [int] NULL,
	[departamento] [nvarchar](255) NULL,
	[provincia] [nvarchar](255) NULL,
	[cdistrito] [nvarchar](255) NULL,
	[region] [nvarchar](100) NULL,
	[establecimiento] [nvarchar](100) NULL,
	[asesor] [nvarchar](100) NULL,
	[categoria_producto] [nvarchar](100) NULL,
	[codigo_cliente] [int] NULL,
	[cliente] [nvarchar](200) NULL,
	[lat] [varchar](100) NULL,
	[lon] [varchar](100) NULL,
	[operaciones] [decimal](38, 4) NULL,
	[desembolsos] [decimal](38, 6) NULL,
	[nro_clientes] [int] NULL,
	[saldo] [decimal](38, 6) NULL,
	[mora] [decimal](38, 6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rpt_gestion_efectiva_2021]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_gestion_efectiva_2021](
	[fecha] [date] NULL,
	[territorio] [varchar](16) NOT NULL,
	[region] [nvarchar](100) NULL,
	[id_establecimiento] [int] NOT NULL,
	[id_asesor] [int] NOT NULL,
	[establecimiento] [nvarchar](100) NULL,
	[asesor] [nvarchar](100) NULL,
	[codigo_credito] [int] NULL,
	[codigo_cliente] [int] NULL,
	[nombre_cliente] [nvarchar](200) NULL,
	[prioridad] [varchar](13) NOT NULL,
	[Fecha última visita] [datetime] NULL,
	[Tipo de visita] [varchar](128) NULL,
	[edad] [int] NULL,
	[direccion] [varchar](200) NULL,
	[referencia] [varchar](50) NULL,
	[telefono] [varchar](152) NULL,
	[tipo_cliente] [varchar](8) NOT NULL,
	[id_fecha] [int] NULL,
	[clasificacion_interna] [nvarchar](50) NULL,
	[cliente_base_externa] [varchar](10) NOT NULL,
	[cliente_transferido] [varchar](14) NOT NULL,
	[estado] [nvarchar](50) NULL,
	[Segmento] [nvarchar](255) NULL,
	[oferta] [float] NULL,
	[cantEmpresas] [int] NULL,
	[clasificacion] [smallint] NULL,
	[saldo_total] [decimal](38, 2) NULL,
	[Saldo_sin_crla] [decimal](38, 2) NULL,
	[saldo_caja] [decimal](38, 6) NULL,
	[empresa_mayor_part] [nvarchar](255) NULL,
	[saldo_mayor_part] [decimal](38, 2) NULL,
	[fecha_desembolso] [datetime] NULL,
	[monto] [decimal](18, 4) NULL,
	[producto] [nvarchar](100) NULL,
	[frecuencia] [nvarchar](250) NULL,
	[tasa] [decimal](18, 4) NULL,
	[avance_cronograma] [numeric](38, 15) NULL,
	[avance_capital] [numeric](38, 6) NULL,
	[Actividad] [varchar](300) NULL,
	[proximo_vencimiento] [datetime] NULL,
	[dias_atraso] [int] NULL,
	[fecha_ultimo_pago] [datetime] NULL,
	[fecha_ultima_pdp] [datetime] NULL,
	[tramo] [varchar](50) NULL,
	[monto_cuota_actual] [decimal](38, 4) NULL,
	[documento_cony] [nvarchar](50) NULL,
	[nombre_conyuge] [varchar](1) NOT NULL,
	[edad_conyuge] [varchar](1) NOT NULL,
	[entidades_conyuge] [int] NULL,
	[nSaldoConyuge] [decimal](38, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rpt_GrupoS_diario]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_GrupoS_diario](
	[Detalle] [varchar](6) NULL,
	[id_fecha] [int] NULL,
	[region] [nvarchar](100) NULL,
	[establecimiento] [nvarchar](100) NULL,
	[asesor] [nvarchar](100) NULL,
	[saldo] [decimal](38, 6) NULL,
	[saldo_mora] [decimal](38, 6) NULL,
	[saldo_mora_8] [decimal](38, 4) NULL,
	[operaciones] [decimal](38, 4) NULL,
	[desembolso] [decimal](38, 6) NULL,
	[cliente] [int] NULL,
	[s_Var_mes] [int] NULL,
	[s_var_mes_mora] [int] NULL,
	[ratio_CAR] [decimal](38, 6) NULL,
	[tpp_saldo] [decimal](38, 6) NULL,
	[tpp_desembolso] [decimal](38, 6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rpt_GrupoS_Stok]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_GrupoS_Stok](
	[FECHAP] [date] NULL,
	[REGION] [varchar](100) NULL,
	[EOB_PAC] [varchar](300) NULL,
	[OFICINAS] [varchar](300) NULL,
	[ASE_CRE] [nvarchar](255) NULL,
	[NOMBREGRUPO] [varchar](max) NULL,
	[PRODUCTO] [varchar](200) NULL,
	[cantidad] [bigint] NULL,
	[TIPOgs] [varchar](15) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rpt_Mensual_evolutivo]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_Mensual_evolutivo](
	[id_fecha] [int] NULL,
	[id_asesor] [int] NOT NULL,
	[id_establecimiento] [int] NOT NULL,
	[region] [nvarchar](100) NULL,
	[establecimiento] [nvarchar](100) NULL,
	[asesor] [nvarchar](100) NULL,
	[flag_condonado] [int] NULL,
	[flag_refinanciado] [int] NOT NULL,
	[flag_reprogramado] [int] NOT NULL,
	[categoria_producto] [nvarchar](100) NULL,
	[operaciones] [int] NULL,
	[desembolso] [decimal](38, 2) NULL,
	[saldo] [decimal](38, 6) NULL,
	[saldo_vigente] [decimal](38, 6) NULL,
	[saldo_mora] [decimal](38, 6) NULL,
	[cliente] [int] NULL,
	[cliente_vigente] [int] NULL,
	[cliente_mora] [int] NULL,
	[s_Var_mes] [int] NULL,
	[s_var_mes_vigente] [int] NULL,
	[s_var_mes_mora] [int] NULL,
	[n_var_mes] [int] NULL,
	[n_var_mes_vigente] [int] NULL,
	[n_var_mes_mora] [int] NULL,
	[ratio_CAR] [decimal](38, 6) NULL,
	[tpp_saldo] [decimal](38, 6) NULL,
	[tpp_desembolso] [decimal](38, 6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rpt_mercado_bimers]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_mercado_bimers](
	[tipo_transaccion] [varchar](21) NOT NULL,
	[cMSISDN] [float] NULL,
	[cMSISDNReceptor] [float] NULL,
	[nMonto] [float] NULL,
	[año] [int] NULL,
	[mes] [int] NULL,
	[dia] [int] NULL,
	[cDepartamento] [nvarchar](255) NULL,
	[cProvincia] [nvarchar](255) NULL,
	[cDistrito] [nvarchar](255) NULL,
	[cDocumento] [nvarchar](255) NULL,
	[cNNombre] [nvarchar](255) NULL,
	[cNApellido] [nvarchar](255) NULL,
	[EsColaborador] [float] NULL,
	[agente_bimer] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rpt_metasNegocio]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_metasNegocio](
	[fecha] [datetime] NULL,
	[territorios] [varchar](16) NULL,
	[region] [nvarchar](100) NULL,
	[establecimiento] [nvarchar](100) NULL,
	[asesor] [nvarchar](100) NULL,
	[categoria] [nvarchar](50) NULL,
	[meta_operaciones] [int] NOT NULL,
	[meta_desembolso] [int] NOT NULL,
	[avance_operaciones] [decimal](38, 4) NULL,
	[avance_desembolso] [decimal](38, 6) NULL,
	[tpp] [decimal](38, 6) NULL,
	[metaN_2] [int] NULL,
	[metaS_2] [int] NULL,
	[IIFF_año] [decimal](38, 6) NULL,
	[IIFF_mes] [decimal](38, 6) NULL,
	[bono_9p_2] [numeric](38, 6) NULL,
	[bono_final] [numeric](38, 6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rpt_productividad]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_productividad](
	[fecha] [datetime] NULL,
	[region] [nvarchar](100) NULL,
	[establecimiento] [nvarchar](100) NULL,
	[asesor] [nvarchar](100) NULL,
	[tipo_asesor] [varchar](10) NULL,
	[dia_1] [int] NULL,
	[dia_2] [int] NULL,
	[dia_3] [int] NULL,
	[dia_4] [int] NULL,
	[dia_5] [int] NULL,
	[dia_6] [int] NULL,
	[dia_7] [int] NULL,
	[dia_8] [int] NULL,
	[dia_9] [int] NULL,
	[dia_10] [int] NULL,
	[dia_11] [int] NULL,
	[dia_12] [int] NULL,
	[dia_13] [int] NULL,
	[dia_14] [int] NULL,
	[dia_15] [int] NULL,
	[dia_16] [int] NULL,
	[dia_17] [int] NULL,
	[dia_18] [int] NULL,
	[dia_19] [int] NULL,
	[dia_20] [int] NULL,
	[dia_21] [int] NULL,
	[dia_22] [int] NULL,
	[dia_23] [int] NULL,
	[dia_24] [int] NULL,
	[dia_25] [int] NULL,
	[dia_26] [int] NULL,
	[dia_27] [int] NULL,
	[dia_28] [int] NULL,
	[dia_29] [int] NULL,
	[dia_30] [int] NULL,
	[dia_31] [int] NULL,
	[operaciones] [decimal](38, 4) NULL,
	[desembolso] [decimal](38, 6) NULL,
	[mora_8] [decimal](38, 4) NULL,
	[dias_sin_desembolso] [int] NULL,
	[dias_con_desembolso] [int] NULL,
	[performance] [numeric](25, 13) NULL,
	[rankin_caja] [bigint] NULL,
	[rankin_region] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rpt_productividad_canal_rural]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_productividad_canal_rural](
	[id_fecha] [int] NULL,
	[region] [nvarchar](100) NULL,
	[establecimiento] [nvarchar](100) NULL,
	[categoria_producto] [nvarchar](100) NULL,
	[nombre_promotor] [nvarchar](255) NULL,
	[dni_cliente] [nvarchar](50) NULL,
	[fecha_registro] [datetime] NULL,
	[tipo_cliente] [nvarchar](50) NULL,
	[tipo_desembolso] [varchar](8) NOT NULL,
	[operaciones_dia] [int] NULL,
	[desembolso_dia] [decimal](38, 2) NULL,
	[operaciones_mes] [decimal](38, 4) NULL,
	[desembolso_mes] [decimal](38, 6) NULL,
	[fecha_desembolso] [datetime] NULL,
	[nro_prospectos] [int] NOT NULL,
	[tpp_desembolso] [decimal](38, 6) NULL,
	[nivel] [nvarchar](50) NULL,
	[meta] [int] NULL,
	[cant_prom] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rpt_productividad_canal_ruralV2]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_productividad_canal_ruralV2](
	[region] [nvarchar](100) NULL,
	[establecimiento] [nvarchar](100) NULL,
	[categoria_producto] [nvarchar](100) NULL,
	[dni_promotor] [varchar](max) NULL,
	[nombre_promotor] [nvarchar](255) NULL,
	[dni_cliente] [nvarchar](50) NULL,
	[fecha_registro] [datetime] NULL,
	[tipo_cliente] [nvarchar](50) NULL,
	[tipo_desembolso] [varchar](8) NOT NULL,
	[operaciones_dia] [int] NULL,
	[desembolso_dia] [decimal](38, 2) NULL,
	[operaciones_mes] [decimal](38, 4) NULL,
	[desembolso_mes] [decimal](38, 6) NULL,
	[fecha_desembolso] [datetime] NULL,
	[nro_prospectos] [int] NOT NULL,
	[tpp_desembolso] [decimal](38, 6) NULL,
	[id_promotor] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rpt_seguimiento_bases]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_seguimiento_bases](
	[id_fecha] [int] NULL,
	[region] [nvarchar](255) NULL,
	[establecimiento] [nvarchar](255) NULL,
	[categoria_producto] [nvarchar](100) NULL,
	[asesor] [nvarchar](100) NULL,
	[tipo_base] [varchar](18) NULL,
	[oferta_numero] [int] NULL,
	[oferta_monto] [float] NULL,
	[avance_numero] [decimal](38, 4) NULL,
	[avance_monto] [decimal](38, 6) NULL,
	[tpp_saldo] [decimal](38, 6) NULL,
	[saldo] [decimal](38, 6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rpt_seguimiento_campañas]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_seguimiento_campañas](
	[id_fecha] [int] NULL,
	[region] [nvarchar](100) NOT NULL,
	[establecimiento] [nvarchar](100) NOT NULL,
	[Asesor] [nvarchar](100) NOT NULL,
	[categoria_producto] [nvarchar](100) NULL,
	[tipo_cliente] [nvarchar](50) NULL,
	[cClasifInterna] [nvarchar](50) NOT NULL,
	[oferta_nro] [int] NULL,
	[oferta_monto] [float] NULL,
	[oferta_monto_CD] [float] NULL,
	[n_des_mes] [decimal](38, 4) NULL,
	[s_des_mes] [decimal](38, 6) NULL,
	[n_des_mes_total] [decimal](38, 4) NULL,
	[s_des_mes_total] [decimal](38, 6) NULL,
	[saldo] [decimal](38, 6) NULL,
	[tasa] [decimal](38, 6) NULL,
	[cliente_interesado] [varchar](2) NOT NULL,
	[fuente] [varchar](14) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rpt_transferencias]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_transferencias](
	[id_fecha] [int] NULL,
	[region] [nvarchar](100) NULL,
	[oficina] [nvarchar](100) NULL,
	[establecimiento] [nvarchar](100) NULL,
	[asesor_origen] [nvarchar](100) NULL,
	[asesor_destino] [nvarchar](100) NULL,
	[saldo] [decimal](38, 6) NULL,
	[saldo_vigente] [decimal](38, 6) NULL,
	[saldo_vencido] [decimal](38, 6) NULL,
	[saldo_judicial] [decimal](38, 6) NULL,
	[saldo_castigado] [decimal](38, 6) NULL,
	[CreditosVIG] [int] NULL,
	[CreditosVEN] [int] NULL,
	[CreditosJUD] [int] NULL,
	[CreditosCAST] [int] NULL,
	[CreditosTOTAL] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rpt_transferencias_codigo_credito]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rpt_transferencias_codigo_credito](
	[id_fecha] [int] NULL,
	[region] [nvarchar](100) NULL,
	[oficina] [nvarchar](100) NULL,
	[establecimiento] [nvarchar](100) NULL,
	[asesor_origen] [nvarchar](100) NULL,
	[asesor_destino] [nvarchar](100) NULL,
	[id_cronograma] [int] NOT NULL,
	[id_cliente] [int] NOT NULL,
	[saldo] [decimal](38, 6) NULL,
	[saldo_mora8] [decimal](38, 4) NULL,
	[saldo_vigente] [decimal](38, 6) NULL,
	[saldo_vencido] [decimal](38, 6) NULL,
	[saldo_judicial] [decimal](38, 6) NULL,
	[saldo_castigado] [decimal](38, 6) NULL,
	[cliente] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rptng_tablero]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rptng_tablero](
	[fecha] [datetime] NULL,
	[AhorroCliente] [float] NULL,
	[Plazo_Fijo] [float] NULL,
	[CTS] [float] NULL,
	[saldoVigente] [float] NULL,
	[saldoMora] [float] NULL,
	[desembolsos] [float] NULL,
	[CobranzaVigente] [float] NULL,
	[CobranzaVencido] [float] NULL,
	[Reprogramaciones] [float] NULL,
	[contact_AseMKT] [float] NULL,
	[datos_confiables] [float] NULL,
	[datos_confiablesTOTAL] [float] NULL,
	[BIMS] [float] NULL,
	[BIMERS] [float] NULL,
	[BIM_PAGOS_M] [float] NULL,
	[BIM_PAGOS_N] [float] NULL,
	[KAS_PAGOS_M] [float] NULL,
	[KAS_PAGOS_N] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rtp_detalle_recuperaciones]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rtp_detalle_recuperaciones](
	[fecha_consulta] [date] NULL,
	[fecha_ultimo_pago] [datetime] NULL,
	[fecha_vencimiento_cuota_actual] [datetime] NULL,
	[fecha_reprogramacion] [date] NULL,
	[fecha_refinanciado] [date] NULL,
	[Region] [varchar](120) NULL,
	[Oficina] [varchar](120) NULL,
	[Establecimiento] [varchar](60) NULL,
	[nombre_asesor] [varchar](150) NULL,
	[nombre_cliente] [varchar](150) NULL,
	[Codigo_cliente] [int] NOT NULL,
	[Codigo_credito] [int] NOT NULL,
	[Nombre_producto] [varchar](100) NULL,
	[Estado_contable_credito] [varchar](100) NULL,
	[saldo total] [decimal](38, 6) NULL,
	[mora contable] [decimal](38, 6) NULL,
	[Mora 8] [decimal](38, 6) NULL,
	[capital_pagar] [decimal](18, 4) NULL,
	[capital_pagado] [decimal](18, 4) NULL,
	[interes_pagar] [decimal](18, 4) NULL,
	[interes_pagado] [decimal](18, 4) NULL,
	[mora_pagar] [decimal](18, 4) NULL,
	[mora_pagado] [decimal](18, 4) NULL,
	[otros_pagar] [decimal](18, 4) NULL,
	[otros_pagado] [decimal](18, 4) NULL,
	[nro_cuotas] [int] NULL,
	[nro_cuotas_pagadas] [int] NULL,
	[nro_cuotas_pendientes] [int] NULL,
	[nro_cuotas_vencidas] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segmentacion_Agosto_21_v2]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segmentacion_Agosto_21_v2](
	[region] [nvarchar](100) NULL,
	[establecimiento] [nvarchar](100) NULL,
	[dni] [nvarchar](50) NULL,
	[edad] [int] NULL,
	[saldo] [decimal](38, 6) NULL,
	[ev_castigo] [int] NULL,
	[ev_atraso_8_dias] [int] NULL,
	[ev_clientePJ] [int] NULL,
	[ev_clasificacion100] [int] NULL,
	[ev_edad] [int] NULL,
	[ev_saldo] [int] NULL,
	[ev_sow] [int] NULL,
	[ev_CantEntid2] [int] NULL,
	[semaforo] [int] NULL,
	[id_fecha] [int] NULL,
	[id_cliente] [int] NOT NULL,
	[codigo_cliente] [int] NULL,
	[codigo_sbs] [nvarchar](50) NULL,
	[id_establecimiento] [int] NULL,
	[categoria_producto] [nvarchar](100) NULL,
	[frecuencia] [nvarchar](250) NULL,
	[tip_credito_sbs] [nvarchar](50) NULL,
	[clasificacion_interna] [varchar](23) NULL,
	[dias_atraso_maximo] [int] NOT NULL,
	[dias_atraso_promedio] [int] NOT NULL,
	[nro_creditos_caja] [int] NULL,
	[tasa] [decimal](38, 6) NULL,
	[nro_condonaciones] [int] NULL,
	[nro_refinanciaciones] [int] NULL,
	[nro_reprogramaciones] [numeric](31, 17) NULL,
	[tipo_cliente] [nvarchar](50) NULL,
	[cantEmpresas] [int] NOT NULL,
	[Interescobrado] [decimal](38, 6) NOT NULL,
	[monto] [decimal](38, 4) NOT NULL,
	[var_1] [decimal](18, 6) NULL,
	[var_2] [decimal](18, 6) NULL,
	[var_3] [decimal](18, 6) NULL,
	[var_4] [decimal](18, 6) NULL,
	[var_5] [decimal](18, 6) NULL,
	[var_6] [decimal](18, 6) NULL,
	[var_7] [decimal](18, 6) NULL,
	[var_8] [decimal](18, 6) NULL,
	[var_9] [decimal](18, 6) NULL,
	[var_10] [decimal](18, 6) NULL,
	[puntaje] [decimal](27, 6) NULL,
	[segmento] [varchar](13) NOT NULL,
	[semaforo_] [varchar](5) NULL,
	[segmento_final] [varchar](12) NOT NULL,
	[saldo_12] [decimal](38, 2) NULL,
	[saldo_11] [decimal](38, 2) NULL,
	[saldo_10] [decimal](38, 2) NULL,
	[saldo_9] [decimal](38, 2) NULL,
	[saldo_8] [decimal](38, 2) NULL,
	[saldo_7] [decimal](38, 2) NULL,
	[saldo_6] [decimal](38, 2) NULL,
	[saldo_5] [decimal](38, 2) NULL,
	[saldo_4] [decimal](38, 2) NULL,
	[saldo_3] [decimal](38, 2) NULL,
	[saldo_2] [decimal](38, 2) NULL,
	[saldo_1] [decimal](38, 2) NULL,
	[nro_cpp] [int] NULL,
	[deficiente] [int] NULL,
	[dudoso] [int] NULL,
	[perdida] [int] NULL,
	[plazo] [int] NULL,
	[nro_cuotas] [int] NULL,
	[nro_cuotas_pagadas] [int] NULL,
	[nro_cuotas_pendientes] [int] NULL,
	[nCapitalPagado] [decimal](38, 2) NULL,
	[dFecReg] [date] NULL,
	[año] [int] NULL,
	[utilidad_disponible] [decimal](14, 2) NULL,
	[gastos_financieros] [decimal](14, 2) NULL,
	[saldo_exclusivo] [decimal](38, 2) NULL,
	[gasto_financiero_nuevo] [numeric](38, 6) NULL,
	[utilidad_nueva] [numeric](38, 6) NULL,
	[tasa_2] [decimal](38, 6) NULL,
	[cuota_nueva_max_12] [numeric](38, 6) NULL,
	[cuota_nueva_max_18] [numeric](38, 6) NULL,
	[cuota_nueva_max_24] [numeric](38, 6) NULL,
	[tasa_frecuencia] [decimal](38, 6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segmentacion_enero]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segmentacion_enero](
	[id_fecha] [int] NOT NULL,
	[id_cliente] [int] NOT NULL,
	[codigo_sbs] [nvarchar](50) NULL,
	[id_establecimiento] [int] NULL,
	[categoria_producto] [nvarchar](100) NULL,
	[clasificacion_interna] [varchar](23) NULL,
	[dias_atraso_maximo] [float] NOT NULL,
	[dias_atraso_promedio] [float] NOT NULL,
	[nro_creditos_caja] [int] NULL,
	[tasa] [decimal](38, 6) NULL,
	[nro_condonaciones] [int] NULL,
	[nro_refinanciaciones] [int] NULL,
	[nro_reprogramaciones] [numeric](31, 17) NULL,
	[tipo_cliente] [nvarchar](50) NULL,
	[cantEmpresas] [int] NOT NULL,
	[Interescobrado] [decimal](38, 6) NOT NULL,
	[monto] [decimal](38, 4) NOT NULL,
	[var_1] [decimal](18, 6) NULL,
	[var_2] [decimal](18, 6) NULL,
	[var_3] [decimal](18, 6) NULL,
	[var_4] [decimal](18, 6) NULL,
	[var_5] [decimal](18, 6) NULL,
	[var_6] [decimal](18, 6) NULL,
	[var_7] [decimal](18, 6) NULL,
	[var_8] [decimal](18, 6) NULL,
	[var_9] [decimal](18, 6) NULL,
	[var_10] [decimal](18, 6) NULL,
	[puntaje] [decimal](27, 6) NULL,
	[segmento] [varchar](13) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segmentacion_Julio_21_v2]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segmentacion_Julio_21_v2](
	[region] [nvarchar](100) NULL,
	[establecimiento] [nvarchar](100) NULL,
	[dni] [nvarchar](50) NULL,
	[edad] [int] NULL,
	[saldo] [decimal](38, 6) NULL,
	[ev_castigo] [int] NULL,
	[ev_atraso_8_dias] [int] NULL,
	[ev_clientePJ] [int] NULL,
	[ev_clasificacion100] [int] NULL,
	[ev_edad] [int] NULL,
	[ev_saldo] [int] NULL,
	[ev_sow] [int] NULL,
	[ev_CantEntid2] [int] NULL,
	[semaforo] [int] NULL,
	[id_fecha] [int] NULL,
	[id_cliente] [int] NOT NULL,
	[codigo_cliente] [int] NULL,
	[codigo_sbs] [nvarchar](50) NULL,
	[id_establecimiento] [int] NULL,
	[categoria_producto] [nvarchar](100) NULL,
	[frecuencia] [nvarchar](250) NULL,
	[tip_credito_sbs] [nvarchar](50) NULL,
	[clasificacion_interna] [varchar](23) NULL,
	[dias_atraso_maximo] [int] NOT NULL,
	[dias_atraso_promedio] [int] NOT NULL,
	[nro_creditos_caja] [int] NULL,
	[tasa] [decimal](38, 6) NULL,
	[nro_condonaciones] [int] NULL,
	[nro_refinanciaciones] [int] NULL,
	[nro_reprogramaciones] [numeric](31, 17) NULL,
	[tipo_cliente] [nvarchar](50) NULL,
	[cantEmpresas] [int] NOT NULL,
	[Interescobrado] [decimal](38, 6) NOT NULL,
	[monto] [decimal](38, 4) NOT NULL,
	[var_1] [decimal](18, 6) NULL,
	[var_2] [decimal](18, 6) NULL,
	[var_3] [decimal](18, 6) NULL,
	[var_4] [decimal](18, 6) NULL,
	[var_5] [decimal](18, 6) NULL,
	[var_6] [decimal](18, 6) NULL,
	[var_7] [decimal](18, 6) NULL,
	[var_8] [decimal](18, 6) NULL,
	[var_9] [decimal](18, 6) NULL,
	[var_10] [decimal](18, 6) NULL,
	[puntaje] [decimal](27, 6) NULL,
	[segmento] [varchar](13) NOT NULL,
	[semaforo_] [varchar](5) NULL,
	[segmento_final] [varchar](12) NOT NULL,
	[saldo_12] [decimal](38, 2) NULL,
	[saldo_11] [decimal](38, 2) NULL,
	[saldo_10] [decimal](38, 2) NULL,
	[saldo_9] [decimal](38, 2) NULL,
	[saldo_8] [decimal](38, 2) NULL,
	[saldo_7] [decimal](38, 2) NULL,
	[saldo_6] [decimal](38, 2) NULL,
	[saldo_5] [decimal](38, 2) NULL,
	[saldo_4] [decimal](38, 2) NULL,
	[saldo_3] [decimal](38, 2) NULL,
	[saldo_2] [decimal](38, 2) NULL,
	[saldo_1] [decimal](38, 2) NULL,
	[nro_cpp] [int] NULL,
	[deficiente] [int] NULL,
	[dudoso] [int] NULL,
	[perdida] [int] NULL,
	[plazo] [int] NULL,
	[nro_cuotas] [int] NULL,
	[nro_cuotas_pagadas] [int] NULL,
	[nro_cuotas_pendientes] [int] NULL,
	[nCapitalPagado] [decimal](38, 2) NULL,
	[dFecReg] [date] NULL,
	[año] [int] NULL,
	[utilidad_disponible] [decimal](14, 2) NULL,
	[gastos_financieros] [decimal](14, 2) NULL,
	[saldo_exclusivo] [decimal](38, 2) NULL,
	[gasto_financiero_nuevo] [numeric](38, 6) NULL,
	[utilidad_nueva] [decimal](38, 6) NULL,
	[tasa_2] [decimal](38, 6) NULL,
	[cuota_nueva_max_12] [numeric](38, 6) NULL,
	[cuota_nueva_max_18] [numeric](38, 6) NULL,
	[cuota_nueva_max_24] [numeric](38, 6) NULL,
	[tasa_frecuencia] [decimal](38, 6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segmentacion_Julio_21_v3]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segmentacion_Julio_21_v3](
	[region] [nvarchar](100) NULL,
	[establecimiento] [nvarchar](100) NULL,
	[dni] [nvarchar](50) NULL,
	[edad] [int] NULL,
	[saldo] [decimal](38, 6) NULL,
	[ev_castigo] [int] NULL,
	[ev_atraso_8_dias] [int] NULL,
	[ev_clientePJ] [int] NULL,
	[ev_clasificacion100] [int] NULL,
	[ev_saldo] [int] NULL,
	[ev_CantEntid] [int] NULL,
	[semaforo] [int] NULL,
	[id_fecha] [int] NOT NULL,
	[id_cliente] [int] NOT NULL,
	[codigo_cliente] [int] NULL,
	[codigo_sbs] [nvarchar](50) NULL,
	[id_establecimiento] [int] NULL,
	[categoria_producto] [nvarchar](100) NULL,
	[frecuencia] [nvarchar](250) NULL,
	[tip_credito_sbs] [nvarchar](50) NULL,
	[clasificacion_interna] [varchar](23) NULL,
	[dias_atraso_maximo] [int] NOT NULL,
	[dias_atraso_promedio] [int] NOT NULL,
	[nro_creditos_caja] [int] NULL,
	[tasa] [decimal](38, 6) NULL,
	[nro_condonaciones] [int] NULL,
	[nro_refinanciaciones] [int] NULL,
	[nro_reprogramaciones] [numeric](31, 17) NULL,
	[tipo_cliente] [nvarchar](50) NULL,
	[cantEmpresas] [int] NOT NULL,
	[Interescobrado] [decimal](38, 6) NOT NULL,
	[monto] [decimal](38, 4) NOT NULL,
	[var_1] [decimal](18, 6) NULL,
	[var_2] [decimal](18, 6) NULL,
	[var_3] [decimal](18, 6) NULL,
	[var_4] [decimal](18, 6) NULL,
	[var_5] [decimal](18, 6) NULL,
	[var_6] [decimal](18, 6) NULL,
	[var_7] [decimal](18, 6) NULL,
	[var_8] [decimal](18, 6) NULL,
	[var_9] [decimal](18, 6) NULL,
	[var_10] [decimal](18, 6) NULL,
	[puntaje] [decimal](27, 6) NULL,
	[segmento] [varchar](13) NOT NULL,
	[semaforo_] [varchar](5) NULL,
	[segmento_final] [varchar](12) NOT NULL,
	[saldo_12] [decimal](38, 2) NULL,
	[saldo_11] [decimal](38, 2) NULL,
	[saldo_10] [decimal](38, 2) NULL,
	[saldo_9] [decimal](38, 2) NULL,
	[saldo_8] [decimal](38, 2) NULL,
	[saldo_7] [decimal](38, 2) NULL,
	[saldo_6] [decimal](38, 2) NULL,
	[saldo_5] [decimal](38, 2) NULL,
	[saldo_4] [decimal](38, 2) NULL,
	[saldo_3] [decimal](38, 2) NULL,
	[saldo_2] [decimal](38, 2) NULL,
	[saldo_1] [decimal](38, 2) NULL,
	[nro_cpp] [int] NULL,
	[deficiente] [int] NULL,
	[dudoso] [int] NULL,
	[perdida] [int] NULL,
	[plazo] [int] NULL,
	[nro_cuotas] [int] NULL,
	[nro_cuotas_pagadas] [int] NULL,
	[nro_cuotas_pendientes] [int] NULL,
	[nCapitalPagado] [decimal](38, 2) NULL,
	[dFecReg] [date] NULL,
	[año] [int] NULL,
	[utilidad_disponible] [decimal](14, 2) NULL,
	[gastos_financieros] [decimal](14, 2) NULL,
	[saldo_exclusivo] [decimal](38, 2) NULL,
	[gasto_financiero_nuevo] [numeric](38, 6) NULL,
	[utilidad_nueva] [decimal](38, 6) NULL,
	[tasa_2] [decimal](38, 6) NULL,
	[cuota_nueva_max_12] [numeric](38, 6) NULL,
	[cuota_nueva_max_18] [numeric](38, 6) NULL,
	[cuota_nueva_max_24] [numeric](38, 6) NULL,
	[tasa_frecuencia] [decimal](38, 6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segmentacion_marzo]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segmentacion_marzo](
	[region] [nvarchar](100) NULL,
	[establecimiento] [nvarchar](100) NULL,
	[dni] [nvarchar](50) NULL,
	[edad] [int] NULL,
	[saldo] [decimal](38, 6) NULL,
	[ev_castigo] [int] NULL,
	[ev_atraso_8_dias] [int] NULL,
	[ev_clientePJ] [int] NULL,
	[ev_clasificacion100] [int] NULL,
	[ev_saldo] [int] NULL,
	[ev_CantEntid] [int] NULL,
	[semaforo] [int] NULL,
	[id_fecha] [int] NOT NULL,
	[id_cliente] [int] NOT NULL,
	[codigo_cliente] [int] NULL,
	[codigo_sbs] [nvarchar](50) NULL,
	[id_establecimiento] [int] NULL,
	[categoria_producto] [nvarchar](100) NULL,
	[frecuencia] [nvarchar](250) NULL,
	[tip_credito_sbs] [nvarchar](50) NULL,
	[clasificacion_interna] [varchar](23) NULL,
	[dias_atraso_maximo] [float] NOT NULL,
	[dias_atraso_promedio] [float] NOT NULL,
	[nro_creditos_caja] [int] NULL,
	[tasa] [decimal](38, 6) NULL,
	[nro_condonaciones] [int] NULL,
	[nro_refinanciaciones] [int] NULL,
	[nro_reprogramaciones] [numeric](31, 17) NULL,
	[tipo_cliente] [nvarchar](50) NULL,
	[cantEmpresas] [int] NOT NULL,
	[Interescobrado] [decimal](38, 6) NOT NULL,
	[monto] [decimal](38, 4) NOT NULL,
	[var_1] [decimal](18, 6) NULL,
	[var_2] [decimal](18, 6) NULL,
	[var_3] [decimal](18, 6) NULL,
	[var_4] [decimal](18, 6) NULL,
	[var_5] [decimal](18, 6) NULL,
	[var_6] [decimal](18, 6) NULL,
	[var_7] [decimal](18, 6) NULL,
	[var_8] [decimal](18, 6) NULL,
	[var_9] [decimal](18, 6) NULL,
	[var_10] [decimal](18, 6) NULL,
	[puntaje] [decimal](27, 6) NULL,
	[segmento] [varchar](13) NOT NULL,
	[semaforo_] [varchar](5) NULL,
	[segmento_final] [varchar](12) NOT NULL,
	[saldo_12] [decimal](38, 2) NULL,
	[saldo_11] [decimal](38, 2) NULL,
	[saldo_10] [decimal](38, 2) NULL,
	[saldo_9] [decimal](38, 2) NULL,
	[saldo_8] [decimal](38, 2) NULL,
	[saldo_7] [decimal](38, 2) NULL,
	[saldo_6] [decimal](38, 2) NULL,
	[saldo_5] [decimal](38, 2) NULL,
	[saldo_4] [decimal](38, 2) NULL,
	[saldo_3] [decimal](38, 2) NULL,
	[saldo_2] [decimal](38, 2) NULL,
	[saldo_1] [decimal](38, 2) NULL,
	[plazo] [int] NULL,
	[nro_cuotas] [int] NULL,
	[nro_cuotas_pagadas] [int] NULL,
	[nro_cuotas_pendientes] [int] NULL,
	[nCapitalPagado] [decimal](38, 2) NULL,
	[utilidad_disponible] [decimal](14, 2) NULL,
	[gastos_financieros] [decimal](14, 2) NULL,
	[saldo_exclusivo] [decimal](38, 2) NULL,
	[gasto_financiero_nuevo] [numeric](38, 6) NULL,
	[utilidad_nueva] [decimal](38, 6) NULL,
	[tasa_2] [decimal](38, 6) NULL,
	[cuota_nueva_max_12] [numeric](38, 6) NULL,
	[cuota_nueva_max_18] [numeric](38, 6) NULL,
	[cuota_nueva_max_24] [numeric](38, 6) NULL,
	[tasa_frecuencia] [decimal](38, 6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segmentacion_mayo_21]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segmentacion_mayo_21](
	[region] [nvarchar](100) NULL,
	[establecimiento] [nvarchar](100) NULL,
	[dni] [nvarchar](50) NULL,
	[edad] [int] NULL,
	[saldo] [decimal](38, 6) NULL,
	[ev_castigo] [int] NULL,
	[ev_atraso_8_dias] [int] NULL,
	[ev_clientePJ] [int] NULL,
	[ev_clasificacion100] [int] NULL,
	[ev_saldo] [int] NULL,
	[ev_CantEntid] [int] NULL,
	[semaforo] [int] NULL,
	[id_fecha] [int] NOT NULL,
	[id_cliente] [int] NOT NULL,
	[codigo_cliente] [int] NULL,
	[codigo_sbs] [nvarchar](50) NULL,
	[id_establecimiento] [int] NULL,
	[categoria_producto] [nvarchar](100) NULL,
	[frecuencia] [nvarchar](250) NULL,
	[tip_credito_sbs] [nvarchar](50) NULL,
	[clasificacion_interna] [varchar](23) NULL,
	[dias_atraso_maximo] [float] NOT NULL,
	[dias_atraso_promedio] [float] NOT NULL,
	[nro_creditos_caja] [int] NULL,
	[tasa] [decimal](38, 6) NULL,
	[nro_condonaciones] [int] NULL,
	[nro_refinanciaciones] [int] NULL,
	[nro_reprogramaciones] [numeric](31, 17) NULL,
	[tipo_cliente] [nvarchar](50) NULL,
	[cantEmpresas] [int] NOT NULL,
	[Interescobrado] [decimal](38, 6) NOT NULL,
	[monto] [decimal](38, 4) NOT NULL,
	[var_1] [decimal](18, 6) NULL,
	[var_2] [decimal](18, 6) NULL,
	[var_3] [decimal](18, 6) NULL,
	[var_4] [decimal](18, 6) NULL,
	[var_5] [decimal](18, 6) NULL,
	[var_6] [decimal](18, 6) NULL,
	[var_7] [decimal](18, 6) NULL,
	[var_8] [decimal](18, 6) NULL,
	[var_9] [decimal](18, 6) NULL,
	[var_10] [decimal](18, 6) NULL,
	[puntaje] [decimal](27, 6) NULL,
	[segmento] [varchar](13) NOT NULL,
	[semaforo_] [varchar](5) NULL,
	[segmento_final] [varchar](12) NOT NULL,
	[saldo_12] [decimal](38, 2) NULL,
	[saldo_11] [decimal](38, 2) NULL,
	[saldo_10] [decimal](38, 2) NULL,
	[saldo_9] [decimal](38, 2) NULL,
	[saldo_8] [decimal](38, 2) NULL,
	[saldo_7] [decimal](38, 2) NULL,
	[saldo_6] [decimal](38, 2) NULL,
	[saldo_5] [decimal](38, 2) NULL,
	[saldo_4] [decimal](38, 2) NULL,
	[saldo_3] [decimal](38, 2) NULL,
	[saldo_2] [decimal](38, 2) NULL,
	[saldo_1] [decimal](38, 2) NULL,
	[plazo] [int] NULL,
	[nro_cuotas] [int] NULL,
	[nro_cuotas_pagadas] [int] NULL,
	[nro_cuotas_pendientes] [int] NULL,
	[nCapitalPagado] [decimal](38, 2) NULL,
	[dFecReg] [date] NULL,
	[año] [int] NULL,
	[utilidad_disponible] [decimal](14, 2) NULL,
	[gastos_financieros] [decimal](14, 2) NULL,
	[saldo_exclusivo] [decimal](38, 2) NULL,
	[gasto_financiero_nuevo] [numeric](38, 6) NULL,
	[utilidad_nueva] [decimal](38, 6) NULL,
	[tasa_2] [decimal](38, 6) NULL,
	[cuota_nueva_max_12] [numeric](38, 6) NULL,
	[cuota_nueva_max_18] [numeric](38, 6) NULL,
	[cuota_nueva_max_24] [numeric](38, 6) NULL,
	[tasa_frecuencia] [decimal](38, 6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segmentacion_mayo_21_v2]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segmentacion_mayo_21_v2](
	[region] [nvarchar](100) NULL,
	[establecimiento] [nvarchar](100) NULL,
	[dni] [nvarchar](50) NULL,
	[edad] [int] NULL,
	[saldo] [decimal](38, 6) NULL,
	[ev_castigo] [int] NULL,
	[ev_atraso_8_dias] [int] NULL,
	[ev_clientePJ] [int] NULL,
	[ev_clasificacion100] [int] NULL,
	[ev_saldo] [int] NULL,
	[ev_CantEntid] [int] NULL,
	[semaforo] [int] NULL,
	[id_fecha] [int] NOT NULL,
	[id_cliente] [int] NOT NULL,
	[codigo_cliente] [int] NULL,
	[codigo_sbs] [nvarchar](50) NULL,
	[id_establecimiento] [int] NULL,
	[categoria_producto] [nvarchar](100) NULL,
	[frecuencia] [nvarchar](250) NULL,
	[tip_credito_sbs] [nvarchar](50) NULL,
	[clasificacion_interna] [varchar](23) NULL,
	[dias_atraso_maximo] [float] NOT NULL,
	[dias_atraso_promedio] [float] NOT NULL,
	[nro_creditos_caja] [int] NULL,
	[tasa] [decimal](38, 6) NULL,
	[nro_condonaciones] [int] NULL,
	[nro_refinanciaciones] [int] NULL,
	[nro_reprogramaciones] [numeric](31, 17) NULL,
	[tipo_cliente] [nvarchar](50) NULL,
	[cantEmpresas] [int] NOT NULL,
	[Interescobrado] [decimal](38, 6) NOT NULL,
	[monto] [decimal](38, 4) NOT NULL,
	[var_1] [decimal](18, 6) NULL,
	[var_2] [decimal](18, 6) NULL,
	[var_3] [decimal](18, 6) NULL,
	[var_4] [decimal](18, 6) NULL,
	[var_5] [decimal](18, 6) NULL,
	[var_6] [decimal](18, 6) NULL,
	[var_7] [decimal](18, 6) NULL,
	[var_8] [decimal](18, 6) NULL,
	[var_9] [decimal](18, 6) NULL,
	[var_10] [decimal](18, 6) NULL,
	[puntaje] [decimal](27, 6) NULL,
	[segmento] [varchar](13) NOT NULL,
	[semaforo_] [varchar](5) NULL,
	[segmento_final] [varchar](12) NOT NULL,
	[saldo_12] [decimal](38, 2) NULL,
	[saldo_11] [decimal](38, 2) NULL,
	[saldo_10] [decimal](38, 2) NULL,
	[saldo_9] [decimal](38, 2) NULL,
	[saldo_8] [decimal](38, 2) NULL,
	[saldo_7] [decimal](38, 2) NULL,
	[saldo_6] [decimal](38, 2) NULL,
	[saldo_5] [decimal](38, 2) NULL,
	[saldo_4] [decimal](38, 2) NULL,
	[saldo_3] [decimal](38, 2) NULL,
	[saldo_2] [decimal](38, 2) NULL,
	[saldo_1] [decimal](38, 2) NULL,
	[plazo] [int] NULL,
	[nro_cuotas] [int] NULL,
	[nro_cuotas_pagadas] [int] NULL,
	[nro_cuotas_pendientes] [int] NULL,
	[nCapitalPagado] [decimal](38, 2) NULL,
	[dFecReg] [date] NULL,
	[año] [int] NULL,
	[utilidad_disponible] [decimal](14, 2) NULL,
	[gastos_financieros] [decimal](14, 2) NULL,
	[saldo_exclusivo] [decimal](38, 2) NULL,
	[gasto_financiero_nuevo] [numeric](38, 6) NULL,
	[utilidad_nueva] [decimal](38, 6) NULL,
	[tasa_2] [decimal](38, 6) NULL,
	[cuota_nueva_max_12] [numeric](38, 6) NULL,
	[cuota_nueva_max_18] [numeric](38, 6) NULL,
	[cuota_nueva_max_24] [numeric](38, 6) NULL,
	[tasa_frecuencia] [decimal](38, 6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segmentacion_mix]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segmentacion_mix](
	[codigo_cliente] [float] NULL,
	[segmento_final] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segmentacion_mixx]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segmentacion_mixx](
	[codigo_cliente] [float] NULL,
	[segmento_final] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segmentacion_Octubre21]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segmentacion_Octubre21](
	[region] [nvarchar](100) NULL,
	[establecimiento] [nvarchar](100) NULL,
	[dni] [nvarchar](50) NULL,
	[edad] [int] NULL,
	[saldo] [decimal](38, 6) NULL,
	[ev_castigo] [int] NULL,
	[ev_atraso_8_dias] [int] NULL,
	[ev_clientePJ] [int] NULL,
	[ev_clasificacion100] [int] NULL,
	[ev_edad] [int] NULL,
	[ev_saldo] [int] NULL,
	[ev_sow] [int] NULL,
	[ev_CantEntid2] [int] NULL,
	[semaforo] [int] NULL,
	[id_fecha] [int] NULL,
	[id_cliente] [int] NOT NULL,
	[codigo_cliente] [int] NULL,
	[codigo_sbs] [nvarchar](50) NULL,
	[id_establecimiento] [int] NULL,
	[categoria_producto] [nvarchar](100) NULL,
	[frecuencia] [nvarchar](250) NULL,
	[tip_credito_sbs] [nvarchar](50) NULL,
	[clasificacion_interna] [varchar](23) NULL,
	[dias_atraso_maximo] [int] NOT NULL,
	[dias_atraso_promedio] [int] NOT NULL,
	[nro_creditos_caja] [int] NULL,
	[tasa] [decimal](38, 6) NULL,
	[nro_condonaciones] [int] NULL,
	[nro_refinanciaciones] [int] NULL,
	[nro_reprogramaciones] [numeric](31, 17) NULL,
	[tipo_cliente] [nvarchar](50) NULL,
	[cantEmpresas] [int] NOT NULL,
	[Interescobrado] [decimal](38, 6) NOT NULL,
	[monto] [decimal](38, 4) NOT NULL,
	[var_1] [decimal](18, 6) NULL,
	[var_2] [decimal](18, 6) NULL,
	[var_3] [decimal](18, 6) NULL,
	[var_4] [decimal](18, 6) NULL,
	[var_5] [decimal](18, 6) NULL,
	[var_6] [decimal](18, 6) NULL,
	[var_7] [decimal](18, 6) NULL,
	[var_8] [decimal](18, 6) NULL,
	[var_9] [decimal](18, 6) NULL,
	[var_10] [decimal](18, 6) NULL,
	[puntaje] [decimal](27, 6) NULL,
	[segmento] [varchar](13) NOT NULL,
	[semaforo_] [varchar](5) NULL,
	[segmento_final] [varchar](12) NOT NULL,
	[saldo_12] [decimal](38, 2) NULL,
	[saldo_11] [decimal](38, 2) NULL,
	[saldo_10] [decimal](38, 2) NULL,
	[saldo_9] [decimal](38, 2) NULL,
	[saldo_8] [decimal](38, 2) NULL,
	[saldo_7] [decimal](38, 2) NULL,
	[saldo_6] [decimal](38, 2) NULL,
	[saldo_5] [decimal](38, 2) NULL,
	[saldo_4] [decimal](38, 2) NULL,
	[saldo_3] [decimal](38, 2) NULL,
	[saldo_2] [decimal](38, 2) NULL,
	[saldo_1] [decimal](38, 2) NULL,
	[nro_cpp] [int] NULL,
	[deficiente] [int] NULL,
	[dudoso] [int] NULL,
	[perdida] [int] NULL,
	[plazo] [int] NULL,
	[nro_cuotas] [int] NULL,
	[nro_cuotas_pagadas] [int] NULL,
	[nro_cuotas_pendientes] [int] NULL,
	[nCapitalPagado] [decimal](38, 2) NULL,
	[dFecReg] [date] NULL,
	[año] [int] NULL,
	[utilidad_disponible] [decimal](14, 2) NULL,
	[gastos_financieros] [decimal](14, 2) NULL,
	[saldo_exclusivo] [decimal](38, 2) NULL,
	[gasto_financiero_nuevo] [numeric](38, 6) NULL,
	[utilidad_nueva] [numeric](38, 6) NULL,
	[tasa_2] [decimal](38, 6) NULL,
	[cuota_nueva_max_12] [numeric](38, 6) NULL,
	[cuota_nueva_max_18] [numeric](38, 6) NULL,
	[cuota_nueva_max_24] [numeric](38, 6) NULL,
	[tasa_frecuencia] [decimal](38, 6) NULL,
	[dias_maximo] [int] NULL,
	[dias_promedio] [int] NULL,
	[id_asesor] [int] NULL,
	[codigo_asesor] [int] NULL,
	[asesor] [nvarchar](100) NULL,
	[cDistrito] [varchar](120) NULL,
	[cDireccion] [varchar](200) NULL,
	[departamento] [varchar](120) NULL,
	[provincia] [varchar](120) NULL,
	[cNombre] [varchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Segmentacion0921]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Segmentacion0921](
	[codigo_cliente] [float] NULL,
	[categoria_producto] [nvarchar](255) NULL,
	[frecuencia] [nvarchar](255) NULL,
	[Segmento] [nvarchar](255) NULL,
	[Oferta 12 ] [float] NULL,
	[Oferta 18] [float] NULL,
	[Oferta 24] [float] NULL,
	[Tipo Operación] [nvarchar](255) NULL,
	[Modalidad] [nvarchar](255) NULL,
	[Tipo Oferta] [nvarchar](255) NULL,
	[cuota] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segmentacion1102]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segmentacion1102](
	[tipo_campaña] [nvarchar](255) NULL,
	[dni] [float] NULL,
	[nombre] [nvarchar](255) NULL,
	[OfertaFinal] [float] NULL,
	[tasa] [float] NULL,
	[cuota_12meses] [float] NULL,
	[cuota_18meses] [float] NULL,
	[codigo_asesor] [float] NULL,
	[asesor] [nvarchar](255) NULL,
	[Tipo_oferta_12] [nvarchar](255) NULL,
	[Seguimiento] [nvarchar](255) NULL,
	[Region] [nvarchar](255) NULL,
	[Establecimiento] [nvarchar](255) NULL,
	[Flag_activaciones] [nvarchar](255) NULL,
	[telefonos] [nvarchar](255) NULL,
	[Flag_leadswarmi_ant] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segmentacionjunio]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segmentacionjunio](
	[codigo_cliente] [float] NULL,
	[categoria_producto] [nvarchar](255) NULL,
	[frecuencia] [nvarchar](255) NULL,
	[segmento_final] [nvarchar](255) NULL,
	[Oferta 12 +] [float] NULL,
	[Oferta 18 +] [float] NULL,
	[Oferta 24 +] [float] NULL,
	[Tipo_Operacion] [nvarchar](255) NULL,
	[Modalidad] [nvarchar](255) NULL,
	[Tipo Oferta ++++] [nvarchar](255) NULL,
	[region] [nvarchar](255) NULL,
	[establecimiento] [nvarchar](255) NULL,
	[codigoasesor] [float] NULL,
	[asesor] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[segmentacionmayo]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[segmentacionmayo](
	[codigo_cliente] [float] NULL,
	[categoria_producto] [nvarchar](255) NULL,
	[frecuencia] [nvarchar](255) NULL,
	[segmento_final] [nvarchar](255) NULL,
	[Oferta 12 +] [float] NULL,
	[Oferta 18 +] [float] NULL,
	[Oferta 24 +] [float] NULL,
	[Tipo_Operacion] [nvarchar](255) NULL,
	[Modalidad] [nvarchar](255) NULL,
	[Tipo Oferta ++++] [nvarchar](255) NULL,
	[region] [nvarchar](255) NULL,
	[establecimiento] [nvarchar](255) NULL,
	[codigoasesor] [float] NULL,
	[asesor] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SegmentacionNoviembreBasev2]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SegmentacionNoviembreBasev2](
	[codigo_cliente] [varchar](50) NULL,
	[categoria_producto] [varchar](50) NULL,
	[frecuencia] [varchar](50) NULL,
	[Segmento] [varchar](50) NULL,
	[Oferta 12 ] [varchar](50) NULL,
	[Oferta 18] [varchar](50) NULL,
	[Oferta 24] [varchar](50) NULL,
	[Tipo Operación] [varchar](50) NULL,
	[Modalidad] [varchar](50) NULL,
	[Tipo Oferta] [varchar](50) NULL,
	[cuota] [varchar](50) NULL,
	[id_establecimiento] [varchar](50) NULL,
	[clasificacion_interna] [nvarchar](50) NULL,
	[cliente] [nvarchar](200) NULL,
	[Direccion] [nvarchar](250) NULL,
	[codigo_asesor] [int] NULL,
	[asesor] [nvarchar](100) NULL,
	[telefono] [nvarchar](152) NULL,
	[cDistrito] [varchar](120) NULL,
	[cDireccion] [varchar](200) NULL,
	[cNombre] [varchar](150) NULL,
	[departamento] [varchar](120) NULL,
	[provincia] [varchar](120) NULL,
	[NroEmpresas] [int] NULL,
	[establecimiento] [nvarchar](100) NULL,
	[oficina] [nvarchar](100) NULL,
	[region] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Semaforo_enero]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Semaforo_enero](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[codsbs] [nvarchar](50) NULL,
	[codigo_cliente] [int] NOT NULL,
	[dni] [nvarchar](50) NULL,
	[edad] [int] NULL,
	[clasificacion_interna] [nvarchar](50) NULL,
	[saldo] [decimal](38, 6) NULL,
	[ev_castigo] [int] NOT NULL,
	[ev_atraso_8_dias] [int] NOT NULL,
	[ev_clientePJ] [int] NOT NULL,
	[ev_clasificacion100] [int] NOT NULL,
	[ev_edad] [int] NOT NULL,
	[ev_saldo] [int] NOT NULL,
	[ev_CantEntid] [int] NOT NULL,
	[semaforo] [int] NOT NULL,
	[Nro_ent_fecha3] [smallint] NULL,
	[Nro_ent_fecha2] [smallint] NULL,
	[Nro_ent_fecha1] [int] NULL,
	[CLA_fecha12] [money] NULL,
	[CLA_fecha11] [money] NULL,
	[CLA_fecha10] [money] NULL,
	[CLA_fecha9] [money] NULL,
	[CLA_fecha8] [money] NULL,
	[CLA_fecha7] [money] NULL,
	[CLA_fecha6] [money] NULL,
	[CLA_fecha5] [money] NULL,
	[CLA_fecha4] [money] NULL,
	[CLA_fecha3] [money] NULL,
	[CLA_fecha2] [money] NULL,
	[CLA_fecha1] [money] NULL,
	[saldo_12] [decimal](38, 2) NULL,
	[saldo_11] [decimal](38, 2) NULL,
	[saldo_10] [decimal](38, 2) NULL,
	[saldo_9] [decimal](38, 2) NULL,
	[saldo_8] [decimal](38, 2) NULL,
	[saldo_7] [decimal](38, 2) NULL,
	[saldo_6] [decimal](38, 2) NULL,
	[saldo_5] [decimal](38, 2) NULL,
	[saldo_4] [decimal](38, 2) NULL,
	[saldo_3] [decimal](38, 2) NULL,
	[saldo_2] [decimal](38, 2) NULL,
	[saldo_1] [decimal](38, 2) NULL,
	[nro_emp_cony] [int] NULL,
	[total_emp] [int] NULL,
	[ev_CantEntid2] [int] NOT NULL,
	[ev_sow] [int] NULL,
	[sow] [decimal](38, 6) NULL,
	[semaforo_] [varchar](5) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sg_autorizaciones]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sg_autorizaciones](
	[id_autorizacion] [int] IDENTITY(0,1) NOT NULL,
	[usuario] [nvarchar](100) NULL,
	[id_asesor] [int] NULL,
	[id_establecimiento] [int] NULL,
	[region] [nvarchar](100) NULL,
	[gerencia_general] [bit] NULL,
	[negocios] [bit] NULL,
	[planeamiento_comercial] [bit] NULL,
	[planeamiento_control_gestion] [bit] NULL,
	[talento_humano] [bit] NULL,
	[admin] [bit] NULL,
 CONSTRAINT [PK_sg_autorizaciones] PRIMARY KEY CLUSTERED 
(
	[id_autorizacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sg_configuraciones]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sg_configuraciones](
	[id_variable] [int] NOT NULL,
	[id_rango] [int] NOT NULL,
	[peso] [decimal](18, 6) NULL,
 CONSTRAINT [PK_sg_configuraciones] PRIMARY KEY CLUSTERED 
(
	[id_variable] ASC,
	[id_rango] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sg_rangos]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sg_rangos](
	[id_rango] [int] IDENTITY(1,1) NOT NULL,
	[rango] [varchar](20) NULL,
 CONSTRAINT [PK_sg_rangos] PRIMARY KEY CLUSTERED 
(
	[id_rango] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sg_variables]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sg_variables](
	[id_variable] [int] IDENTITY(1,1) NOT NULL,
	[variable] [nvarchar](50) NULL,
 CONSTRAINT [PK_sg_variables] PRIMARY KEY CLUSTERED 
(
	[id_variable] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sig_amortizaciones]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sig_amortizaciones](
	[id_establecimiento] [int] NULL,
	[id_asesor] [int] NULL,
	[Estado_Contable] [varchar](255) NULL,
	[Oficina] [nvarchar](100) NULL,
	[establecimiento] [nvarchar](100) NULL,
	[Region] [nvarchar](100) NULL,
	[asesor] [nvarchar](100) NULL,
	[Codigo_credito] [int] NULL,
	[Nombre_del_Cliente] [nvarchar](200) NULL,
	[categoria_producto] [nvarchar](100) NULL,
	[categoria_producto_v2] [nvarchar](100) NULL,
	[Nombre_del_Grupo] [varchar](max) NULL,
	[Nombre_del_Asesor] [nvarchar](255) NULL,
	[Codigo_del_Asesor] [int] NULL,
	[Fecha_Programada] [date] NULL,
	[CAPITAL PROGRAMADO] [decimal](17, 2) NULL,
	[CAPITAL] [varchar](2) NOT NULL,
	[INTERES PROGRAMADO] [decimal](17, 2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sistema_financiero8]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sistema_financiero8](
	[region] [nvarchar](100) NULL,
	[oficina] [nvarchar](100) NULL,
	[establecimiento] [nvarchar](100) NULL,
	[categoria_producto] [nvarchar](100) NULL,
	[sub_categoria] [nvarchar](100) NULL,
	[sector] [nvarchar](50) NULL,
	[asesor] [nvarchar](100) NULL,
	[cliente] [nvarchar](200) NULL,
	[codigo_sbs] [nvarchar](50) NULL,
	[direccion] [nvarchar](250) NULL,
	[telefono] [nvarchar](152) NULL,
	[codigo_cliente] [int] NULL,
	[id_cliente] [int] NULL,
	[clasificacion_interna] [nvarchar](50) NULL,
	[dias_atraso] [int] NULL,
	[saldo] [decimal](38, 6) NULL,
	[tipo] [varchar](8) NOT NULL,
	[nro_cpp] [int] NULL,
	[cantEmpresas] [int] NULL,
	[CAL_12] [money] NULL,
	[CAL_11] [money] NULL,
	[CAL_10] [money] NULL,
	[CAL_9] [money] NULL,
	[CAL_8] [money] NULL,
	[CAL_7] [money] NULL,
	[CAL_6] [money] NULL,
	[CAL_5] [money] NULL,
	[CAL_4] [money] NULL,
	[CAL_3] [money] NULL,
	[CAL_2] [money] NULL,
	[CAL_1] [money] NULL,
	[saldo_titular_1] [decimal](38, 2) NULL,
	[saldo_titular_2] [decimal](38, 2) NULL,
	[saldo_titular_3] [decimal](38, 2) NULL,
	[saldo_titular_4] [decimal](38, 2) NULL,
	[saldo_titular_5] [decimal](38, 2) NULL,
	[saldo_titular_6] [decimal](38, 2) NULL,
	[saldo_titular_7] [decimal](38, 2) NULL,
	[saldo_titular_8] [decimal](38, 2) NULL,
	[saldo_titular_9] [decimal](38, 2) NULL,
	[saldo_titular_10] [decimal](38, 2) NULL,
	[saldo_titular_11] [decimal](38, 2) NULL,
	[saldo_titular_12] [decimal](38, 2) NULL,
	[deuda_maxima] [decimal](10, 2) NULL,
	[oferta] [numeric](38, 3) NULL,
	[orden] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sms_faeagro_0906]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sms_faeagro_0906](
	[codigo_cliente] [float] NULL,
	[Mensaje] [nvarchar](255) NULL,
	[Telefono] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sms_provision2_1006]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sms_provision2_1006](
	[codigo_cliente] [float] NULL,
	[Mensaje] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sms_provisiones_1006]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sms_provisiones_1006](
	[codigo_cliente] [float] NULL,
	[Mensaje] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SPfechasJP]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SPfechasJP](
	[id] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[id_fecha] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tabla_empresas_convenio]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tabla_empresas_convenio](
	[idEmpresaConv] [int] NOT NULL,
	[cRazSocCorto] [varchar](200) NULL,
	[cRazonSocial] [varchar](200) NULL,
	[cNroDocumento] [varchar](20) NULL,
	[cDirección] [varchar](300) NULL,
	[idCli] [int] NULL,
	[idSectorEmp] [int] NOT NULL,
	[cSectorEmp] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tablero_fechas]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tablero_fechas](
	[RID] [float] NULL,
	[RFEC] [datetime] NULL,
	[RFECTXT] [float] NULL,
	[RDIA] [float] NULL,
	[RDIAANI] [float] NULL,
	[RDIASEM] [float] NULL,
	[RNOMDIASEM] [nvarchar](255) NULL,
	[RSEM] [float] NULL,
	[RMES] [float] NULL,
	[RMESNOM] [nvarchar](255) NULL,
	[RANI] [float] NULL,
	[RFINSEM] [float] NULL,
	[RANIBIS] [float] NULL,
	[RDIAFER] [float] NULL,
	[RCIEMES] [float] NULL,
	[RCIEBT] [float] NULL,
	[RFLAG01] [float] NULL,
	[RFEC_MES_ANT] [datetime] NULL,
	[id_Fecha] [int] NULL,
	[id_var_fecha] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarifario_nuevo]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarifario_nuevo](
	[Producto] [nvarchar](255) NULL,
	[Región] [nvarchar](255) NULL,
	[Rango] [nvarchar](255) NULL,
	[AAA-Piza] [float] NULL,
	[AA-Piza] [float] NULL,
	[A-Piza] [float] NULL,
	[B-Piza] [float] NULL,
	[C-Piza] [float] NULL,
	[TIM-Piza] [float] NULL,
	[AAA-J#O#] [float] NULL,
	[AA-J#O#] [float] NULL,
	[A-J#O#] [float] NULL,
	[B-J#O#] [float] NULL,
	[C-J#O#] [float] NULL,
	[TIM-J#O#] [float] NULL,
	[AAA-G#R#] [float] NULL,
	[AA-G#R#] [float] NULL,
	[A-G#R#] [float] NULL,
	[B-G#R#] [float] NULL,
	[C-G#R#] [float] NULL,
	[TIM-G#R#] [float] NULL,
	[AAA-J#P#] [float] NULL,
	[AA-J#P#] [float] NULL,
	[A-J#P#] [float] NULL,
	[B-J#P#] [float] NULL,
	[C-J#P#] [float] NULL,
	[-J#P#] [float] NULL,
	[AAA-SUB#] [float] NULL,
	[AA-SUB#] [float] NULL,
	[A-SUB#] [float] NULL,
	[B-SUB#] [float] NULL,
	[C-SUB#] [float] NULL,
	[TIM-SUB#] [float] NULL,
	[AAA-G#N#] [float] NULL,
	[AA-G#N#] [float] NULL,
	[A-G#N#] [float] NULL,
	[B-G#N#] [float] NULL,
	[C-G#N#] [float] NULL,
	[TIM-G#N#] [float] NULL,
	[AAA-G#G#] [float] NULL,
	[AA-G#G#] [float] NULL,
	[A-G#G#] [float] NULL,
	[B-G#G#] [float] NULL,
	[C-G#G#] [float] NULL,
	[TIM-G#G#] [float] NULL,
	[NNB-Piza] [float] NULL,
	[NNB-J#O#] [float] NULL,
	[NNB-G#R#] [float] NULL,
	[NNB-TIM] [float] NULL,
	[NB-Piza] [float] NULL,
	[NB-TIM] [float] NULL,
	[NB-J#O#] [float] NULL,
	[NB-TIM1] [float] NULL,
	[NB-G#R#] [float] NULL,
	[NB-TIM2] [float] NULL,
	[NB-J#P#] [float] NULL,
	[NB-TIM3] [float] NULL,
	[NB-SUB#] [float] NULL,
	[NB-TIM4] [float] NULL,
	[NB-G#N#] [float] NULL,
	[NB-TIM5] [float] NULL,
	[NB-G#G#] [float] NULL,
	[NB-TIM6] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_dia_laborable]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_dia_laborable](
	[id_fecha] [int] NULL,
	[fecha] [date] NULL,
	[flg_laborable] [decimal](5, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[telf_consumo_kvn1]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[telf_consumo_kvn1](
	[Nro Documento] [nvarchar](255) NULL,
	[Nro Telefono] [nvarchar](255) NULL,
	[Fec Origen] [nvarchar](255) NULL,
	[Operador] [nvarchar](255) NULL,
	[Orden] [float] NULL,
	[año] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[telf_consumo_kvn2]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[telf_consumo_kvn2](
	[Nro Documento] [nvarchar](255) NULL,
	[Departamento] [nvarchar](255) NULL,
	[Provincia] [nvarchar](255) NULL,
	[Distrito] [nvarchar](255) NULL,
	[Dirección] [nvarchar](255) NULL,
	[Referencia] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_enriquecer]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_enriquecer](
	[CODIGO SBS] [nvarchar](255) NULL,
	[NOMBRE CLIENTE] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UbigeoPeru]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UbigeoPeru](
	[NRO] [float] NULL,
	[Cod_UBIGEO] [nvarchar](255) NULL,
	[COD_DPTO] [float] NULL,
	[COD_PROVINCIA] [float] NULL,
	[COD_DISTRITO] [float] NULL,
	[NOMBRE_DE_UBIGEO] [nvarchar](255) NULL,
	[Cod_Ubig] [nvarchar](255) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ge_asesores]  WITH CHECK ADD  CONSTRAINT [FK_ge_asesores_categorias] FOREIGN KEY([id_categoria])
REFERENCES [dbo].[ge_categorias] ([id_categoria])
GO
ALTER TABLE [dbo].[ge_asesores] CHECK CONSTRAINT [FK_ge_asesores_categorias]
GO
ALTER TABLE [dbo].[ge_cronograma_garantias]  WITH CHECK ADD  CONSTRAINT [FK_ge_cronograma_cg] FOREIGN KEY([id_cronograma])
REFERENCES [dbo].[ge_cronogramas] ([id_cronograma])
GO
ALTER TABLE [dbo].[ge_cronograma_garantias] CHECK CONSTRAINT [FK_ge_cronograma_cg]
GO
ALTER TABLE [dbo].[ge_cronograma_garantias]  WITH CHECK ADD  CONSTRAINT [FK_ge_garantia_cg] FOREIGN KEY([id_garantia])
REFERENCES [dbo].[ge_garantias] ([id_garantia])
GO
ALTER TABLE [dbo].[ge_cronograma_garantias] CHECK CONSTRAINT [FK_ge_garantia_cg]
GO
ALTER TABLE [dbo].[ge_tipo_cambio]  WITH CHECK ADD  CONSTRAINT [FK_ge_fecha_tc] FOREIGN KEY([id_fecha])
REFERENCES [dbo].[ge_fechas] ([id_Fecha])
GO
ALTER TABLE [dbo].[ge_tipo_cambio] CHECK CONSTRAINT [FK_ge_fecha_tc]
GO
ALTER TABLE [dbo].[ge_tipo_cambio]  WITH CHECK ADD  CONSTRAINT [FK_ge_moneda_tc] FOREIGN KEY([id_moneda])
REFERENCES [dbo].[ge_monedas] ([id_moneda])
GO
ALTER TABLE [dbo].[ge_tipo_cambio] CHECK CONSTRAINT [FK_ge_moneda_tc]
GO
ALTER TABLE [dbo].[gt_saldos]  WITH CHECK ADD  CONSTRAINT [FK_gt_saldos_ge_canales] FOREIGN KEY([id_canal])
REFERENCES [dbo].[ge_canales] ([id_canal])
GO
ALTER TABLE [dbo].[gt_saldos] CHECK CONSTRAINT [FK_gt_saldos_ge_canales]
GO
ALTER TABLE [dbo].[gt_saldos]  WITH CHECK ADD  CONSTRAINT [FK_gt_saldos_ge_fechas] FOREIGN KEY([id_fecha])
REFERENCES [dbo].[ge_fechas] ([id_Fecha])
GO
ALTER TABLE [dbo].[gt_saldos] CHECK CONSTRAINT [FK_gt_saldos_ge_fechas]
GO
/****** Object:  StoredProcedure [dbo].[GEN_BusSpCon_sp]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO