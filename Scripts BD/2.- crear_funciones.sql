USE [BD_NEGOCIOSREP]

CREATE FUNCTION [dbo].[calculo_fd](@tea float)  
RETURNS float   
AS   
-- Returns the stock level for the product.  
BEGIN  


	declare @tea1 float =@tea

	declare @dias_mes1 float=DAY(DATEADD(DD,-1,DATEADD(MM,DATEDIFF(MM,-1,DATEADD(MONTH, DATEDIFF(MONTH, -1, GETDATE())-1, 0)),0)))
	declare @dias_mes2 float=DAY(DATEADD(DD,-1,DATEADD(MM,DATEDIFF(MM,-1,DATEADD(MONTH, DATEDIFF(MONTH, -1, GETDATE()), 0)),0)))
	declare @dias_mes3 float=DAY(DATEADD(DD,-1,DATEADD(MM,DATEDIFF(MM,-1,DATEADD(MONTH, DATEDIFF(MONTH, -1, GETDATE())+1, 0)),0)))
	declare @dias_mes4 float=DAY(DATEADD(DD,-1,DATEADD(MM,DATEDIFF(MM,-1,DATEADD(MONTH, DATEDIFF(MONTH, -1, GETDATE())+2, 0)),0)))
	
	declare @dias_acumulados_1 float =@dias_mes1
	declare @dias_acumulados_2 float =@dias_mes1+@dias_mes2
	declare @dias_acumulados_3 float =@dias_mes1+@dias_mes2+@dias_mes3
	declare @dias_acumulados_4 float =@dias_mes1+@dias_mes2+@dias_mes3+@dias_mes4

	
	declare @fd1 float =power(1/(1+cast(@tea1 as float)/100),cast(@dias_acumulados_1 as float)/360) 
	declare @fd2 float =power(1/(1+cast(@tea1 as float)/100),cast(@dias_acumulados_2 as float)/360) 
	declare @fd3 float =power(1/(1+cast(@tea1 as float)/100),cast(@dias_acumulados_3 as float)/360) 
	declare @fd4 float =power(1/(1+cast(@tea1 as float)/100),cast(@dias_acumulados_4 as float)/360) 
	
	

	declare @ret float =(@fd1+@fd2+@fd3+@fd4)
 
    RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[CoordinateDistanceMiles]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[CoordinateDistanceMiles](@Latitude1 float,@Longitude1 float,@Latitude2 float,@Longitude2 float,@Distance NVARCHAR(10))

RETURNS FLOAT

AS 

BEGIN

-- CONSTANTS

DECLARE @EarthRadiusInMiles FLOAT=(CASE @Distance WHEN 'Miles' THEN 3959 WHEN 'Kilometers' THEN 6371 ELSE 0 END);

DECLARE @PI FLOAT=PI();

DECLARE @lat1Radians FLOAT=@Latitude1 * @PI / 180

DECLARE @long1Radians FLOAT=@Longitude1 * @PI / 180;

DECLARE @lat2Radians FLOAT=@Latitude2 * @PI / 180;

DECLARE @long2Radians FLOAT=@Longitude2 * @PI / 180;

RETURN Acos(

Cos(@lat1Radians)*Cos(@long1Radians)*Cos(@lat2Radians)*Cos(@long2Radians)+

Cos(@lat1Radians)*Sin(@long1Radians)*Cos(@lat2Radians)*Sin(@long2Radians)+

Sin(@lat1Radians)*Sin(@lat2Radians)

) * @EarthRadiusInMiles;

END
GO
/****** Object:  UserDefinedFunction [dbo].[deuda_maxima]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 08/05/2020
-- Description:	devuelve el maximo de varios de 24 valores
-- =============================================
create FUNCTION [dbo].[deuda_maxima]
(
	 @deuda1 decimal(10,2)
	,@deuda2 decimal(10,2)
	,@deuda3 decimal(10,2)
	,@deuda4 decimal(10,2)
	,@deuda5 decimal(10,2)
	,@deuda6 decimal(10,2)
	,@deuda7 decimal(10,2)
	,@deuda8 decimal(10,2)
	,@deuda9 decimal(10,2)
	,@deuda10 decimal(10,2)
	,@deuda11 decimal(10,2)
	,@deuda12 decimal(10,2)
	,@deuda13 decimal(10,2)
	,@deuda14 decimal(10,2)
	,@deuda15 decimal(10,2)
	,@deuda16 decimal(10,2)
	,@deuda17 decimal(10,2)
	,@deuda18 decimal(10,2)
	,@deuda19 decimal(10,2)
	,@deuda20 decimal(10,2)
	,@deuda21 decimal(10,2)
	,@deuda22 decimal(10,2)
	,@deuda23 decimal(10,2)
	,@deuda24 decimal(10,2)
)

RETURNS decimal(10,2)
AS
BEGIN
	
	DECLARE @resultado AS decimal(10,2)

	set @resultado=(SELECT max(prueba)
					FROM (VALUES (@deuda1),(@deuda2),(@deuda3),(@deuda4),(@deuda5)
									,(@deuda6),(@deuda7),(@deuda8),(@deuda9),(@deuda10)
									,(@deuda11),(@deuda12),(@deuda13),(@deuda14),(@deuda15)
									,(@deuda16),(@deuda17),(@deuda18),(@deuda19),(@deuda20)
									,(@deuda21),(@deuda22),(@deuda23),(@deuda24)) AS asd(prueba))

	RETURN @resultado 

END
GO
/****** Object:  UserDefinedFunction [dbo].[dias]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 23/03/2020
-- Description:	Devuelve el nuevo plazo en dias
-- =============================================
CREATE FUNCTION [dbo].[dias] 
(
	 @id_cronograma INT
)
RETURNS int
AS
BEGIN
	DECLARE @resultado INT
	DECLARE @tipo_cuota INT
	SET @tipo_cuota=(SELECT max(tipo_cuota)	FROM ge_plan_pagos WHERE id_cronograma=@id_cronograma)
	set @resultado=datediff(dd,isnull((SELECT max(fecha_programada) FROM ge_plan_pagos WHERE id_cronograma=@id_cronograma AND fecha_pago IS not NULL AND tipo_cuota=@tipo_cuota),(SELECT min(fecha_programada) FROM ge_plan_pagos WHERE id_cronograma=@id_cronograma AND tipo_cuota=@tipo_cuota))
					,isnull((SELECT max(fecha_programada) FROM ge_plan_pagos WHERE id_cronograma=@id_cronograma AND fecha_pago IS NULL AND tipo_cuota=@tipo_cuota),
						(SELECT max(fecha_programada) FROM ge_plan_pagos WHERE id_cronograma=@id_cronograma AND tipo_cuota=@tipo_cuota)))
					
	RETURN @resultado 
END
GO
/****** Object:  UserDefinedFunction [dbo].[dias_atraso_maximo]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 13/08/2019
-- Description:	Devuelve el promedio de dias de atraso de un credito
-- =============================================
CREATE FUNCTION [dbo].[dias_atraso_maximo] 
(
	 @id_cliente int
	,@fecha date
)
RETURNS decimal(10,2)
AS
BEGIN
	DECLARE @resultado decimal(10,2)
	
	set @resultado=(SELECT max(datediff(dd,fecha_programada,isnull(fecha_pago,@fecha))) 
						FROM ge_plan_pagos
						where id_cronograma in (select distinct id_cronograma from ge_plan_pagos
												where id_cliente=@id_cliente) 
						and datediff(dd,fecha_programada,isnull(fecha_pago,@fecha))>=0)

	RETURN @resultado 

END


GO
/****** Object:  UserDefinedFunction [dbo].[dias_atraso_promedio]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 13/08/2019
-- Description:	Devuelve el promedio de dias de atraso de un credito
-- =============================================
CREATE FUNCTION [dbo].[dias_atraso_promedio] 
(
	 @id_cliente int
	,@fecha date
)
RETURNS decimal(10,2)
AS
BEGIN
	DECLARE @resultado decimal(10,2)
	

	set @resultado=(SELECT avg(datediff(dd,fecha_programada,isnull(fecha_pago,@fecha))) 
						FROM ge_plan_pagos
						where id_cronograma in (select distinct id_cronograma from ge_plan_pagos
												where id_cliente=@id_cliente)
						and datediff(dd,fecha_programada,isnull(fecha_pago,@fecha))>=0)
	

	RETURN @resultado 

END


GO
/****** Object:  UserDefinedFunction [dbo].[dn_fn_CalculaDistancia]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[dn_fn_CalculaDistancia](
@latitud1 float,
@longitud1 float,
@latitud2 float,
@longitud2 float,
@unidad_metrica char(1)
)
RETURNS float
AS
BEGIN
  --Unidad Metrica: K=kilometros  M=metros 
  DECLARE @distancia float
  
  --Radio de la tierra según WGS84
  DECLARE @radius float
  SET @radius = 6378.137 
  DECLARE @deg2radMultiplier float 
  SET @deg2radMultiplier = PI() / 180
  
  SET @latitud1 = @latitud1 * @deg2radMultiplier
  SET @longitud1 = @longitud1 * @deg2radMultiplier
  SET @latitud2 = @latitud2 * @deg2radMultiplier
  SET @longitud2 = @longitud2 * @deg2radMultiplier
    
  DECLARE @dlongitud float
  SET @dlongitud = @longitud2 - @longitud1
    
  SET @distancia = ACOS(SIN(@latitud1) * SIN(@latitud2) + COS(@latitud1) *
                         COS(@latitud2) * COS(@dlongitud)) * @radius
  
  IF @unidad_metrica = 'M'  
     SET @distancia = @distancia * 1000
  
  -- Retorna distancia en Metros o Kilómetros  
  RETURN @distancia
END
GO
/****** Object:  UserDefinedFunction [dbo].[fnCalcDistanceKM]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnCalcDistanceKM](@lat1 FLOAT, @lat2 FLOAT, @lon1 FLOAT, @lon2 FLOAT)
RETURNS FLOAT 
AS
BEGIN

    RETURN ACOS(SIN(PI()*@lat1/180.0)*SIN(PI()*@lat2/180.0)+COS(PI()*@lat1/180.0)*COS(PI()*@lat2/180.0)*COS(PI()*@lon2/180.0-PI()*@lon1/180.0))*6371
END
GO
/****** Object:  UserDefinedFunction [dbo].[iiff_dia]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 26/08/2019
-- Description:	Devuelve el Ingreso Financiero por día de un credito
-- =============================================
CREATE FUNCTION [dbo].[iiff_dia] 
(
	 @id_cronograma int
	,@id_fecha int
)
RETURNS decimal(10,2)
AS
BEGIN
	DECLARE @resultado decimal(10,2)
	
	set @resultado=(select interes=isnull(sum(interes_pagado+mora_pagado+interes_compensatorio_pagado),0)
						from ge_plan_pagos a
						left join ge_fechas fec on a.fecha_pago=fec.fecha
						where id_cronograma=@id_cronograma
						and id_fecha=@id_fecha)

	RETURN @resultado 

END


GO
/****** Object:  UserDefinedFunction [dbo].[iiff_mes]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 26/08/2019
-- Description:	Devuelve el Ingreso Financiero por mes de un credito
-- =============================================
CREATE FUNCTION [dbo].[iiff_mes] 
(
	 @id_cronograma int
	,@id_fecha int
)
RETURNS decimal(10,2)
AS
BEGIN
	DECLARE @resultado decimal(10,2)
	
	set @resultado=(select interes=isnull(sum(interes_pagado+mora_pagado+interes_compensatorio_pagado),0)
						from ge_plan_pagos a
						left join ge_fechas fec on a.fecha_pago=fec.fecha
						where id_cronograma=@id_cronograma
						and left(id_fecha,4)=left(@id_fecha,4))

	RETURN @resultado 

END


GO
/****** Object:  UserDefinedFunction [dbo].[interes_cuota]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 23/03/2020
-- Description:	Devuelve el interes de una cuota
-- =============================================
CREATE FUNCTION [dbo].[interes_cuota] 
(
	 @tasa DECIMAL(18,6)
	,@capital DECIMAL(18,6)
	,@dias INT
	
)
RETURNS int
AS
BEGIN
	DECLARE @resultado DECIMAL(18,6)
	
	set @resultado=(@capital*(@tasa)*POWER(1.00+(@tasa),(@dias)))/(POWER(1.00+(@tasa),(@dias))-1)*30.00
					
	RETURN @capital-@resultado
END
GO
/****** Object:  UserDefinedFunction [dbo].[mes]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 23/03/2020
-- Description:	Devuelve el nuevo plazo en meses
-- =============================================
create FUNCTION [dbo].[mes] 
(
	 @id_cronograma INT
)
RETURNS int
AS
BEGIN
	DECLARE @resultado INT
	DECLARE @tipo_cuota INT
	SET @tipo_cuota=(SELECT max(tipo_cuota)	FROM ge_plan_pagos WHERE id_cronograma=@id_cronograma)
	set @resultado=(SELECT datediff(mm,min(fecha_programada),max(fecha_programada))
					FROM ge_plan_pagos 
					WHERE id_cronograma=@id_cronograma 
					AND fecha_pago IS null
					AND tipo_cuota=@tipo_cuota)
					
	RETURN @resultado 
END
GO
/****** Object:  UserDefinedFunction [dbo].[porcentaje_campaña]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 08/05/2020
-- Description:	devuelve el proentaje a usarse en la oferta
-- =============================================
create FUNCTION [dbo].[porcentaje_campaña]
(
	 @tipo_cliente NVARCHAR(50)
	,@nro_entidades int
	,@deuda_actual decimal(10,2)
)

RETURNS decimal(10,4)
AS
BEGIN
	
	DECLARE @resultado AS decimal(10,4)

	set @resultado=(CASE WHEN isnull(@tipo_cliente,'NUEVO')='NUEVO' THEN (CASE WHEN @nro_entidades<=1 THEN (CASE WHEN @deuda_actual<=1000 THEN 1
																												WHEN @deuda_actual<=2000 THEN 0.75
																												WHEN @deuda_actual<=5000 THEN 0.5
																											ELSE 0.25 END)
																				WHEN @nro_entidades>1 THEN (CASE WHEN @deuda_actual<=2000 THEN 0.5
																												WHEN @deuda_actual<=5000 THEN 0.3
																											ELSE 0.2 END)
																			END)
						WHEN @tipo_cliente='RECURRENTE' THEN (CASE WHEN @nro_entidades<=1 THEN (CASE WHEN @deuda_actual<=2000 THEN 1
																									 WHEN @deuda_actual<=5000 THEN 0.75
																								ELSE 0.5 END)
																				WHEN @nro_entidades>1 THEN (CASE WHEN @deuda_actual<=2000 THEN 0.75
																												WHEN @deuda_actual<=5000 THEN 0.5
																											ELSE 0.3 END)
																END)
					END)

	RETURN @resultado 

END
GO
/****** Object:  UserDefinedFunction [dbo].[scoring_1_nro_entidades]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 17/07/2019
-- Description:	Devuelve el puntaje de la variable 1: nro_entidades
-- =============================================
CREATE FUNCTION [dbo].[scoring_1_nro_entidades] 
(
	 @codigo_cliente int
	,@fecha_final int
)
RETURNS decimal(10,2)
AS
BEGIN
	DECLARE @resultado decimal(10,2)
	
	set @resultado=(select (case when nro_entidades<=1 then 1.00
								when nro_entidades<=2 then 0.75
								when nro_entidades<=3 then 0.50
								when nro_entidades<=5 then 0.25
								else 0.00 end)
								from gt_rcc where id_fecha=@fecha_final and codigo_cliente=@codigo_cliente)

	RETURN @resultado 

END
GO
/****** Object:  UserDefinedFunction [dbo].[scoring_10_terreno]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 18/07/2019
-- Description:	Devuelve el puntaje de la variable 10: Terreno
-- =============================================
create FUNCTION [dbo].[scoring_10_terreno]
(
	 @tipo nvarchar(50)
)
RETURNS decimal(10,2)
AS
BEGIN
	DECLARE @resultado decimal(10,2)

	set @resultado=(case when @tipo='Propio' then 1.00
						when @tipo='Familiar' then 0.75
						when @tipo='Alquilada' then 0.25
						else 0.00 end)

	RETURN @resultado 

END


GO
/****** Object:  UserDefinedFunction [dbo].[scoring_11_gasto_financiero]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 18/07/2019
-- Description:	Devuelve el puntaje de la variable 11: Gasto Financiero
-- =============================================
create FUNCTION [dbo].[scoring_11_gasto_financiero]
(
	 @ingreso decimal(10,2)
	,@gasto decimal(10,2)
)
RETURNS decimal(10,2)
AS
BEGIN
	DECLARE @resultado decimal(10,2)

	set @resultado=(case when @gasto/@ingreso<=0.1 then 1.00
						when @gasto/@ingreso<=0.18 then 0.50
						else 0.25 end)

	RETURN @resultado 

END


GO
/****** Object:  UserDefinedFunction [dbo].[scoring_12_variacion_ventas]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 19/07/2019
-- Description:	Devuelve el puntaje de la variable 12: Variación de Ventas
-- =============================================
create FUNCTION [dbo].[scoring_12_variacion_ventas]
(
	 @codigo_cliente int
	,@monto_anterior decimal(10,2)
	,@monto_actual decimal(10,2)
)
RETURNS decimal(10,2)
AS
BEGIN
	DECLARE @resultado decimal(10,2)

	set @resultado=(case when @monto_actual/@monto_anterior<=1.2 then 1.00
								when @monto_actual/@monto_anterior>1.2 and @monto_actual/@monto_anterior<=1.3 then 0.75
								when @monto_actual/@monto_anterior>1.3 then 0.25
								else 0.50 end)

	RETURN @resultado 

END
GO
/****** Object:  UserDefinedFunction [dbo].[scoring_13_concentracion_activos]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 19/07/2019
-- Description:	Devuelve el puntaje de la variable 13: Concentración de Activos
-- =============================================
create FUNCTION [dbo].[scoring_13_concentracion_activos]
(
	 @codigo_cliente int
	,@activo_corriente decimal(10,2)
	,@activo_no_corriente decimal(10,2)
)
RETURNS decimal(10,2)
AS
BEGIN
	DECLARE @resultado decimal(10,2)

	set @resultado=(case when @activo_corriente>@activo_no_corriente then 1.00
						else 0.50 end)

	RETURN @resultado 

END
GO
/****** Object:  UserDefinedFunction [dbo].[scoring_14_endeudamiento_inmueble]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 19/07/2019
-- Description:	Devuelve el puntaje de la variable 14: Endeudamiento sin inmueble
-- =============================================
create FUNCTION [dbo].[scoring_14_endeudamiento_inmueble]
(
	 @codigo_cliente int
	,@monto decimal(10,2)
)
RETURNS decimal(10,2)
AS
BEGIN
	DECLARE @resultado decimal(10,2)

	set @resultado=(case when @monto<=1 then 1.00
						 when @monto<=1.3 then 0.75
						else 0.25 end)

	RETURN @resultado 

END
GO
/****** Object:  UserDefinedFunction [dbo].[scoring_15_destino]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 18/07/2019
-- Description:	Devuelve el puntaje de la variable 15: Destino
-- =============================================
create FUNCTION [dbo].[scoring_15_destino]
(
	 @tipo nvarchar(50)
)
RETURNS decimal(10,2)
AS
BEGIN
	DECLARE @resultado decimal(10,2)

	set @resultado=(case when @tipo='Capital de trabajo' then 1.00
						when @tipo='Activo fijo' then 0.75
						when @tipo='Compra de deuda' then 0.50
						when @tipo='Libre disponibilidad' then 0.25
						when @tipo='Vivienda' then 0.25
						else 0.00 end)

	RETURN @resultado 

END


GO
/****** Object:  UserDefinedFunction [dbo].[scoring_16_patrimonio]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 19/07/2019
-- Description:	Devuelve el puntaje de la variable 16: Patrimonio
-- =============================================
create FUNCTION [dbo].[scoring_16_patrimonio]
(
	 @codigo_cliente int
	,@monto decimal(10,2)
)
RETURNS decimal(10,2)
AS
BEGIN
	DECLARE @resultado decimal(10,2)

	set @resultado=(case when @monto<=1 then 0.00
						else null end)

	RETURN @resultado 

END
GO
/****** Object:  UserDefinedFunction [dbo].[scoring_17_frecuencia_pago]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 18/07/2019
-- Description:	Devuelve el puntaje de la variable 17: Frecuencia de pago
-- =============================================
create FUNCTION [dbo].[scoring_17_frecuencia_pago]
(
	 @tipo nvarchar(50)
)
RETURNS decimal(10,2)
AS
BEGIN
	DECLARE @resultado decimal(10,2)

	set @resultado=(case when @tipo='Mensual' then 1.00
						when @tipo='Bimensual' then 0.75
						when @tipo='Trimestral' then 0.50
						when @tipo='Cuatrimestral' then 0.25
						when @tipo='Semestral' then 0.25
						when @tipo='Unicuota' then 0.25
						when @tipo='Capital Final' then 0.25
						else 0.00 end)

	RETURN @resultado 

END


GO
/****** Object:  UserDefinedFunction [dbo].[scoring_18_plazo]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 18/07/2019
-- Description:	Devuelve el puntaje de la variable 18: Plazo del crédito
-- =============================================
create FUNCTION [dbo].[scoring_18_plazo]
(
	 @plazo int
)
RETURNS decimal(10,2)
AS
BEGIN
	DECLARE @resultado decimal(10,2)

	set @resultado=(case when @plazo<=12 then 1.00
						when @plazo<=18 then 0.75
						when @plazo<=24 then 0.75
						when @plazo<=36 then 0.50
						else 0.00 end)

	RETURN @resultado 

END


GO
/****** Object:  UserDefinedFunction [dbo].[scoring_19_excepciones]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 18/07/2019
-- Description:	Devuelve el puntaje de la variable 19: Excepciones
-- =============================================
create FUNCTION [dbo].[scoring_19_excepciones]
(
	 @tipo nvarchar(50)
)
RETURNS decimal(10,2)
AS
BEGIN
	DECLARE @resultado decimal(10,2)

	set @resultado=(case when @tipo='Sin excepcion' then 1.00
						when @tipo='Contemplada' then 0.50
						when @tipo='No Contemplada' then 0.25
						else 0.00 end)

	RETURN @resultado 

END


GO
/****** Object:  UserDefinedFunction [dbo].[scoring_2_calif_sf]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 17/07/2019
-- Description:	Devuelve el puntaje de la variable 2: Calificación SF
-- =============================================
CREATE FUNCTION [dbo].[scoring_2_calif_sf] 
(
	 @codigo_cliente int
	,@fecha_final int
)
RETURNS decimal(10,2)
AS
BEGIN
	DECLARE @resultado decimal(10,2)
	declare @fecha_inicial int
	declare @fecha_12 int
	declare @fecha_6 int

	set @fecha_final=(select max(id_fecha) from gt_rcc)
	set @fecha_inicial=isnull((select max(id_fecha) from ge_fechas where fin_mes=1 and fecha+730<=(select fecha from ge_fechas where id_Fecha=@fecha_final)),
							(select min(id_fecha) from ge_fechas))
	set @fecha_12=isnull((select max(id_fecha) from ge_fechas where fin_mes=1 and fecha+365<=(select fecha from ge_fechas where id_Fecha=@fecha_final)),
							(select min(id_fecha) from ge_fechas))
	set @fecha_6=isnull((select max(id_fecha) from ge_fechas where fin_mes=1 and fecha+182<=(select fecha from ge_fechas where id_Fecha=@fecha_final)),
							(select min(id_fecha) from ge_fechas))

	set @resultado=(case when (select sum(deuda_0) from gt_rcc where codigo_cliente=@codigo_cliente and id_Fecha between @fecha_inicial and @fecha_final)=2400 then 1
						when (select sum(deuda_0) from gt_rcc where codigo_cliente=@codigo_cliente and id_Fecha between @fecha_12 and @fecha_final)=1200 then 0.75
						when (select sum(deuda_0) from gt_rcc where codigo_cliente=@codigo_cliente and id_Fecha between @fecha_6 and @fecha_final)=600 then 0.5
						when (select sum(deuda_1+deuda_2) from gt_rcc where codigo_cliente=@codigo_cliente and id_Fecha between @fecha_12 and @fecha_final)>0 then 0.25
						when (select sum(deuda_3) from gt_rcc where codigo_cliente=@codigo_cliente and id_Fecha between @fecha_inicial and @fecha_final)>0 then 0.25
						when (select sum(deuda_4) from gt_rcc where codigo_cliente=@codigo_cliente and id_Fecha between @fecha_inicial and @fecha_final)>0 then 0.00
					else 0.5 end)

	RETURN @resultado 

END
GO
/****** Object:  UserDefinedFunction [dbo].[scoring_20_tipo_garantia]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 18/07/2019
-- Description:	Devuelve el puntaje de la variable 20: Tipo Garantía
-- =============================================
create FUNCTION [dbo].[scoring_20_tipo_garantia]
(
	 @tipo nvarchar(50)
)
RETURNS decimal(10,2)
AS
BEGIN
	DECLARE @resultado decimal(10,2)

	set @resultado=(case when @tipo='autoliquidable' then 1.00
						when @tipo='hipotecaria' then 1.00
						when @tipo='mobiliaria' then 0.50
						when @tipo='seguro' then 0.50
						when @tipo='personal' then 0.25
						else 0.00 end)

	RETURN @resultado 

END


GO
/****** Object:  UserDefinedFunction [dbo].[scoring_21_documento_garantia]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 18/07/2019
-- Description:	Devuelve el puntaje de la variable 21: Documento Garantía
-- =============================================
create FUNCTION [dbo].[scoring_21_documento_garantia]
(
	 @tipo nvarchar(50)
)
RETURNS decimal(10,2)
AS
BEGIN
	DECLARE @resultado decimal(10,2)

	set @resultado=(case when @tipo in ('Ficha inscrita a favor de la Caja','Título de Cofopri','Ficha registral') then 1.00
						when @tipo in ('Escritura Publica','Testimonio Compra Venta') then 0.75
						when @tipo in ('Autoavaluo','Minuta de Compra Venta','Constancia de Residencia') then 0.25
						when @tipo in ('Escritura Imperfecta','Constancia de Posesión','Certificado de Posesión') then 0.40
						else 0.00 end)

	RETURN @resultado 

END


GO
/****** Object:  UserDefinedFunction [dbo].[scoring_22_cultivo]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 18/07/2019
-- Description:	Devuelve el puntaje de la variable 22: Cultivo
-- =============================================
CREATE FUNCTION [dbo].[scoring_22_cultivo]
(
	 @id_categoria_producto int
	,@tipo nvarchar(50)
)
RETURNS decimal(10,2)
AS
BEGIN
	DECLARE @resultado decimal(10,2)

	set @resultado=(case when @tipo='café' and @id_categoria_producto in (10,11) then 0.25
						when @tipo='papa' and @id_categoria_producto in (10,11) then 0.75
						when @id_categoria_producto in (10,11) and @tipo not in ('café','papa') then 1.00
						else 0.00 end)

	RETURN @resultado 

END
GO
/****** Object:  UserDefinedFunction [dbo].[scoring_23_tipo_personeria]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 19/07/2019
-- Description:	Devuelve el puntaje de la variable 24: tipo personería
-- =============================================
create FUNCTION [dbo].[scoring_23_tipo_personeria]
(
	 @codigo_cliente int
	,@personería nvarchar(5)
)
RETURNS decimal(10,2)
AS
BEGIN
	DECLARE @resultado decimal(10,2)

	set @resultado=(select case when @personería='EIRL' then 1.00
								else 0.00 end
							from ge_clientes
							where codigo_cliente=@codigo_cliente
							and genero='Persona Juridica')

	RETURN @resultado 

END

GO
/****** Object:  UserDefinedFunction [dbo].[scoring_24_condicion_laboral]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 19/07/2019
-- Description:	Devuelve el puntaje de la variable 24: Condición Laboral
-- =============================================
CREATE FUNCTION [dbo].[scoring_24_condicion_laboral] 
(
	 @codigo_cliente int
	,@tipo nvarchar(100)
)
RETURNS decimal(10,2)
AS
BEGIN
	DECLARE @resultado decimal(10,2)
	
	set @resultado=(case when @tipo='Contrato Indeterminado' then 1.00
								when @tipo='Contrato a plazo fijo' then 0.75
								when @tipo='Contrato CAS' then 0.50
								when @tipo='Informal' then 0.25
								else 0.00 end)

	RETURN @resultado 

END
GO
/****** Object:  UserDefinedFunction [dbo].[scoring_3_deuda_indirecta]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 19/07/2019
-- Description:	Devuelve el puntaje de la variable 3: deuda indirecta
-- =============================================
CREATE FUNCTION [dbo].[scoring_3_deuda_indirecta] 
(
	 @codigo_cliente int
	,@fecha_final int
)
RETURNS decimal(10,2)
AS
BEGIN
	DECLARE @resultado decimal(10,2)

	set @resultado=(select (case when deuda_total is null then 1.00
								when deuda_0=100 then 0.75
								when deuda_0>0 and deuda_0<100 then 0.25
								when deuda_4=100 then 0.25
								else 0.00 end)
								from gt_rcc where id_fecha=@fecha_final
								--and cuenta_contable =''
								and codigo_cliente=@codigo_cliente)

	RETURN @resultado 

END
GO
/****** Object:  UserDefinedFunction [dbo].[scoring_4_edad]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 17/07/2019
-- Description:	Devuelve el puntaje de la variable 4: edad
-- =============================================
CREATE FUNCTION [dbo].[scoring_4_edad] 
(
	 @codigo_cliente int
	,@id_fecha int
)
RETURNS decimal(10,2)
AS
BEGIN
	DECLARE @resultado decimal(10,2)
	declare @fecha datetime

	set @fecha=(select max(fecha) from ge_fechas where fin_mes<>2 and id_fecha=@id_fecha)
	--print @fecha

	set @resultado=(select (case when datediff(year,fecha_nacimiento,@fecha) between 30 and 60 then 1.00
								when datediff(year,fecha_nacimiento,@fecha) between 25 and 29 then 0.75
								when datediff(year,fecha_nacimiento,@fecha) between 18 and 24 then 0.50
								when datediff(year,fecha_nacimiento,@fecha) between 61 and 71 then 0.50
								else 0.00 end)
								from ge_clientes where codigo_cliente=@codigo_cliente
								and genero in ('FEMENINO','MASCULINO','SIN GENERO'))
	
	if @resultado is null
	set @resultado=(select case when datediff(year,fecha_nacimiento,@fecha)>3 then 1.00
								when datediff(year,fecha_nacimiento,@fecha)>2 then 0.75
								when datediff(year,fecha_nacimiento,@fecha)>1 then 0.25
								else 0.00 end
							from ge_clientes where codigo_cliente=@codigo_cliente
							and genero='Persona Juridica')

	RETURN @resultado 

END
GO
/****** Object:  UserDefinedFunction [dbo].[scoring_5_tipo_cliente]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 17/07/2019
-- Description:	Devuelve el puntaje de la variable 5: tipo_cliente
-- =============================================
CREATE FUNCTION [dbo].[scoring_5_tipo_cliente] 
(
	 @codigo_cliente int
	,@id_fecha	int
)
RETURNS decimal(10,2)
AS
BEGIN
	DECLARE @resultado decimal(10,2)
	declare @fecha datetime
	declare @meses int

	set @fecha=(select max(fecha) from ge_fechas where fin_mes<>2 and id_fecha=@id_fecha)

	set @meses=(select count(distinct id_Fecha) from gt_rcc where codigo_cliente=@codigo_cliente)

	set @resultado=(select (case when tipo_cliente='RECURRENTE' then 1.00
								when tipo_cliente='NUEVO' and @meses>12 then 0.75
								when tipo_cliente='NUEVO' and @meses<=12 then 0.50
								when tipo_cliente='NUEVO' and @meses is null then 0.25
								else 0.25 end)
								from ge_clientes
								where codigo_cliente=@codigo_cliente)

	RETURN @resultado 

END

GO
/****** Object:  UserDefinedFunction [dbo].[scoring_6_estado_civil]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 18/07/2019
-- Description:	Devuelve el puntaje de la variable 6: Estado Civil
-- =============================================
CREATE FUNCTION [dbo].[scoring_6_estado_civil] 
(
	@codigo_cliente int
)
RETURNS decimal(10,2)
AS
BEGIN
	DECLARE @resultado decimal(10,2)
	declare @fecha datetime

	set @resultado=(select (case when estado_civil='CASADO(A)' then 1.00
								when estado_civil='CONVIVIENTE' then 0.75
								when estado_civil='Persona Juridica' then 0.00
								else 0.25 end)
								from ge_clientes where codigo_cliente=@codigo_cliente
								and genero in ('FEMENINO','MASCULINO','SIN GENERO'))

	RETURN @resultado 

END
GO
/****** Object:  UserDefinedFunction [dbo].[scoring_7_experiencia_negocio]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 18/07/2019
-- Description:	Devuelve el puntaje de la variable 7: Años Experiencia Negocio
-- =============================================
CREATE FUNCTION [dbo].[scoring_7_experiencia_negocio]
(
	 @codigo_cliente int
	,@id_fecha int
)
RETURNS decimal(10,2)
AS
BEGIN
	DECLARE @resultado decimal(10,2)
	declare @fecha datetime
	declare @años int

	set @fecha=(select fecha from ge_fechas where id_fecha=@id_fecha)

	set @años=(select DATEDIFF(YY,fecha_inicio_actividades,@fecha) from ge_clientes where codigo_cliente=@codigo_cliente)

	set @resultado=(case when @años>5 then 1.00
						when @años>2 then 0.75
						when @años>1 then 0.50
						else 0.00 end)

	RETURN @resultado 

END


GO
/****** Object:  UserDefinedFunction [dbo].[scoring_8_tipo_vivienda]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 18/07/2019
-- Description:	Devuelve el puntaje de la variable 8: Tipo Vivienda
-- =============================================
CREATE FUNCTION [dbo].[scoring_8_tipo_vivienda]
(
	 @codigo_cliente int
)
RETURNS decimal(10,2)
AS
BEGIN
	DECLARE @resultado decimal(10,2)
	DECLARE @tipo nvarchar(50)

	set @tipo=(select tipo_vivienda from ge_clientes where codigo_cliente=@codigo_cliente)

	set @resultado=(case when @tipo in ('PROPIA AUTOFINANCIADO','PROPIA HEREDADA') then 1.00
						when @tipo='FAMILIAR' then 0.75
						when @tipo='ALQUILADO' then 0.25
						else 0.25 end)

	RETURN @resultado

END
GO
/****** Object:  UserDefinedFunction [dbo].[scoring_9_escalonamiento]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 18/07/2019
-- Description:	Devuelve el puntaje de la variable 9: Escalonamiento
-- =============================================
CREATE FUNCTION [dbo].[scoring_9_escalonamiento]
(
	 @codigo_cliente int
	,@id_cronograma int
)
RETURNS decimal(10,2)
AS
BEGIN
	DECLARE @resultado decimal(10,2)
	DECLARE @monto_actual decimal(10,2)
	DECLARE @monto_anterior decimal(10,2)

	set @monto_anterior=(select monto from ge_cronogramas where id_cronograma=@id_cronograma)
	set @monto_actual=(select max(cro.monto) from ge_cronogramas cro
						left join ge_solicitudes sol on cro.codigo_solicitud=sol.codigo_solicitud
						where codigo_cliente=@codigo_cliente and id_cronograma<>@id_cronograma)

	set @resultado=(case when @monto_actual<=@monto_anterior then 1.00
								when @monto_actual<=@monto_anterior*1.2 then 0.75
								when @monto_actual<=@monto_anterior*1.5 then 0.50
								else 0.25 end)

	RETURN @resultado 

END
GO
/****** Object:  UserDefinedFunction [dbo].[Split]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

cREATE FUNCTION [dbo].[Split] (
      @InputString                  VARCHAR(8000),
      @Delimiter                    VARCHAR(50)
)

RETURNS @Items TABLE (
      Item                          VARCHAR(8000)
)

AS
BEGIN
      IF @Delimiter = ' '
      BEGIN
            SET @Delimiter = ','
            SET @InputString = REPLACE(@InputString, ' ', @Delimiter)
      END

      IF (@Delimiter IS NULL OR @Delimiter = '')
            SET @Delimiter = ','

--INSERT INTO @Items VALUES (@Delimiter) -- Diagnostic
--INSERT INTO @Items VALUES (@InputString) -- Diagnostic

      DECLARE @Item           VARCHAR(8000)
      DECLARE @ItemList       VARCHAR(8000)
      DECLARE @DelimIndex     INT

      SET @ItemList = @InputString
      SET @DelimIndex = CHARINDEX(@Delimiter, @ItemList, 0)
      WHILE (@DelimIndex != 0)
      BEGIN
            SET @Item = SUBSTRING(@ItemList, 0, @DelimIndex)
            INSERT INTO @Items VALUES (@Item)

            -- Set @ItemList = @ItemList minus one less item
            SET @ItemList = SUBSTRING(@ItemList, @DelimIndex+1, LEN(@ItemList)-@DelimIndex)
            SET @DelimIndex = CHARINDEX(@Delimiter, @ItemList, 0)
      END -- End WHILE

      IF @Item IS NOT NULL -- At least one delimiter was encountered in @InputString
      BEGIN
            SET @Item = @ItemList
            INSERT INTO @Items VALUES (@Item)
      END

      -- No delimiters were encountered in @InputString, so just return @InputString
      ELSE INSERT INTO @Items VALUES (@InputString)

      RETURN

END -- End Function
GO
/****** Object:  UserDefinedFunction [dbo].[tasa_diaria]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 23/01/2020
-- Description:	convierte una tasa anual a mensual
-- =============================================
CREATE FUNCTION [dbo].[tasa_diaria] 
(
	 @tasa DECIMAL(18,6)
)
RETURNS decimal(10,6)
AS
BEGIN
	DECLARE @resultado decimal(10,6)
	
	SET @resultado=(POWER((1+@tasa/100),(1.00/366))-1)

	RETURN @resultado 

END
GO
/****** Object:  UserDefinedFunction [dbo].[tasa_mensual]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Eddie Asto Castro
-- Create date: 23/01/2020
-- Description:	convierte una tasa anual a mensual
-- =============================================
CREATE FUNCTION [dbo].[tasa_mensual] 
(
	 @tasa DECIMAL(18,6)
)
RETURNS decimal(10,6)
AS
BEGIN
	DECLARE @resultado decimal(10,6)
	
	SET @resultado=POWER((1+@tasa),(1.00/12))-1

	RETURN @resultado 

END
GO
/****** Object:  UserDefinedFunction [dbo].[Get_Distance]    Script Date: 16/10/2023 18:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Get_Distance]
(   
    @La1 float , @Lo1 float , @La2 float, @Lo2 float
)
RETURNS TABLE 
AS
RETURN 
    -- Distance in Meters
    SELECT GEOGRAPHY::Point(@La1, @Lo1, 4326).STDistance(GEOGRAPHY::Point(@La2, @Lo2, 4326))
    AS Distance
GO