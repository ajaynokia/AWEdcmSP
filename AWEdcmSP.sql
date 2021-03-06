USE [AWE_db_VFI_CS_DCM]
GO
/****** Object:  StoredProcedure [dbo].[updateCSDcm_0691]    Script Date: 04-Apr-19 4:42:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
--exec [dbo].[updateCSDcm_0691] 'AP'
CREATE PROCEDURE [dbo].[updateCSDcm_0691] 
	-- Add the parameters for the stored procedure here
	@circle varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	begin try

	create table #temp
	(
	consec_nbr bigint,
	ne_name varchar(50),
	supplementary_info varchar(100),
	alarm_time datetime,
	cancel_time datetime,
	alarm_num varchar(50)
	)

	if @CIRCLE='AP'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_AP al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp select CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP] where ALARM_NUMBER in ('0691') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='CHENNAI'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_CHENNAI al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI] where ALARM_NUMBER in ('0691') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info) ;
	end
	else if @CIRCLE='MAHARASHTRA'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_MAHARASHTRA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA] where ALARM_NUMBER in ('0691') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='GUJARAT'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_GUJARAT al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT] where ALARM_NUMBER in ('0691') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='KARNATAKA'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_KARNATAKA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA] where ALARM_NUMBER in ('0691') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='KERALA'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_KERALA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA] where ALARM_NUMBER in ('0691') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='RAJASTHAN'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_RAJASTHAN al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN] where ALARM_NUMBER in ('0691') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='ROTN'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_ROTN al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN] where ALARM_NUMBER in ('0691') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='UPE'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_UPE al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE] where ALARM_NUMBER in ('0691') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='UPW'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_UPW al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW] where ALARM_NUMBER in ('0691') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='ROB'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_ROB al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROB] where ALARM_NUMBER in ('0691') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='HARYANA'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_HARYANA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_HARYANA] where ALARM_NUMBER in ('0691') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end

	declare @fake as varchar(50),@type as varchar(20),@SUPL_INFO AS VARCHAR(50),@cgr_upart as varchar(30),@ip as varchar(20)
	declare @consec as bigint,@alarm_num as varchar(50),@supplementary_info as varchar(100),@ne_name as varchar(50),@bsc as varchar(50),@count as int,@alarm_time as datetime,@cancel_time as datetime ,@map_Ne as varchar(50),@nsvci as varchar(50)
	declare @et_count as bigint,@ncgr as varchar(50),@mgw as varchar(50),@CountE as bigint,@linkset varchar(50), @nbcrct varchar(50),@spc varchar(50)


	declare mycurl cursor
	for select consec_nbr,supplementary_info,ne_name,alarm_time,cancel_time,alarm_num from #temp
	open mycurl
	fetch next from mycurl into @consec,@supplementary_info,@ne_name,@alarm_time,@cancel_time,@alarm_num
	while @@FETCH_STATUS=0
	begin
	set @map_Ne=@ne_name
	select @type =[Node_Type] from [AWE_db_VFI_CS_DCM].dbo.Ne_Master where NE_NetAct_Name=@ne_name and Circle=@circle and Domain='cs';
	
	select @ip = LTRIM(RTRIM(NE_IP)) from [AWE_db_VFI_CS_DCM].dbo.Ne_Master where NE_NetAct_Name=@ne_name and Circle=@circle and Domain='cs';	

	select @supl_info = LTRIM(RTRIM(SUBSTRING(@supplementary_info,3,5)));
	--select @nsvci= convert(int,convert(varbinary,'0x'+@supl_info,1));
	-- if @nsvci like'%d'
	-- begin
	-- select @nsvci=LTRIM(RTRIM(SUBSTRING(@supplementary_info,0,4)));
	-- end

	if (@type='MSS' or @type='GCS')
	begin
	--set @CountE=0;
	--select top 1 @bsc=LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and LINK like'%'+@supl_info+'%' and CIRCLE=@circle and LINKSET is not null and ltrim(rtrim(LINKSET))<>'';
	--select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');

	--select @et_count=(select COUNT(distinct ET) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	--set @et_count=@et_count*31;
	--select @ncgr=(select distinct NCGR from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where ELEMENT_IP=@ip and CIRCLE=@circle AND CGR =@supl_info);
	select @ncgr=(select distinct NCGR from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	select @mgw=(select distinct VMGW from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	select @nbcrct=(select distinct NBCRCT from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	select @spc=(select distinct MSS_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);	
	end

	if (@type='MGW')
	begin
	--set @CountE=0;
	--select top 1 @bsc=LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and LINK like'%'+@supl_info+'%' and CIRCLE=@circle and LINKSET is not null and ltrim(rtrim(LINKSET))<>'';
	--select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');

	--select @et_count=(select COUNT(distinct ET) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	--set @et_count=@et_count*31;
	--select @ncgr=(select distinct NCGR from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where ELEMENT_IP=@ip and CIRCLE=@circle AND CGR =@supl_info);
	select @ncgr=(select distinct NCGR from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	select @mgw=(select distinct VMGW from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	select @nbcrct=(select distinct NBCRCT from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	select @spc=(select distinct MSS_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);	
	end

	--if @circle='GUJARAT'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))
	
	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	
	--end
	--else if @circle='AP'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))

	-----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='MAHARASHTRA'
	--begin


	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))

	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='CHENNAI'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))

	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	-- else if @circle='ROTN'
	--if @circle='ROTN'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='KERALA'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='RAJASTHAN'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))

	-----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='KARNATAKA'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='UPE'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='UPW'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--set @CountE=@CountE*31;

	
	--if @CountE=null or @CountE is null
	--begin
	--set @CountE=0;
	--end

	--if @et_count=null or @et_count is null
	--begin
	--set @et_count=0;
	--end
	
	--end
	
	--else if @type='MSC'
	--begin
	--set @CountE=0;
	----select @map_Ne=ne_name from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and CIRCLE=@circle and NE_NAME<>'';
	----select top 1 @bsc=LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))),@cgr_upart=CGR_UPART from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and LINK like'%'+@nsvci+'%' and CIRCLE=@circle and LINKSET is not null and ltrim(rtrim(LINKSET))<>'';
	----select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSC where  ELEMENT_IP=@ip and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');
	--select @et_count=(select COUNT(distinct ET) from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and CIRCLE=@circle AND CGR =@nsvci);
	--set @et_count=@et_count*31;
	--select @ncgr=(select distinct NCGR from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and CIRCLE=@circle AND CGR =@nsvci);
	--select @mgw=(select distinct NE_NAME from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and CIRCLE=@circle AND CGR =@nsvci);
	
	--if @circle='GUJARAT'
	--begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='AP'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='MAHARASHTRA'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='CHENNAI'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='ROTN'
	--if @circle='ROTN'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	----else if @circle='KERALA'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))



	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='RAJASTHAN'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='KARNATAKA'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='UPE'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='UPW'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))



	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--set @CountE=@CountE*31;

	--if @CountE=null or @CountE is null
	--begin
	--set @CountE=0;
	--end

	--if @et_count=null or @et_count is null
	--begin
	--set @et_count=0;
	--end


	--end
	
	--if exists(select consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec and circle_name=@circle)
	--begin
	--select @fake=consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec;
	--end
	--else
	--begin
	
	--insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] values(@consec,@CIRCLE,@map_Ne,@ncgr,@et_count,@CountE,'CS',@alarm_time,@cancel_time,'0691','',@nsvci,dateadd(minute,150,getdate()),@mgw);
	--set @CountE=0;
	--end


	if not exists(select consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec)
	begin
	if @supl_info=null or @supl_info='' or @supl_info is null or @supl_info='null'
	-- written column names on insert statement // saurabh
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] (consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity) values(@consec,@CIRCLE,@map_Ne,'N/A','0','0','CS',@alarm_time,@cancel_time,'0691',@supl_info,'',dateadd(minute,150,getdate()),'NA');
	else
	begin
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info](consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity) values(@consec,@CIRCLE,@map_Ne,@ncgr,@nbcrct,@spc,'CS',@alarm_time,@cancel_time,'0691',@supl_info,'',dateadd(minute,150,getdate()),@mgw);
	end
	end

	set @ip='';
	set @bsc='';
	SET @et_count='0';
	set @nsvci='';
	set @cgr_upart='';
	set @CountE='0';
	set @ncgr='';
	
	fetch next from mycurl into @consec,@supplementary_info,@ne_name,@alarm_time,@cancel_time,@alarm_num
	end
	close mycurl
	deallocate mycurl

	drop table #temp;
	 end try
  
  begin catch
  
  ---rollback tran;
    declare @error int,@message varchar(4000),@xstate int;
    select @error= ERROR_NUMBER(),@MESSAGE=ERROR_MESSAGE(),@xstate=XACT_STATE();
     
     raiserror ('updatecsdcm_0691:%d:%s',16,1,@error,@message);
     return;
  end catch
END

GO
/****** Object:  StoredProcedure [dbo].[updateCSDcm_1001]    Script Date: 04-Apr-19 4:42:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- CREATE date: <CREATE Date,,>
-- Description:	<Description,,>
-- =============================================
--exec [dbo].[updateCSDcm_1001] 'ROTN'
CREATE procEDURE [dbo].[updateCSDcm_1001] 
	-- Add the parameters FOR the stored procedure here
	@circle varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- INSERT statements FOR procedure here
BEGIN TRY

	CREATE TABLE #temp
	(
	consec_nbr bigint,
	ne_name varchar(50),
	supplementary_info varchar(100),
	alarm_time datetime,
	cancel_time datetime,
	alarm_num varchar(50)
	)

	  IF @CIRCLE='AP'
	     BEGIN
	       INSERT into #temp SELECT CONSEC_NBR,NE_Name,DN as SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP] where ALARM_NUMBER in (1001) and CONSEC_NBR not in(SELECT distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	     END
	  ELSE IF @CIRCLE='CHENNAI'
	     BEGIN
	       INSERT into #temp SELECT CONSEC_NBR,NE_Name,DN as SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI] where ALARM_NUMBER in (1001) and CONSEC_NBR not in(SELECT distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	     END
	  ELSE IF @CIRCLE='MAHARASHTRA'
	     BEGIN
	      INSERT into #temp SELECT CONSEC_NBR,NE_Name,DN as SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA] where ALARM_NUMBER in (1001) and CONSEC_NBR not in(SELECT distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	     END
	  ELSE IF @CIRCLE='GUJARAT'
	     BEGIN
	      INSERT into #temp SELECT CONSEC_NBR,NE_Name,DN as SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT] where ALARM_NUMBER in (1001) and CONSEC_NBR not in(SELECT distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	     END
	  ELSE IF @CIRCLE='KARNATAKA'
	     BEGIN
	      INSERT into #temp SELECT CONSEC_NBR,NE_Name,DN as SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA] where ALARM_NUMBER in (1001) and CONSEC_NBR not in(SELECT distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	     END
	  ELSE IF @CIRCLE='KERALA'
	     BEGIN
	      INSERT into #temp SELECT CONSEC_NBR,NE_Name,DN as SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA] where ALARM_NUMBER in (1001) and CONSEC_NBR not in(SELECT distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	     END
	  ELSE IF @CIRCLE='RAJASTHAN'
	     BEGIN
	      INSERT into #temp SELECT CONSEC_NBR,NE_Name,DN as SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN] where ALARM_NUMBER in (1001) and CONSEC_NBR not in(SELECT distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	     END
	  ELSE IF @CIRCLE='ROTN'
	     BEGIN
	      INSERT into #temp SELECT CONSEC_NBR,NE_Name,DN as SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN] where ALARM_NUMBER in (1001) and CONSEC_NBR not in(SELECT distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	     END
      ELSE IF @CIRCLE='UPE'
	     BEGIN
          INSERT into #temp SELECT CONSEC_NBR,NE_Name,DN as SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE] where ALARM_NUMBER in (1001) and CONSEC_NBR not in(SELECT distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	     END
	  ELSE IF @CIRCLE='UPW'
         BEGIN
	      INSERT into #temp SELECT CONSEC_NBR,NE_Name,DN as SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW] where ALARM_NUMBER in (1001) and CONSEC_NBR not in(SELECT distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	     END
	     ELSE IF @CIRCLE='ROB'
         BEGIN
	      INSERT into #temp SELECT CONSEC_NBR,NE_Name,DN as SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROB] where ALARM_NUMBER in (1001) and CONSEC_NBR not in(SELECT distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	     END
	     ELSE IF @CIRCLE='HARYANA'
         BEGIN
	      INSERT into #temp SELECT CONSEC_NBR,NE_Name,DN as SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_HARYANA] where ALARM_NUMBER in (1001) and CONSEC_NBR not in(SELECT distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	     END
	     
	DECLARE @fake as varchar(50),@net as varchar(20),@type as varchar(20),@SUPL_INFO AS varchar(50),@cgr_upart as varchar(30),@ip as varchar(50)
	DECLARE @consec as bigint,@alarm_num as varchar(50),@supplementary_info as varchar(100),@ne_name as varchar(50),@bsc as varchar(50),@count as int,@alarm_time as datetime,@cancel_time as datetime ,@map_Ne as varchar(50),@nsvci as nvarchar(50),@loc as varchar(50),@power_card as varchar(50),@split_data as nvarchar(50),@dataLen as int,@CP as varchar(50)
	DECLARE mycurl cursor FAST_FORWARD
	FOR SELECT consec_nbr,supplementary_info,ne_name,alarm_time,cancel_time,alarm_num from #temp
	open mycurl
	FETCH next from mycurl into @consec,@supplementary_info,@ne_name,@alarm_time,@cancel_time,@alarm_num
	WHILE @@FETCH_STATUS=0
	BEGIN	 	       
	              SELECT @type =[Node_Type],@ip=LTRIM(RTRIM(NE_IP)),@map_ne=NE_NetAct_Name from [AWE_db_VFI_CS_DCM].[dbo].[Ne_Master] where NE_NetAct_Name=@ne_name and Circle=@circle and Domain='cs';	 				  				 
                  select @split_data=SplitData from  (select *,dense_rank() over(order by SplitData desc)rank from [dbo].[StringSplit](@supplementary_info,'/'))as tab where tab.rank=3; 						  		 				  				
								
						SELECT @nsvci = SUBSTRING(@split_data, CHARINDEX('-', @split_data) + 1, LEN(@split_data));	
												                  				   
      --            select @dataLen = len(@split_data)
      --            if(@dataLen = 12 or @dataLen = 11 or @dataLen = 10 or @dataLen=13)
				  --begin
      --            select @nsvci = LTRIM(RTRIM(SUBSTRING(@split_data,6,10)));
				  --end
				  --else if(@dataLen = 9)				 
				  --begin
      --            select @nsvci = LTRIM(RTRIM(SUBSTRING(@split_data,4,10)));
				  --end                        
	               
	            IF ( @type='MSS' or @type='GCS')
	               BEGIN
		SELECT TOP 1 @bsc = isnull(bsc_name,''),@loc = ISNULL(LOC,''),@power_card=ISNULL(POWER_CARD,''),@CP=ISNULL(CP,'') FROM (SELECT TOP 1 (CASE WHEN charindex(' ',UNIT)>0 THEN LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(UNIT),0,charindex(' ',REVERSE(UNIT),0))))) ELSE UNIT END) AS bsc_name,LOC,POWER_CARD,CP
		FROM AWE_db_VFI_CS_DCM.dbo.redundancy_subtrack_mss WHERE NE_NAME=@map_Ne AND UNIT LIKE '%'+@nsvci+'%' 
		AND UNIT IS NOT NULL AND ltrim(rtrim(UNIT))<>'' AND CIRCLE=@circle) data;			

		--SELECT @count=(SELECT COUNT(distinct POWER_CARD) from AWE_db_VFI_CS_DCM.dbo.redundancy_subtrack_mss where UNIT=@bsc and CIRCLE=@circle;
	               END
				IF(@type='ATCA_MSS')
					BEGIN
			SELECT TOP 1 @bsc = isnull(bsc_name,''),@loc = ISNULL(LOC,''),@power_card=ISNULL(POWER_CARD,''),@CP=ISNULL(CP,'') FROM (SELECT TOP 1 (CASE WHEN charindex(' ',UNIT)>0 THEN LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(UNIT),0,charindex(' ',REVERSE(UNIT),0))))) ELSE UNIT END) AS bsc_name,LOC,POWER_CARD,CP
			FROM AWE_db_VFI_CS_DCM.dbo.redundancy_subtrack_mss WHERE NE_NAME=@map_Ne AND UNIT LIKE '%'+@nsvci+'%' 
			AND UNIT IS NOT NULL AND ltrim(rtrim(UNIT))<>'' AND CIRCLE=@circle) data;
			
			--SELECT @count=(SELECT COUNT(distinct POWER_CARD) from AWE_db_VFI_CS_DCM.dbo.redundancy_subtrack_mss where UNIT=@bsc and CIRCLE=@circle;
					END
	            IF EXISTS(SELECT consec_nbr FROM [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] WHERE consec_nbr=@consec and circle_name=@circle)
                   BEGIN
	                  select @fake=consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec;
	               END
	            ELSE
	             -- written column names on insert statement // saurabh
	               BEGIN
	                 IF (@bsc=null or @bsc='' or @bsc is null or @bsc='null')
	                     BEGIN
						 if(Not Exists(Select * from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] Where Consec_nbr=@consec and circle_name=@circle))
						 BEGIN
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] (consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity)  values(@consec,@CIRCLE,@map_Ne,'Not in DB/'+@nsvci,isnull(@loc,''),isnull(@power_card,''),'CS',@alarm_time,@cancel_time,@alarm_num,'',@nsvci,dateadd(minute,150,getdate()),'');
	                     END
						 END
	                 ELSE
	                     BEGIN
						 if(Not Exists(Select * from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] Where Consec_nbr=@consec and circle_name=@circle))
						 BEGIN
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] (consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity)  values(@consec,@CIRCLE,@map_Ne,@bsc,isnull(@loc,''),isnull(@power_card,''),'CS',@alarm_time,@cancel_time,@alarm_num,'Hardware',@nsvci,dateadd(minute,150,getdate()),@CP);
	                     END
						 END
	                END	
	                set @bsc='';
	                set @count=0;
	                set @map_Ne='';
	                set @loc='';
					set @power_card='';
					set @CP='';
	 
      FETCH next from mycurl into @consec,@supplementary_info,@ne_name,@alarm_time,@cancel_time,@alarm_num
	END
	close mycurl
	deallocate mycurl
	drop TABLE #temp;
END TRY
BEGIN catch
    DECLARE @error int,@message varchar(4000),@xstate int;
    SELECT @error= ERROR_NUMBER(),@MESSAGE=ERROR_MESSAGE(),@xstate=XACT_STATE();
    raiserror ('UPDATECSDCM_1001:%d:%s',16,1,@error,@message);
    return;
END catch
END

GO
/****** Object:  StoredProcedure [dbo].[updateCSDcm_2064]    Script Date: 04-Apr-19 4:42:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
--exec [dbo].[updateCSDcm_2064] 'ROTN'
CREATE procEDURE [dbo].[updateCSDcm_2064] 
	-- Add the parameters for the stored procedure here
	@CIRCLE VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	begin try

		--create table #ttable (CONSEC_NBR bigint,NE_NAME varchar(50),NE_IP varchar(50),NODE_TYPE varchar(50),SPC varchar(100),ALARM_TIME datetime,CANCEL_TIME datetime,ALARM_NUMBER varchar(50))
		create table #ttable (CONSEC_NBR bigint,NE_NAME varchar(50),SPC varchar(100),ALARM_TIME datetime,CANCEL_TIME datetime,ALARM_NUMBER varchar(50))
	IF(@CIRCLE='AP')
		--insert into #ttable select * from (select f.CONSEC_NBR,f.NE_Name,n.NE_IP,n.Node_Type,f.SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP] f 
		--INNER JOIN AWE_db_VFI_CS_DCM.dbo.Ne_Master n ON n.NE_NetAct_Name = f.NE_Name where ALARM_NUMBER = '2064') data where data.CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE) and data.NODE_TYPE in ('MSS','MSC','GMSC','MGW','GMGW','HLR','GCS','ATCA','ATCA_MSS')

		insert into #ttable SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN] where ALARM_NUMBER in ('2064') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
		
	IF(@CIRCLE='GUJARAT')
		--insert into #ttable select * from (select f.CONSEC_NBR,f.NE_Name,n.NE_IP,n.Node_Type,f.SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT] f 
		--INNER JOIN AWE_db_VFI_CS_DCM.dbo.Ne_Master n ON n.NE_NetAct_Name = f.NE_Name where ALARM_NUMBER = '2064') data where data.CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE) and data.NODE_TYPE in ('MSS','MSC','GMSC','MGW','GMGW','HLR','GCS','ATCA','ATCA_MSS')

		insert into #ttable SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN] where ALARM_NUMBER in ('2064') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
		
	IF(@CIRCLE='CHENNAI')
		--insert into #ttable select * from (select f.CONSEC_NBR,f.NE_Name,n.NE_IP,n.Node_Type,f.SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI] f 
		--INNER JOIN AWE_db_VFI_CS_DCM.dbo.Ne_Master n ON n.NE_NetAct_Name = f.NE_Name where ALARM_NUMBER = '2064') data where data.CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE) and data.NODE_TYPE in ('MSS','MSC','GMSC','MGW','GMGW','HLR','GCS','ATCA','ATCA_MSS')

		insert into #ttable SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN] where ALARM_NUMBER in ('2064') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
		
	IF(@CIRCLE='KARNATAKA')
		--insert into #ttable select * from (select f.CONSEC_NBR,f.NE_Name,n.NE_IP,n.Node_Type,f.SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA] f 
		--INNER JOIN AWE_db_VFI_CS_DCM.dbo.Ne_Master n ON n.NE_NetAct_Name = f.NE_Name where ALARM_NUMBER = '2064') data where data.CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE) and data.NODE_TYPE in ('MSS','MSC','GMSC','MGW','GMGW','HLR','GCS','ATCA','ATCA_MSS')

		insert into #ttable SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN] where ALARM_NUMBER in ('2064') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	
		
	IF(@CIRCLE='MAHARASHTRA')
		--insert into #ttable select * from (select f.CONSEC_NBR,f.NE_Name,n.NE_IP,n.Node_Type,f.SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA] f 
		--INNER JOIN AWE_db_VFI_CS_DCM.dbo.Ne_Master n ON n.NE_NetAct_Name = f.NE_Name where ALARM_NUMBER = '2064') data where data.CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE) and data.NODE_TYPE in ('MSS','MSC','GMSC','MGW','GMGW','HLR','GCS','ATCA','ATCA_MSS')

		insert into #ttable SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN] where ALARM_NUMBER in ('2064') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	
		
	IF(@CIRCLE='KERALA')
		--insert into #ttable select * from (select f.CONSEC_NBR,f.NE_Name,n.NE_IP,n.Node_Type,f.SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA] f 
		--INNER JOIN AWE_db_VFI_CS_DCM.dbo.Ne_Master n ON n.NE_NetAct_Name = f.NE_Name where ALARM_NUMBER = '2064') data where data.CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE) and data.NODE_TYPE in ('MSS','MSC','GMSC','MGW','GMGW','HLR','GCS','ATCA','ATCA_MSS')

		insert into #ttable SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN] where ALARM_NUMBER in ('2064') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
		
	IF(@CIRCLE='RAJASTHAN')
		--insert into #ttable select * from (select f.CONSEC_NBR,f.NE_Name,n.NE_IP,n.Node_Type,f.SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN] f 
		--INNER JOIN AWE_db_VFI_CS_DCM.dbo.Ne_Master n ON n.NE_NetAct_Name = f.NE_Name where ALARM_NUMBER = '2064') data where data.CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE) and data.NODE_TYPE in ('MSS','MSC','GMSC','MGW','GMGW','HLR','GCS','ATCA','ATCA_MSS')

		insert into #ttable SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN] where ALARM_NUMBER in ('2064') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
		
	IF(@CIRCLE='ROTN')	
		--insert into #ttable select * from (select f.CONSEC_NBR,f.NE_Name,n.NE_IP,n.Node_Type,f.SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN] f 
		--INNER JOIN AWE_db_VFI_CS_DCM.dbo.Ne_Master n ON n.NE_NetAct_Name = f.NE_Name where ALARM_NUMBER = '2064') data where data.CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE) and data.NODE_TYPE in ('MSS','MSC','GMSC','MGW','GMGW','HLR','GCS','ATCA','ATCA_MSS')
		insert into #ttable SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN] where ALARM_NUMBER in ('2064') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	IF(@CIRCLE='UPE')
		--insert into #ttable select * from (select f.CONSEC_NBR,f.NE_Name,n.NE_IP,n.Node_Type,f.SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE] f 
		--INNER JOIN AWE_db_VFI_CS_DCM.dbo.Ne_Master n ON n.NE_NetAct_Name = f.NE_Name where ALARM_NUMBER = '2064') data where data.CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE) and data.NODE_TYPE in ('MSS','MSC','GMSC','MGW','GMGW','HLR','GCS','ATCA','ATCA_MSS')

		insert into #ttable SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN] where ALARM_NUMBER in ('2064') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	IF(@CIRCLE='UPW')
		--insert into #ttable select * from (select f.CONSEC_NBR,f.NE_Name,n.NE_IP,n.Node_Type,f.SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW] f 
		--INNER JOIN AWE_db_VFI_CS_DCM.dbo.Ne_Master n ON n.NE_NetAct_Name = f.NE_Name where ALARM_NUMBER = '2064') data where data.CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE) and data.NODE_TYPE in ('MSS','MSC','GMSC','MGW','GMGW','HLR','GCS','ATCA','ATCA_MSS')

		insert into #ttable SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN] where ALARM_NUMBER in ('2064') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	IF(@CIRCLE='ROB')
		--insert into #ttable select * from (select f.CONSEC_NBR,f.NE_Name,n.NE_IP,n.Node_Type,f.SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROB] f 
		--INNER JOIN AWE_db_VFI_CS_DCM.dbo.Ne_Master n ON n.NE_NetAct_Name = f.NE_Name where ALARM_NUMBER = '2064') data where data.CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE) and data.NODE_TYPE in ('MSS','MSC','GMSC','MGW','GMGW','HLR','GCS','ATCA','ATCA_MSS')

		insert into #ttable SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN] where ALARM_NUMBER in ('2064') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	IF(@CIRCLE='HARYANA')
		--insert into #ttable select * from (select f.CONSEC_NBR,f.NE_Name,n.NE_IP,n.Node_Type,f.SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_HARYANA] f 
		--INNER JOIN AWE_db_VFI_CS_DCM.dbo.Ne_Master n ON n.NE_NetAct_Name = f.NE_Name where ALARM_NUMBER = '2064') data where data.CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE) and data.NODE_TYPE in ('MSS','MSC','GMSC','MGW','GMGW','HLR','GCS','ATCA','ATCA_MSS')

		insert into #ttable SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN] where ALARM_NUMBER in ('2064') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	
		
		declare @consec bigint,@ne_name varchar(50),@ne_ip varchar(50),@node_type varchar(50),@net varchar(50),@spc varchar(50),@CGR_UPART varchar(50),@fake as varchar(50),
		@alarm_time datetime,@cancle_time datetime,@alarm_num varchar(50),@linkset varchar(50),@slc_count varchar(10),@split_data as varchar(50),@nsvci as varchar(50),@ncgr as varchar(50),@CGR_SPC as varchar(50),@ncgrStartWithB as int,@linkType as varchar(50),@ncgrStartWithS as int,@ncgrStartWithM as int,@ncgrStartWithC as int,@ncgrStartWithX as int,@ncgrStartWithI as int
		declare newCursor cursor FAST_FORWARD
		
		--for SELECT CONSEC_NBR,NE_NAME,NE_IP,NODE_TYPE,SPC,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER FROM #ttable
		for SELECT CONSEC_NBR,NE_NAME,SPC,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER FROM #ttable
		open newCursor
		--fetch next from newCursor into @consec,@ne_name,@ne_ip,@node_type,@spc,@alarm_time,@cancle_time,@alarm_num
		fetch next from newCursor into @consec,@ne_name,@spc,@alarm_time,@cancle_time,@alarm_num
		while @@FETCH_STATUS=0
		begin
		select @node_type =[Node_Type],@ne_ip=LTRIM(RTRIM(NE_IP)),@ne_name=Ne_name from [AWE_db_VFI_CS_DCM].dbo.Ne_Master where NE_NetAct_Name=@ne_name and Domain='cs';
		--SUBSTRING(linkset,4,LEN(linkset) + 1) for fetching linkset old way
		declare @supl_values as varchar(100) = RTRIM(Substring(LTRIM(SUBSTRING(@spc,CHARINDEX('/',@spc)+1,LEN(@spc))),1,LEN(LTRIM(SUBSTRING(@spc,CHARINDEX('/',@spc)+1,LEN(@spc))))-1));
   Select top 1 @split_data=SplitData from [dbo].[StringSplit](@supl_values,' ');
  select @nsvci = LTRIM(RTRIM(SUBSTRING(@split_data,5,8)));
  	--Select top 2 @split_data=SplitData from [dbo].[StringSplit](@supl_values,' ');
	select @split_data=SplitData from  (select *,dense_rank() over(order by SplitData desc)rank from [dbo].[StringSplit](@supl_values,' '))as tab where tab.rank=1;
	select @net=LTRIM(RTRIM(@split_data));
	--select @net=LTRIM(RTRIM(SUBSTRING(@supplementary_info,18,4)));
	--select @nsvci= convert(int,convert(varbinary,'0x'+@supl_info,1));
	--select @count=LTRIM(RTRIM(SUBSTRING(@supplementary_info,5,4)));
	
	if @net='0C'
	begin
	set @net='NA1'
	end
	else
	begin
	set @net='NA0'
	end
		if(@node_type='MSS')
		begin
			--WITH CTE
			--AS(
			--SELECT (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as linkset,ROW_NUMBER() OVER(PARTITION BY NE_NAME ORDER BY LINKSET) AS CC,CGR_SPC FROM [AWE_db_VFI_CS_DCM].[dbo].[MSS_Link] AS C 
			--WHERE C.CIRCLE = @CIRCLE AND C.ELEMENT_IP = @ne_ip AND C.LINKSET IS NOT NULL AND C.CGR_NET = @net AND SUBSTRING(C.CGR_SPC,0,5) = @nsvci)			
			--SELECT TOP 1 @linkset=linkset/*,@slc_count=CC*/,@CGR_SPC=CGR_SPC FROM CTE ORDER BY CC DESC
			
				select top 1 @linkset=bsc_name,@CGR_SPC=CGR_SPC from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name,CGR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ne_ip and SUBSTRING(CGR_SPC,0,5) = @nsvci and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle and NE_NAME=@ne_name) data;

				if @linkset='' or @linkset=null or @linkset is null or @linkset='null'
				begin 
				select top 1 @linkset=bsc_name,@CGR_SPC=HLR_SPC from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name,HLR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ne_ip and SUBSTRING(HLR_SPC,0,5) = @nsvci and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle and NE_NAME=@ne_name) data;	
				end

				if @linkset='' or @linkset=null or @linkset is null or @linkset='null'
				begin 
				select top 1 @linkset=bsc_name,@CGR_SPC=CGR_SPC from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name,CGR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where  SUBSTRING(CGR_SPC,0,5) = @nsvci and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle and NE_NAME=@ne_name) data;	
				end

				if @linkset='' or @linkset=null or @linkset is null or @linkset='null'
				begin 
				select top 1 @linkset=bsc_name,@CGR_SPC=MSS_SPC from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name,MSS_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where  SUBSTRING(MSS_SPC,0,5) = @nsvci and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle and NE_NAME=@ne_name) data;	
				end
								
			SELECT @ncgr = (SELECT distinct top 1 NCGR FROM [AWE_db_VFI_CS_DCM].[dbo].[V_Get_SPC_NCGR] WHERE SPC LIKE ''+@nsvci+'%' and CIRCLE=@circle and NCGR<>'');
				
			--select @ncgr = (select distinct top 1 MSG.NCGR from MSS_Link MSL inner join MSS_MGW_MAPPING MSG on MSL.HLR_SPC=MSG.MSS_SPC where MSG.MSS_SPC=@CGR_SPC);
			--select @ncgr = (select distinct top 1 MSG.NCGR from MSS_Link MSL inner join MSS_MGW_MAPPING MSG on MSL.CGR_SPC=MSG.CGR_SPC where MSG.CGR_SPC=@CGR_SPC);
			--select @ncgr = (select distinct top 1 NCGR from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where MSS_SPC=@CGR_SPC);			
				
			if @ncgr=null or @ncgr='' or @ncgr is null or @ncgr='null'
			begin
	 select @linkType='';
	 end
	 else
	 begin
	select @ncgrStartWithB = (SELECT CHARINDEX('B', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithS = (SELECT CHARINDEX('S', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithC = (SELECT CHARINDEX('C', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithX = (SELECT CHARINDEX('X', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithM = (SELECT CHARINDEX('M', LTRIM(RTRIM(@ncgr)), 1));
	if (@ncgrStartWithB = 1)
	begin	
	select @linkType='BSC';
	end
	else if(@ncgrStartWithS=1 or @ncgrStartWithC=1)
	begin
	select @linkType='InterMSC';
	end
	else if(@ncgrStartWithX=1 or @ncgrStartWithM=1)
	begin
	select @linkType='VAS';
	end
	end

			--select @slc_count=count(*) from (SELECT distinct ELEMENT_IP,cgr_net,cgr_spc,SLC FROM [AWE_db_VFI_CS_DCM].[dbo].[MSS_Link] AS C 
			--WHERE C.CIRCLE = @CIRCLE AND C.ELEMENT_IP = @ne_ip AND C.CGR_NET = @net AND SUBSTRING(C.CGR_SPC,0,5) = @nsvci) slcCount
			

			--SELECT SUBSTRING(linkset,4,LEN(linkset) + 1) as linkset,CGR_UPART,ROW_NUMBER() OVER(PARTITION BY MSS ORDER BY LINKSET) AS CC FROM [AWE_db_VFI_CS_DCM].[dbo].[MSS_MGW_MAPPING] AS C 
			--WHERE C.CIRCLE = @CIRCLE AND C.ELEMENT_IP = @ne_ip AND C.CGR_NET = @net AND SUBSTRING(C.CGR_SPC,0,5) = @spc AND C.SLC != '')
			--SELECT TOP 1 @linkset=linkset,@CGR_UPART=CGR_UPART,@slc_count=CC FROM CTE ORDER BY CC DESC
			--set @linkset='NA'
			--set @slc_count='0'
		end
		if(@node_type='GCS')
		begin
			--WITH CTE
			--AS(
			--SELECT (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as linkset,ROW_NUMBER() OVER(PARTITION BY NE_NAME ORDER BY LINKSET) AS CC,CGR_SPC FROM [AWE_db_VFI_CS_DCM].[dbo].[MSS_Link] AS C 
			--WHERE C.CIRCLE = @CIRCLE AND C.ELEMENT_IP = @ne_ip AND C.LINKSET IS NOT NULL AND C.CGR_NET = @net AND SUBSTRING(C.CGR_SPC,0,5) = @nsvci)			
			--SELECT TOP 1 @linkset=linkset/*,@slc_count=CC*/,@CGR_SPC=CGR_SPC FROM CTE ORDER BY CC DESC			
			--set @CGR_UPART=' '

			select top 1 @linkset=bsc_name,@CGR_SPC=CGR_SPC from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name,CGR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ne_ip and SUBSTRING(CGR_SPC,0,5) = @nsvci and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle and NE_NAME=@ne_name) data;

				if @linkset='' or @linkset=null or @linkset is null or @linkset='null'
				begin 
				select top 1 @linkset=bsc_name,@CGR_SPC=HLR_SPC from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name,HLR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ne_ip and SUBSTRING(HLR_SPC,0,5) = @nsvci and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle and NE_NAME=@ne_name) data;	
				end

				if @linkset='' or @linkset=null or @linkset is null or @linkset='null'
				begin 
				select top 1 @linkset=bsc_name,@CGR_SPC=CGR_SPC from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name,CGR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where  SUBSTRING(CGR_SPC,0,5) = @nsvci and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle and NE_NAME=@ne_name) data;	
				end

				if @linkset='' or @linkset=null or @linkset is null or @linkset='null'
				begin 
				select top 1 @linkset=bsc_name,@CGR_SPC=MSS_SPC from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name,MSS_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where  SUBSTRING(MSS_SPC,0,5) = @nsvci and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle and NE_NAME=@ne_name) data;	
				end

			SELECT @ncgr = (SELECT distinct top 1 NCGR FROM [AWE_db_VFI_CS_DCM].[dbo].[V_Get_SPC_NCGR] WHERE SPC LIKE ''+@nsvci+'%' and CIRCLE=@circle and NCGR<>'');

			--select @ncgr = (select distinct top 1 MSG.NCGR from MSS_Link MSL inner join MSS_MGW_MAPPING MSG on MSL.HLR_SPC=MSG.MSS_SPC where MSG.MSS_SPC=@CGR_SPC);
			--select @ncgr = (select distinct top 1 MSG.NCGR from MSS_Link MSL inner join MSS_MGW_MAPPING MSG on MSL.CGR_SPC=MSG.CGR_SPC where MSG.CGR_SPC=@CGR_SPC);
			--select @ncgr = (select distinct top 1 NCGR from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where MSS_SPC=@CGR_SPC);
			if @ncgr=null or @ncgr='' or @ncgr is null or @ncgr='null'
			begin
	 select @linkType='';
	 end
	 else
	 begin
	select @ncgrStartWithB = (SELECT CHARINDEX('B', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithS = (SELECT CHARINDEX('S', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithC = (SELECT CHARINDEX('C', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithX = (SELECT CHARINDEX('X', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithM = (SELECT CHARINDEX('M', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithI = (SELECT CHARINDEX('I', LTRIM(RTRIM(@ncgr)), 1));
	if (@ncgrStartWithB = 1 or @ncgrStartWithI=1)
	begin		
	select @linkType='POI';
	end
	else if(@ncgrStartWithS=1 or @ncgrStartWithC=1)
	begin
	select @linkType='InterMSC';
	end
	else if(@ncgrStartWithX=1 or @ncgrStartWithM=1)
	begin
	select @linkType='VAS';
	end
	end

			--select @slc_count=count(*) from (SELECT distinct ELEMENT_IP,cgr_net,cgr_spc,SLC FROM [AWE_db_VFI_CS_DCM].[dbo].[MSS_Link] AS C 
			--WHERE C.CIRCLE = @CIRCLE AND C.ELEMENT_IP = @ne_ip AND C.CGR_NET = @net AND SUBSTRING(C.CGR_SPC,0,5) = @nsvci) slcCount
			

			--SELECT SUBSTRING(linkset,4,LEN(linkset) + 1) as linkset,CGR_UPART,ROW_NUMBER() OVER(PARTITION BY MSS ORDER BY LINKSET) AS CC FROM [AWE_db_VFI_CS_DCM].[dbo].[MSS_MGW_MAPPING] AS C 
			--WHERE C.CIRCLE = @CIRCLE AND C.ELEMENT_IP = @ne_ip AND C.CGR_NET = @net AND SUBSTRING(C.CGR_SPC,0,5) = @spc AND C.SLC != '')
			--SELECT TOP 1 @linkset=linkset,@CGR_UPART=CGR_UPART,@slc_count=CC FROM CTE ORDER BY CC DESC
			--set @linkset='NA'
			--set @slc_count='0'
		end
		if(@node_type='ATCA_MSS')
		begin
		--	WITH CTE
		--	AS(
		--	SELECT (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as linkset,ROW_NUMBER() OVER(PARTITION BY NE_NAME ORDER BY LINKSET) AS CC FROM [AWE_db_VFI_CS_DCM].[dbo].[MSS_Link] AS C 
		--	WHERE C.CIRCLE = @CIRCLE AND C.NE_NAME = @ne_name AND C.LINKSET IS NOT NULL AND C.CGR_NET = @net AND SUBSTRING(C.CGR_SPC,0,5) = @nsvci)
		--	SELECT TOP 1 @linkset=linkset/*,@slc_count=CC*/ FROM CTE ORDER BY CC DESC			
		--	set @CGR_UPART=' '

		--	select @slc_count=count(*) from (SELECT distinct ELEMENT_IP,cgr_net,HLR_SPC,SLC FROM [AWE_db_VFI_CS_DCM].[dbo].[MSS_Link] AS C 
		--	WHERE C.CIRCLE = @CIRCLE AND C.NE_NAME = @ne_name AND C.CGR_NET = @net AND SUBSTRING(C.CGR_SPC,0,5) = @nsvci) slcCount

		select top 1 @linkset=bsc_name,@CGR_SPC=CGR_SPC from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name,CGR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ne_ip and SUBSTRING(CGR_SPC,0,5) = @nsvci and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle and NE_NAME=@ne_name) data;

		end		
		if(@node_type='MGW')
		begin
			--WITH CTE
			--AS(
			--SELECT (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as linkset,CGR_UPART,CGR_SPC,ROW_NUMBER() OVER(PARTITION BY MGW_NAME  ORDER BY LINKSET) AS CC FROM [AWE_db_VFI_CS_DCM].[dbo].[MSS_MGW_MAPPING] AS C 
			--WHERE C.CIRCLE = @CIRCLE AND C.MGW_NAME = @ne_name AND C.LINKSET IS NOT NULL AND C.CGR_NET = @net AND SUBSTRING(C.MGW_SPC,0,5) = @nsvci)
			--SELECT TOP 1 @linkset=linkset,@CGR_UPART=CGR_UPART/*,@slc_count=CC*/,@CGR_SPC=CGR_SPC FROM CTE ORDER BY CC DESC;

			--select @slc_count=count(*)  from (SELECT distinct mgw_name,cgr_net,cgr_spc,slc FROM [AWE_db_VFI_CS_DCM].[dbo].[MSS_MGW_MAPPING] AS C 
			--WHERE C.CIRCLE = @CIRCLE AND C.MGW_NAME  = @ne_name AND C.CGR_NET = @net AND SUBSTRING(C.MGW_SPC,0,5) = @nsvci) slcCount;

			select top 1 @linkset=bsc_name,@CGR_SPC=MGW_SPC from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name,MGW_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where SUBSTRING(MGW_SPC,0,5) = @nsvci AND MGW_NAME = @ne_name and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle) data;

			if @linkset='' or @linkset=null or @linkset is null or @linkset='null'
			select top 1 @linkset=bsc_name,@CGR_SPC=MGW_SPC from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name,MGW_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where SUBSTRING(MGW_SPC,0,5) = @nsvci AND MGW_NAME = @ne_name and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle) data;

			SELECT @ncgr = (SELECT distinct top 1 NCGR FROM [AWE_db_VFI_CS_DCM].[dbo].[V_Get_SPC_NCGR] WHERE SPC LIKE ''+@nsvci+'%' and CIRCLE=@circle and NCGR<>'');
			 
			--select @ncgr = (select distinct top 1 NCGR from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where MGW_NAME=@ne_name);
			--select @ncgr = (select distinct top 1 MSG.NCGR from AWE_db_VFI_CS_DCM.dbo.MSS_Link MSL inner join AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING MSG on MSL.CGR_SPC=MSG.MGW_SPC where MSL.CGR_SPC=@CGR_SPC);	
			if @ncgr=null or @ncgr='' or @ncgr is null or @ncgr='null'
			begin
	 select @linkType='';
	 end
	 else
	 begin
	select @ncgrStartWithB = (SELECT CHARINDEX('B', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithS = (SELECT CHARINDEX('S', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithC = (SELECT CHARINDEX('C', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithX = (SELECT CHARINDEX('X', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithM = (SELECT CHARINDEX('M', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithI = (SELECT CHARINDEX('I', LTRIM(RTRIM(@ncgr)), 1));
	--if (@ncgrStartWithB = 1 or @ncgrStartWithI=1)
	--begin	
	--select @linkType='POI';
	--end
	if (@ncgrStartWithI = 1)
	begin	
	select @linkType='POI';
	end
	if (@ncgrStartWithB = 1)
	begin	
	select @linkType='BSC';
	end
	else if(@ncgrStartWithS=1 or @ncgrStartWithC=1)
	begin
	select @linkType='InterMSC';
	end
	else if(@ncgrStartWithX=1 or @ncgrStartWithM=1)
	begin
	select @linkType='VAS';
	end
	end

		end

		if(@node_type='GMGW')
		begin
			--WITH CTE
			--AS(
			--SELECT (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as linkset,CGR_UPART,CGR_SPC,ROW_NUMBER() OVER(PARTITION BY MGW_NAME  ORDER BY LINKSET) AS CC FROM [AWE_db_VFI_CS_DCM].[dbo].[MSS_MGW_MAPPING] AS C 
			--WHERE C.CIRCLE = @CIRCLE AND C.MGW_NAME = @ne_name AND C.LINKSET IS NOT NULL AND C.CGR_NET = @net AND SUBSTRING(C.MGW_SPC,0,5) = @nsvci)
			--SELECT TOP 1 @linkset=linkset,@CGR_UPART=CGR_UPART/*,@slc_count=CC*/,@CGR_SPC=CGR_SPC FROM CTE ORDER BY CC DESC;

			--select @slc_count=count(*)  from (SELECT distinct mgw_name,cgr_net,cgr_spc,slc FROM [AWE_db_VFI_CS_DCM].[dbo].[MSS_MGW_MAPPING] AS C 
			--WHERE C.CIRCLE = @CIRCLE AND C.MGW_NAME  = @ne_name AND C.CGR_NET = @net AND SUBSTRING(C.MGW_SPC,0,5) = @nsvci) slcCount;

			select top 1 @linkset=bsc_name,@CGR_SPC=MGW_SPC from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name,MGW_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where SUBSTRING(MGW_SPC,0,5) = @nsvci AND MGW_NAME = @ne_name and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle) data;

			if @linkset='' or @linkset=null or @linkset is null or @linkset='null'
			select top 1 @linkset=bsc_name,@CGR_SPC=MGW_SPC from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name,MGW_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where SUBSTRING(MGW_SPC,0,5) = @nsvci AND MGW_NAME = @ne_name and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle) data;

			SELECT @ncgr = (SELECT distinct top 1 NCGR FROM [AWE_db_VFI_CS_DCM].[dbo].[V_Get_SPC_NCGR] WHERE SPC LIKE ''+@nsvci+'%' and CIRCLE=@circle and NCGR<>'');
			 
			--select @ncgr = (select distinct top 1 NCGR from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where MGW_NAME=@ne_name);
			--select @ncgr = (select distinct top 1 MSG.NCGR from AWE_db_VFI_CS_DCM.dbo.MSS_Link MSL inner join AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING MSG on MSL.CGR_SPC=MSG.MGW_SPC where MSL.CGR_SPC=@CGR_SPC);	
			if @ncgr=null or @ncgr='' or @ncgr is null or @ncgr='null'
			begin
	 select @linkType='';
	 end
	 else
	 begin
	select @ncgrStartWithB = (SELECT CHARINDEX('B', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithS = (SELECT CHARINDEX('S', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithC = (SELECT CHARINDEX('C', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithX = (SELECT CHARINDEX('X', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithM = (SELECT CHARINDEX('M', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithI = (SELECT CHARINDEX('I', LTRIM(RTRIM(@ncgr)), 1));
	if (@ncgrStartWithB = 1 or @ncgrStartWithI=1)
	begin	
	select @linkType='POI';
	end
	--if (@ncgrStartWithB = 1)
	--begin	
	--select @linkType='BSC';
	--end
	else if(@ncgrStartWithS=1 or @ncgrStartWithC=1)
	begin
	select @linkType='InterMSC';
	end
	else if(@ncgrStartWithX=1 or @ncgrStartWithM=1)
	begin
	select @linkType='VAS';
	end
	end

		end

		if(@node_type='MSC' OR @node_type='GMSC')
		begin
			WITH CTE
			AS(
			SELECT (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as linkset,CGR_UPART,ROW_NUMBER() OVER(PARTITION BY MSS ORDER BY LINKSET) AS CC FROM [AWE_db_VFI_CS_DCM].[dbo].[MSC] AS C 
			WHERE C.CIRCLE = @CIRCLE AND C.ELEMENT_IP = @ne_ip AND C.LINKSET IS NOT NULL  AND C.CGR_NET = @net AND SUBSTRING(C.CGR_SPC,0,5) = @nsvci)
			SELECT TOP 1 @linkset=linkset,@CGR_UPART=CGR_UPART/*,@slc_count=CC*/ FROM CTE ORDER BY CC DESC;
			
			--select @slc_count= COUNT(*) from (SELECT distinct ELEMENT_IP,cgr_net,cgr_spc,slc FROM [AWE_db_VFI_CS_DCM].[dbo].[MSC] AS C 
			--WHERE C.CIRCLE = @CIRCLE AND C.ELEMENT_IP = @ne_ip AND C.CGR_NET = @net AND SUBSTRING(C.CGR_SPC,0,5) = @nsvci) slcCount;

		end
		if(@node_type='HLR')
		begin
			WITH CTE
			AS(
			SELECT (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as linkset,GENERIC_NAME AS CGR_UPART,ROW_NUMBER() OVER(PARTITION BY HLR ORDER BY LINKSET) AS CC FROM [AWE_db_VFI_CS_DCM].[dbo].[HLR] AS C 
			WHERE C.CIRCLE = @CIRCLE AND C.ELEMENT_IP = @ne_ip  AND C.LINKSET IS NOT NULL AND C.CGR_NET = @net AND SUBSTRING(C.CGR_SPC,0,5) = @nsvci)
			SELECT TOP 1 @linkset=linkset,@CGR_UPART=CGR_UPART/*,@slc_count=CC*/ FROM CTE ORDER BY CC DESC;
			
			--select @slc_count= count(*) from (SELECT distinct element_ip,cgr_net,cgr_spc,slc FROM [AWE_db_VFI_CS_DCM].[dbo].[HLR] AS C 
			--WHERE C.CIRCLE = @CIRCLE AND C.ELEMENT_IP = @ne_ip AND C.CGR_NET = @net AND SUBSTRING(C.CGR_SPC,0,5) = @nsvci ) slcCount
			
		end
	
	if exists(select consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec and circle_name=@circle)
	begin
	select @fake=consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec;
	end
	else	
	begin
	if @linkset=null or @linkset='' or @linkset is null or @linkset='null'
	-- written column names on insert statement // saurabh
	begin
	       if(Not Exists(Select * from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] Where Consec_nbr=@consec))
	         begin
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] (consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity) values(@consec,@CIRCLE,@ne_name,'Not in DB/'+@nsvci,'NA','NA','CS',@alarm_time,@cancle_time,'2064','',@nsvci,dateadd(minute,150,getdate()),'');
	end
	end
	else
	begin
	if(Not Exists(Select * from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] Where Consec_nbr=@consec))
	         begin
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info](consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity) values(@consec,@CIRCLE,@ne_name,@linkset,'NA','NA','CS',@alarm_time,@cancle_time,'2064',@linkType,@nsvci,dateadd(minute,150,getdate()),'Yes');
	end
	end
	end

	set @linkset='';
	set @slc_count=0;
	set @CGR_UPART='';
	set @linkType='';
	set @ncgr='';
	--fetch next from newCursor into @consec,@ne_name,@ne_ip,@node_type,@spc,@alarm_time,@cancle_time,@alarm_num
	fetch next from newCursor into @consec,@ne_name,@spc,@alarm_time,@cancle_time,@alarm_num
	end
	close newCursor
	deallocate newCursor

	drop table #ttable;
	 end try
  
  begin catch
  
  ---rollback tran;
    declare @error int,@message varchar(4000),@xstate int;
    select @error= ERROR_NUMBER(),@MESSAGE=ERROR_MESSAGE(),@xstate=XACT_STATE();
     
     raiserror ('updateCSDCM_2064:%d:%s',16,1,@error,@message);
     return;
  end catch
END
GO
/****** Object:  StoredProcedure [dbo].[updateCSDcm_2070]    Script Date: 04-Apr-19 4:42:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
--exec [dbo].[updateCSDcm_2070] 'ROTN'
CREATE procEDURE [dbo].[updateCSDcm_2070] 
	-- Add the parameters for the stored procedure here
	@circle varchar(50)
AS
BEGIN

--Declare @circle varchar(20)

--SET @circle = 'ROTN'

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	begin try

	create table #temp
	(
	consec_nbr bigint,
	ne_name varchar(50),
	supplementary_info varchar(100),
	alarm_time datetime,
	cancel_time datetime,
	alarm_num varchar(50)
	)

	if @CIRCLE='AP'
	begin
	insert into #temp select CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP] where ALARM_NUMBER in ('2070') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='CHENNAI'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI] where ALARM_NUMBER in ('2070') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='MAHARASHTRA'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA] where ALARM_NUMBER in ('2070') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='GUJARAT'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT] where ALARM_NUMBER in ('2070') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='KARNATAKA'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA] where ALARM_NUMBER in ('2070') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='KERALA'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA] where ALARM_NUMBER in ('2070') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='RAJASTHAN'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN] where ALARM_NUMBER in ('2070') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='ROTN'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN] where ALARM_NUMBER in ('2070') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='UPE'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE] where ALARM_NUMBER in ('2070') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='UPW'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW] where ALARM_NUMBER in ('2070') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
else if @CIRCLE='ROB'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROB] where ALARM_NUMBER in ('2070') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='HARYANA'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_HARYANA] where ALARM_NUMBER in ('2070') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	
	declare @fake as varchar(50),@net as varchar(20),@type as varchar(20),@SUPL_INFO AS varchar(50),@cgr_upart as varchar(30),@ip as varchar(50)
	declare @consec as bigint,@alarm_num as varchar(50),@supplementary_info as varchar(100),@ne_name as varchar(50),@bsc as varchar(50),@count as int,@alarm_time as datetime,@cancel_time as datetime ,@map_Ne as varchar(50),@nsvci as varchar(50),@split_data as varchar(50),@ncgr as varchar(50),@ncgrStartWithB as int,@linkType as varchar(50),@ncgrStartWithS as int,@ncgrStartWithM as int,@ncgrStartWithC as int,@ncgrStartWithX as int,@ncgrStartWithI as int,@SPC as varchar(50),@split_datas as varchar(50)
	declare mycurl cursor FAST_FORWARD
	for select consec_nbr,supplementary_info,ne_name,alarm_time,cancel_time,alarm_num from #temp
	open mycurl
	fetch next from mycurl into @consec,@supplementary_info,@ne_name,@alarm_time,@cancel_time,@alarm_num
	while @@FETCH_STATUS=0
	begin
	 
	--set @map_Ne=@ne_name;
	select @type =[Node_Type],@ip=LTRIM(RTRIM(NE_IP)),@map_Ne=Ne_name from [AWE_db_VFI_CS_DCM].dbo.Ne_Master where NE_NetAct_Name=@ne_name and Domain='cs';
	--select @supl_info =LTRIM(RTRIM(SUBSTRING(@supplementary_info,13,5)));
	declare @supl_values as varchar(100) = RTRIM(Substring(LTRIM(SUBSTRING(@supplementary_info,CHARINDEX('/',@supplementary_info)+1,LEN(@supplementary_info))),1,LEN(LTRIM(SUBSTRING(@supplementary_info,CHARINDEX('/',@supplementary_info)+1,LEN(@supplementary_info))))-1));
   --Select top 1 @split_data=SplitData from [dbo].[StringSplit](@supl_values,' ');
   select @split_data=SplitData from  (select *,dense_rank() over(order by SplitData desc)rank from [dbo].[StringSplit](@supl_values,' '))as tab where tab.rank=4;
  select @nsvci = LTRIM(RTRIM(SUBSTRING(@split_data,5,8)));
  --set @split_data='';
  	--Select top 2 @split_data=SplitData from [dbo].[StringSplit](@supl_values,' ');
	select @split_datas = SplitData from  (select *,dense_rank() over(order by SplitData desc)rank from [dbo].[StringSplit](@supl_values,' '))as tab where tab.rank=1;
	select @net=LTRIM(RTRIM(@split_datas));
	--set @split_data='';
	----select @count=LTRIM(RTRIM(SUBSTRING(@supplementary_info,5,4)));
	----select @count=convert(int,convert(varbinary,'0x'+LTRIM(RTRIM(SUBSTRING(@supplementary_info,5,4)))));

 ----select @count=case LTRIM(RTRIM(SUBSTRING(@supplementary_info,5,4)))
	----when '01' then LTRIM(RTRIM(SUBSTRING(@supplementary_info,5,4)))
	----when '02' then LTRIM(RTRIM(SUBSTRING(@supplementary_info,5,4)))
	--when '03' then LTRIM(RTRIM(SUBSTRING(@supplementary_info,5,4)))
	--when '04' then LTRIM(RTRIM(SUBSTRING(@supplementary_info,5,4)))
	--when '05' then LTRIM(RTRIM(SUBSTRING(@supplementary_info,5,4)))
	--when '06' then LTRIM(RTRIM(SUBSTRING(@supplementary_info,5,4)))
	--when '07' then LTRIM(RTRIM(SUBSTRING(@supplementary_info,5,4)))
	--when '08' then LTRIM(RTRIM(SUBSTRING(@supplementary_info,5,4)))
	--when '09' then LTRIM(RTRIM(SUBSTRING(@supplementary_info,5,4)))
	--else
	----convert(int,convert(VARBINARY,'0x'+LTRIM(RTRIM(SUBSTRING(@supplementary_info,5,4)))),1)
	----select @split_data=SplitData from  (select *,dense_rank() over(order by SplitData desc)rank from [dbo].[StringSplit](@supl_values,' '))as tab where tab.rank=4;
	   --select @count= LTRIM(RTRIM(SUBSTRING(@split_data,5,8)));
	  
	
	--select @net=LTRIM(RTRIM(SUBSTRING(@supplementary_info,18,4)));

	if @net='0C'
	begin
	set @net='NA1'
	end
	else
	begin
	set @net='NA0'
	end

	if (@type='MSS')
	begin	
	--select top 1 @bsc=LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and CGR_SPC like @SUPL_INFO+'%' and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle;
	select top 1 @bsc=bsc_name from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name,CGR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and SUBSTRING(CGR_SPC,0,5) = @nsvci and NE_NAME=@map_Ne and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle) data;
	select top 1 @SPC=CGR_SPC from (select top 1 (case when charindex(' ',CGR_SPC)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(CGR_SPC),0,charindex(' ',REVERSE(CGR_SPC),0))))) else CGR_SPC end) as CGR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and SUBSTRING(CGR_SPC,0,5) = @nsvci and NE_NAME=@map_Ne and CGR_NET=@net and CGR_SPC is not null and ltrim(rtrim(CGR_SPC))<>'' and CIRCLE=@circle) data;
	set @cgr_upart=' '
	select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where CIRCLE=@circle and NE_NAME=@map_Ne AND LINKSET LIKE'%'+@bsc+'%');
	 --select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');
	--select top 1 @bsc=LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) ,@cgr_upart=CGR_UPART from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where ELEMENT_IP=@ip and CGR_SPC like @SUPL_INFO+'%' and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle;
	--set @bsc='Not in DB/'+@SUPL_INFO
	--set @count='0'
	--set @cgr_upart=' '
	if @bsc='' or @bsc=null or @bsc is null or @bsc='null'
	begin
		select @bsc=(case when charindex(' ',link_set)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINK_SET),0,charindex(' ',REVERSE(LINK_SET),0))))) else link_set end),@count=count(distinct ID ) from [AWE_db_VFI_CS_DCM].[dbo]. [association_info] where Circle=@circle and link_set is not null and node=@map_Ne and CAST(IP_LINK AS VARCHAR) =@nsvci group by link_set;

		select @SPC=(case when charindex(' ',SPC)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(SPC),0,charindex(' ',REVERSE(SPC),0))))) else SPC end),@count=count(distinct ID ) from [AWE_db_VFI_CS_DCM].[dbo]. [association_info] where Circle=@circle and SPC is not null and node=@map_Ne and CAST(IP_LINK AS VARCHAR)  =@nsvci group by SPC;

		end

		if @bsc='' or @bsc=null or @bsc is null or @bsc='null'
				begin 
				select top 1 @bsc=bsc_name,@SPC=HLR_SPC from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name,HLR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and SUBSTRING(HLR_SPC,0,5) = @nsvci and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle and NE_NAME=@map_Ne) data;

				select top 1 @SPC=HLR_SPC from (select top 1 (case when charindex(' ',HLR_SPC)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(HLR_SPC),0,charindex(' ',REVERSE(HLR_SPC),0))))) else HLR_SPC end) as HLR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and SUBSTRING(HLR_SPC,0,5) = @nsvci and NE_NAME=@map_Ne and CGR_NET=@net and HLR_SPC is not null and ltrim(rtrim(HLR_SPC))<>'' and CIRCLE=@circle) data;

				select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');
				end

				if @bsc='' or @bsc=null or @bsc is null or @bsc='null'
				begin 
				select top 1 @bsc=bsc_name from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where  SUBSTRING(CGR_SPC,0,5) = @nsvci and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle and NE_NAME=@map_Ne) data;
				
                select top 1 @SPC=CGR_SPC from (select top 1 (case when charindex(' ',CGR_SPC)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(CGR_SPC),0,charindex(' ',REVERSE(CGR_SPC),0))))) else CGR_SPC end) as CGR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where  SUBSTRING(CGR_SPC,0,5) = @nsvci and CGR_NET=@net and CGR_SPC is not null and ltrim(rtrim(CGR_SPC))<>'' and CIRCLE=@circle and NE_NAME=@map_Ne) data;

				select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@map_Ne and SUBSTRING(CGR_SPC,0,5) = @nsvci and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');
				end

				if @bsc='' or @bsc=null or @bsc is null or @bsc='null'
				begin 
				select top 1 @bsc=bsc_name from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where  SUBSTRING(MSS_SPC,0,5) = @nsvci and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle and NE_NAME=@map_Ne) data;
				select top 1 @SPC=MSS_SPC from (select top 1 (case when charindex(' ',MSS_SPC)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(MSS_SPC),0,charindex(' ',REVERSE(MSS_SPC),0))))) else MSS_SPC end) as MSS_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where  SUBSTRING(MSS_SPC,0,5) = @nsvci and CGR_NET=@net and MSS_SPC is not null and ltrim(rtrim(MSS_SPC))<>'' and CIRCLE=@circle and NE_NAME=@map_Ne) data;

				select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@map_Ne and SUBSTRING(MSS_SPC,0,5) = @nsvci and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');
				end


		SELECT @ncgr = (SELECT distinct top 1 NCGR FROM [AWE_db_VFI_CS_DCM].[dbo].[V_Get_SPC_NCGR] WHERE SPC=@SPC and CIRCLE=@circle and NCGR<>'');	
		--select @ncgr = (select distinct top 1 CGR_NUMBER from [AWE_db_VFI_CS_DCM].[dbo]. [association_info] where SPC=@SPC and NODE=@map_Ne);
	if @ncgr=null or @ncgr='' or @ncgr is null or @ncgr='null'
	begin
	 select @linkType='';
	 end
	 else
	 begin
	select @ncgrStartWithB = (SELECT CHARINDEX('B', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithS = (SELECT CHARINDEX('S', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithC = (SELECT CHARINDEX('C', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithX = (SELECT CHARINDEX('X', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithM = (SELECT CHARINDEX('M', LTRIM(RTRIM(@ncgr)), 1));
	if (@ncgrStartWithB = 1)
	begin	
	select @linkType='BSC';
	end
	else if(@ncgrStartWithS=1 or @ncgrStartWithC=1)
	begin
	select @linkType='InterMSC';
	end
	else if(@ncgrStartWithX=1 or @ncgrStartWithM=1)
	begin
	select @linkType='VAS';
	end
	end
	end
	else if (@type='GCS')
	begin	
	--select top 1 @bsc=LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and CGR_SPC like @SUPL_INFO+'%' and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle;
	select top 1 @bsc=bsc_name from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name,CGR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and SUBSTRING(CGR_SPC,0,5) = @nsvci and NE_NAME=@map_Ne and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle) data;
	select top 1 @SPC=CGR_SPC from (select top 1 (case when charindex(' ',CGR_SPC)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(CGR_SPC),0,charindex(' ',REVERSE(CGR_SPC),0))))) else CGR_SPC end) as CGR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and SUBSTRING(CGR_SPC,0,5) = @nsvci and NE_NAME=@map_Ne and CGR_NET=@net and CGR_SPC is not null and ltrim(rtrim(CGR_SPC))<>'' and CIRCLE=@circle) data;
	set @cgr_upart=' '
	select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where CIRCLE=@circle and NE_NAME=@map_Ne AND LINKSET LIKE'%'+@bsc+'%');
	 --select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');
	--select top 1 @bsc=LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) ,@cgr_upart=CGR_UPART from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where ELEMENT_IP=@ip and CGR_SPC like @SUPL_INFO+'%' and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle;
	--set @bsc='Not in DB/'+@SUPL_INFO
	--set @count='0'
	--set @cgr_upart=' '
	if @bsc='' or @bsc=null or @bsc is null or @bsc='null'
	begin
		select @bsc=(case when charindex(' ',link_set)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINK_SET),0,charindex(' ',REVERSE(LINK_SET),0))))) else link_set end),@count=count(distinct ID ) from [AWE_db_VFI_CS_DCM].[dbo]. [association_info] where Circle=@circle and link_set is not null and node=@map_Ne and CAST(IP_LINK AS VARCHAR) =@nsvci group by link_set;

		select @SPC=(case when charindex(' ',SPC)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(SPC),0,charindex(' ',REVERSE(SPC),0))))) else SPC end),@count=count(distinct ID ) from [AWE_db_VFI_CS_DCM].[dbo]. [association_info] where Circle=@circle and SPC is not null and node=@map_Ne and CAST(IP_LINK AS VARCHAR)  =@nsvci group by SPC;

		end

		if @bsc='' or @bsc=null or @bsc is null or @bsc='null'
				begin 
				select top 1 @bsc=bsc_name,@SPC=HLR_SPC from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name,HLR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and SUBSTRING(HLR_SPC,0,5) = @nsvci and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle and NE_NAME=@map_Ne) data;

				select top 1 @SPC=HLR_SPC from (select top 1 (case when charindex(' ',HLR_SPC)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(HLR_SPC),0,charindex(' ',REVERSE(HLR_SPC),0))))) else HLR_SPC end) as HLR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and SUBSTRING(HLR_SPC,0,5) = @nsvci and NE_NAME=@map_Ne and CGR_NET=@net and HLR_SPC is not null and ltrim(rtrim(HLR_SPC))<>'' and CIRCLE=@circle) data;

				select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');
				end

				if @bsc='' or @bsc=null or @bsc is null or @bsc='null'
				begin 
				select top 1 @bsc=bsc_name from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where  SUBSTRING(CGR_SPC,0,5) = @nsvci and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle and NE_NAME=@map_Ne) data;
				
                select top 1 @SPC=CGR_SPC from (select top 1 (case when charindex(' ',CGR_SPC)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(CGR_SPC),0,charindex(' ',REVERSE(CGR_SPC),0))))) else CGR_SPC end) as CGR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where  SUBSTRING(CGR_SPC,0,5) = @nsvci and CGR_NET=@net and CGR_SPC is not null and ltrim(rtrim(CGR_SPC))<>'' and CIRCLE=@circle and NE_NAME=@map_Ne) data;

				select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@map_Ne and SUBSTRING(CGR_SPC,0,5) = @nsvci and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');
				end

				if @bsc='' or @bsc=null or @bsc is null or @bsc='null'
				begin 
				select top 1 @bsc=bsc_name from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where  SUBSTRING(MSS_SPC,0,5) = @nsvci and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle and NE_NAME=@map_Ne) data;
				select top 1 @SPC=MSS_SPC from (select top 1 (case when charindex(' ',MSS_SPC)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(MSS_SPC),0,charindex(' ',REVERSE(MSS_SPC),0))))) else MSS_SPC end) as MSS_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where  SUBSTRING(MSS_SPC,0,5) = @nsvci and CGR_NET=@net and MSS_SPC is not null and ltrim(rtrim(MSS_SPC))<>'' and CIRCLE=@circle and NE_NAME=@map_Ne) data;

				select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@map_Ne and SUBSTRING(MSS_SPC,0,5) = @nsvci and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');
				end

		SELECT @ncgr = (SELECT distinct top 1 NCGR FROM [AWE_db_VFI_CS_DCM].[dbo].[V_Get_SPC_NCGR] WHERE SPC=@SPC and CIRCLE=@circle and NCGR<>'');	
		--select @ncgr = (select distinct top 1 CGR_NUMBER from [AWE_db_VFI_CS_DCM].[dbo]. [association_info] where SPC=@SPC and NODE=@map_Ne);
	if @ncgr=null or @ncgr='' or @ncgr is null or @ncgr='null'
	begin
	 select @linkType='';
	 end
	 else
	 begin
	select @ncgrStartWithB = (SELECT CHARINDEX('B', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithS = (SELECT CHARINDEX('S', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithC = (SELECT CHARINDEX('C', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithX = (SELECT CHARINDEX('X', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithM = (SELECT CHARINDEX('M', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithI = (SELECT CHARINDEX('I', LTRIM(RTRIM(@ncgr)), 1));
	if (@ncgrStartWithB = 1 or @ncgrStartWithI=1)
	begin		
	select @linkType='POI';
	end
	--if (@ncgrStartWithB = 1)
	--begin	
	--select @linkType='BSC';
	--end
	else if(@ncgrStartWithS=1 or @ncgrStartWithC=1)
	begin
	select @linkType='InterMSC';
	end
	else if(@ncgrStartWithX=1 or @ncgrStartWithM=1)
	begin
	select @linkType='VAS';
	end
	end
	end
	else if ( @type='ATCA_MSS')
	begin	
	
	select top 1 @bsc=bsc_name from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name from AWE_db_VFI_CS_DCM.dbo.MSS_Link where NE_NAME=@map_Ne and SUBSTRING(CGR_SPC,0,5) = @nsvci and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle) data;
	set @cgr_upart=' '
		select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');
	end
	else if @type='HLR'
	begin
	--select @map_Ne=ne_name from AWE_db_VFI_CS_DCM.dbo.HLR where ELEMENT_IP=@ip and CIRCLE=@circle;
	--select top 1 @bsc=LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) ,@cgr_upart='IUPS' from AWE_db_VFI_CS_DCM.dbo.HLR where ELEMENT_IP=@ip and CGR_SPC like @SUPL_INFO+'%' and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle;
	select top 1 @bsc=bsc_name,@cgr_upart=CGRUPART from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name ,'IUPS' as CGRUPART from AWE_db_VFI_CS_DCM.dbo.HLR where ELEMENT_IP=@ip and SUBSTRING(CGR_SPC,0,5) = @nsvci and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle) data;
	select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.HLR where  ELEMENT_IP=@ip and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');
	end
	else if (@type='MSC' or @type='GMSC')
	begin
	--select @map_Ne=ne_name from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and CIRCLE=@circle;
	--select top 1 @bsc=LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) ,@cgr_upart=CGR_UPART from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and CGR_SPC like @SUPL_INFO+'%' and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle;
	select top 1 @bsc=bsc_name,@cgr_upart=CGR_UPART from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name ,CGR_UPART from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and SUBSTRING(CGR_SPC,0,5) = @nsvci and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle) data;

	select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSC where  ELEMENT_IP=@ip and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');
	end
	else if ( @type='MGW' )
	begin
	--select top 1 @bsc=LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))),@cgr_upart=CGR_UPART from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where MGW_NAME=@map_Ne and CGR_SPC like @SUPL_INFO+'%' and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle;
	select top 1 @bsc=bsc_name from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name,CGR_UPART,CGR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where MGW_NAME=@map_Ne and SUBSTRING(CGR_SPC,0,5) = @nsvci and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle) data;

	select top 1 @SPC=CGR_SPC from (select top 1 (case when charindex(' ',CGR_SPC)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(CGR_SPC),0,charindex(' ',REVERSE(CGR_SPC),0))))) else CGR_SPC end) as CGR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where MGW_NAME=@map_Ne and SUBSTRING(CGR_SPC,0,5) = @nsvci and CGR_NET=@net and CGR_SPC is not null and ltrim(rtrim(CGR_SPC))<>'' and CIRCLE=@circle) data;

	select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where MGW_NAME=@map_Ne and SUBSTRING(CGR_SPC,0,5) = @nsvci and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');
	 if @bsc='' or @bsc=null or @bsc is null or @bsc='null'
		begin
		select @bsc=(case when charindex(' ',link_set)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINK_SET),0,charindex(' ',			REVERSE	(LINK_SET),0))))) else link_set end) , @count=count(distinct ID ) from [AWE_db_VFI_CS_DCM].[dbo].[association_info] where Circle=@circle and link_set is not null and node=@map_Ne and IP_LINK like'%'+@nsvci+'%' group by link_set;

		select @SPC=(case when charindex(' ',SPC)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(SPC),0,charindex(' ',REVERSE(SPC),0))))) else SPC end),@count=count(distinct ID ) from [AWE_db_VFI_CS_DCM].[dbo]. [association_info] where Circle=@circle and SPC is not null and node=@map_Ne and CAST(IP_LINK AS VARCHAR) =@nsvci group by SPC;
		end
		
		SELECT @ncgr = (SELECT distinct top 1 NCGR FROM [AWE_db_VFI_CS_DCM].[dbo].[V_Get_SPC_NCGR] WHERE SPC=@SPC and CIRCLE=@circle and NCGR<>'');
		--select @ncgr = (select distinct top 1 CGR_NUMBER from [AWE_db_VFI_CS_DCM].[dbo]. [association_info] where SPC=@SPC and NODE=@map_Ne);
	if @ncgr=null or @ncgr='' or @ncgr is null or @ncgr='null'
	begin
	 select @linkType='';
	 end
	 else
	 begin
	select @ncgrStartWithB = (SELECT CHARINDEX('B', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithS = (SELECT CHARINDEX('S', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithC = (SELECT CHARINDEX('C', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithX = (SELECT CHARINDEX('X', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithM = (SELECT CHARINDEX('M', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithI = (SELECT CHARINDEX('I', LTRIM(RTRIM(@ncgr)), 1));
	--if (@ncgrStartWithB = 1 or @ncgrStartWithI=1)
	--begin		
	--select @linkType='POI';
	--end
	if (@ncgrStartWithI = 1)
	begin	
	select @linkType='POI';
	end
	if (@ncgrStartWithB = 1)
	begin	
	select @linkType='BSC';
	end
	else if(@ncgrStartWithS=1 or @ncgrStartWithC=1)
	begin
	select @linkType='InterMSC';
	end
	else if(@ncgrStartWithX=1 or @ncgrStartWithM=1)
	begin
	select @linkType='VAS';
	end
	end

	end
	
	else if (@type='GMGW')
	begin
	--select top 1 @bsc=LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))),@cgr_upart=CGR_UPART from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where MGW_NAME=@map_Ne and CGR_SPC like @SUPL_INFO+'%' and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle;
	select top 1 @bsc=bsc_name,@cgr_upart=CGR_UPART,@SPC=CGR_SPC from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name,CGR_UPART,CGR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where MGW_NAME=@map_Ne and SUBSTRING(CGR_SPC,0,5) = @nsvci and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle) data;
	select top 1 @SPC=CGR_SPC from (select top 1 (case when charindex(' ',CGR_SPC)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(CGR_SPC),0,charindex(' ',REVERSE(CGR_SPC),0))))) else CGR_SPC end) as CGR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where MGW_NAME=@map_Ne and SUBSTRING(CGR_SPC,0,5) = @nsvci and CGR_NET=@net and CGR_SPC is not null and ltrim(rtrim(CGR_SPC))<>'' and CIRCLE=@circle) data;

	select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where MGW_NAME=@map_Ne and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');
	 if @bsc='' or @bsc=null or @bsc is null or @bsc='null'
		begin
		select @bsc=(case when charindex(' ',link_set)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINK_SET),0,charindex(' ',			REVERSE	(LINK_SET),0))))) else link_set end) , @count=count(distinct ID ) from [AWE_db_VFI_CS_DCM].[dbo].[association_info] where Circle=@circle and link_set is not null and node=@map_Ne and IP_LINK like'%'+@nsvci+'%' group by link_set;

		select @SPC=(case when charindex(' ',SPC)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(SPC),0,charindex(' ',REVERSE(SPC),0))))) else SPC end),@count=count(distinct ID ) from [AWE_db_VFI_CS_DCM].[dbo]. [association_info] where Circle=@circle and SPC is not null and node=@map_Ne and CAST(IP_LINK AS VARCHAR) =@nsvci group by SPC;
		end
		
		SELECT @ncgr = (SELECT distinct top 1 NCGR FROM [AWE_db_VFI_CS_DCM].[dbo].[V_Get_SPC_NCGR] WHERE SPC=@SPC and CIRCLE=@circle and NCGR<>'');
		--select @ncgr = (select distinct top 1 CGR_NUMBER from [AWE_db_VFI_CS_DCM].[dbo]. [association_info] where SPC=@SPC and NODE=@map_Ne);
	if @ncgr=null or @ncgr='' or @ncgr is null or @ncgr='null'
	begin
	 select @linkType='';
	 end
	 else
	 begin
	select @ncgrStartWithB = (SELECT CHARINDEX('B', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithS = (SELECT CHARINDEX('S', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithC = (SELECT CHARINDEX('C', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithX = (SELECT CHARINDEX('X', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithM = (SELECT CHARINDEX('M', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithI = (SELECT CHARINDEX('I', LTRIM(RTRIM(@ncgr)), 1));
	if (@ncgrStartWithB = 1 or @ncgrStartWithI=1)
	begin		
	select @linkType='POI';
	end
	--if (@ncgrStartWithB = 1)
	--begin	
	--select @linkType='BSC';
	--end
	else if(@ncgrStartWithS=1 or @ncgrStartWithC=1)
	begin
	select @linkType='InterMSC';
	end
	else if(@ncgrStartWithX=1 or @ncgrStartWithM=1)
	begin
	select @linkType='VAS';
	end
	end

	end

	if exists(select consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec and circle_name=@circle)
	begin
	select @fake=consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec;
	end
	else
	begin
	if @bsc=null or @bsc='' or @bsc is null or @bsc='null'
	-- written column names on insert statement // saurabh
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] (consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity) values(@consec,@CIRCLE,@map_Ne,'Not in DB/'+@nsvci,'0','0','CS',@alarm_time,@cancel_time,'2070','',@nsvci,dateadd(minute,150,getdate()),'');
	else
	begin
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info](consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity) values(@consec,@CIRCLE,@map_Ne,@bsc,@count,@count,'CS',@alarm_time,@cancel_time,'2070',@linkType,@nsvci,dateadd(minute,150,getdate()),'NA');
	end
	end
	
	set @bsc='';
	set @count=0;
	set @map_Ne='';
	set @cgr_upart='';
	--end
	fetch next from mycurl into @consec,@supplementary_info,@ne_name,@alarm_time,@cancel_time,@alarm_num
	
	end
	close mycurl
	deallocate mycurl

	drop table #temp;
	 end try
  
  begin catch
  
  ---rollback tran;
    declare @error int,@message varchar(4000),@xstate int;
    select @error= ERROR_NUMBER(),@MESSAGE=ERROR_MESSAGE(),@xstate=XACT_STATE();
     
     raiserror ('updateCSDCM_2070:%d:%s',16,1,@error,@message);
     return;
  end catch
END

GO
/****** Object:  StoredProcedure [dbo].[updateCSDcm_2072]    Script Date: 04-Apr-19 4:42:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
--exec [dbo].[updateCSDcm_2072] 'ROTN'
CREATE procEDURE [dbo].[updateCSDcm_2072]  
	-- Add the parameters for the stored procedure here
	@circle varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	begin try

	create table #temp
	(
	consec_nbr bigint,
	ne_name varchar(50),
	supplementary_info varchar(100),
	alarm_time datetime,
	cancel_time datetime,
	alarm_num varchar(50)
	)

	if @CIRCLE='AP'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_AP al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp select CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP] where ALARM_NUMBER in ('2072') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='CHENNAI'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_CHENNAI al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI] where ALARM_NUMBER in ('2072') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE) ;
	end
	else if @CIRCLE='MAHARASHTRA'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_MAHARASHTRA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA] where ALARM_NUMBER in ('2072') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='GUJARAT'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_GUJARAT al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT] where ALARM_NUMBER in ('2072') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='KARNATAKA'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_KARNATAKA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA] where ALARM_NUMBER in ('2072') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='KERALA'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_KERALA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA] where ALARM_NUMBER in ('2072') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='RAJASTHAN'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_RAJASTHAN al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN] where ALARM_NUMBER in ('2072') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='ROTN'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_ROTN al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN] where ALARM_NUMBER in ('2072') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='UPE'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_UPE al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE] where ALARM_NUMBER in ('2072') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='UPW'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_UPW al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW] where ALARM_NUMBER in ('2072') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
else if @CIRCLE='ROB'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_ROB al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROB] where ALARM_NUMBER in ('2072') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='HARYANA'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_HARYANA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_HARYANA] where ALARM_NUMBER in ('2072') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	
	
	declare @fake as varchar(50),@net as varchar(20),@type as varchar(20),@SUPL_INFO AS VARCHAR(50),@cgr_upart as varchar(30),@ip as varchar(20)
	declare @consec as bigint,@alarm_num as varchar(50),@supplementary_info as varchar(100),@ne_name as varchar(50),@bsc as varchar(50),@count as int,@down as int,@alarm_time as datetime,@cancel_time as datetime ,@map_Ne as varchar(50),@nsvci as varchar(50),@split_data as varchar(50),@SPC as varchar(50),@ncgr as varchar(50),@ncgrStartWithB as int,@linkType as varchar(50),@ncgrStartWithS as int,@ncgrStartWithM as int,@ncgrStartWithC as int,@ncgrStartWithX as int,@ncgrStartWithI as int,@linkSet as nvarchar(50)
	declare mycurl cursor FAST_FORWARD
	for select consec_nbr,supplementary_info,ne_name,alarm_time,cancel_time,alarm_num from #temp
	open mycurl
	fetch next from mycurl into @consec,@supplementary_info,@ne_name,@alarm_time,@cancel_time,@alarm_num
	while @@FETCH_STATUS=0
	begin
	--set @map_Ne=@ne_name
	select @type =[Node_Type],@ip=LTRIM(RTRIM(NE_IP)),@map_ne=ne_name from [AWE_db_VFI_CS_DCM].dbo.Ne_Master where NE_NetAct_Name=@ne_name and Circle=@circle and Domain='cs';
		 
   declare @supl_values as varchar(100) = RTRIM(Substring(LTRIM(SUBSTRING(@supplementary_info,CHARINDEX('/',@supplementary_info)+1,LEN(@supplementary_info))),1,LEN(LTRIM(SUBSTRING(@supplementary_info,CHARINDEX('/',@supplementary_info)+1,LEN(@supplementary_info))))-1));

   Select top 1 @split_data=SplitData from [dbo].[StringSplit](@supl_values,' ');
   select @supl_info = LTRIM(RTRIM(SUBSTRING(@split_data,1,4)));
  	--Select top 4 @split_data=SplitData from [dbo].[StringSplit](@supl_values,' ');
	select @split_data=SplitData from  (select *,dense_rank() over(order by SplitData desc)rank from [dbo].[StringSplit](@supl_values,' '))as tab where tab.rank=1;
	select @net=LTRIM(RTRIM(@split_data));

	--select @net=LTRIM(RTRIM(SUBSTRING(@supplementary_info,18,4)));
	select @nsvci= convert(bigint,convert(varbinary,'0x'+@supl_info,1));
	--select @count=LTRIM(RTRIM(SUBSTRING(@supplementary_info,5,4)));
	
	if @net='0C'
	begin
	set @net='NA1'
	end
	else
	begin
	set @net='NA0'
	end
	if (@type='MSS')
	begin
	
	select top 1 @bsc= bsc_name,@SPC=CGR_SPC from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name,CGR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and NE_NAME=@map_Ne and LINK =@nsvci and CIRCLE=@circle and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'') data;

	select top 1 @SPC=CGR_SPC from (select top 1 (case when charindex(' ',CGR_SPC)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(CGR_SPC),0,charindex(' ',REVERSE(CGR_SPC),0))))) else CGR_SPC end) as CGR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and NE_NAME=@map_Ne and LINK =@nsvci and CIRCLE=@circle and CGR_NET=@net and CGR_SPC is not null and ltrim(rtrim(CGR_SPC))<>'') data;

	select top 1 @linkSet=LINKSET from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and NE_NAME=@map_Ne and LINK =@nsvci and CIRCLE=@circle and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'';


	 select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and CIRCLE=@circle AND LINKSET LIKE'%'+@linkSet+'%');
	 select @down=(select top 1 COUNT(distinct CGR_SPC) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where NE_NAME=@map_Ne and CGR_SPC=@SPC and CIRCLE=@circle AND LINKSET = @linkSet group by LINKSET);
	
	            if @bsc='' or @bsc=null or @bsc is null or @bsc='null'
	            begin
		select @bsc=(case when charindex(' ',link_set)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINK_SET),0,charindex(' ',REVERSE(LINK_SET),0))))) else link_set end),@count=count(distinct ID ) from [AWE_db_VFI_CS_DCM].[dbo]. [association_info] where Circle=@circle and link_set is not null and node=@map_Ne and CAST(IP_LINK AS VARCHAR) =@nsvci group by link_set;

		select top 1 @linkSet=LINK_SET from [AWE_db_VFI_CS_DCM].[dbo]. [association_info] where Circle=@circle and link_set is not null and node=@map_Ne and CAST(IP_LINK AS VARCHAR) =@nsvci group by link_set;

		select @SPC=(case when charindex(' ',SPC)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(SPC),0,charindex(' ',REVERSE(SPC),0))))) else SPC end) from [AWE_db_VFI_CS_DCM].[dbo]. [association_info] where Circle=@circle and SPC is not null and node=@map_Ne and CAST(IP_LINK AS VARCHAR) =@nsvci group by SPC;
		select @down=(select top 1 COUNT(distinct SPC) from AWE_db_VFI_CS_DCM.dbo.association_info where NODE=@map_Ne and SPC=@SPC and CIRCLE=@circle AND link_set LIKE'%'+@linkSet+'%' group by link_set);
		end
		
		        if @bsc='' or @bsc=null or @bsc is null or @bsc='null'
				begin 
				select top 1 @bsc=bsc_name,@SPC=HLR_SPC from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name,HLR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and LINK =@nsvci and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle and NE_NAME=@map_Ne) data;

				select top 1 @SPC=HLR_SPC from (select top 1 (case when charindex(' ',HLR_SPC)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(HLR_SPC),0,charindex(' ',REVERSE(HLR_SPC),0))))) else HLR_SPC end) as HLR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and NE_NAME=@map_Ne and LINK =@nsvci and CIRCLE=@circle and CGR_NET=@net and HLR_SPC is not null and ltrim(rtrim(HLR_SPC))<>'') data;

				select top 1 @linkSet=LINKSET from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and NE_NAME=@map_Ne and LINK =@nsvci and CIRCLE=@circle and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'';

				select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and CIRCLE=@circle AND LINKSET LIKE'%'+@linkSet+'%');
				select @down=(select top 1 COUNT(distinct HLR_SPC) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where NE_NAME=@map_Ne and HLR_SPC=@SPC and CIRCLE=@circle AND LINKSET = @linkSet group by LINKSET);
				end

				if @bsc='' or @bsc=null or @bsc is null or @bsc='null'
				begin 
				select top 1 @bsc=bsc_name from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where LINK = @nsvci and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle and NE_NAME=@map_Ne) data;

				select top 1 @SPC=CGR_SPC from (select top 1 (case when charindex(' ',CGR_SPC)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(CGR_SPC),0,charindex(' ',REVERSE(CGR_SPC),0))))) else CGR_SPC end) as CGR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where MGW_NAME=@map_Ne and LINK =@nsvci and CIRCLE=@circle and CGR_SPC is not null  and ltrim(rtrim(CGR_SPC))<>'') data;

				select top 1 @linkSet = LINKSET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where LINK = @nsvci and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle and NE_NAME=@map_Ne;

				select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@map_Ne and CIRCLE=@circle AND LINKSET LIKE'%'+@linkSet+'%');
				select @down=(select top 1 COUNT(distinct CGR_SPC) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@map_Ne and CGR_SPC=@SPC and CIRCLE=@circle AND LINKSET = @linkSet group by LINKSET);

				end

				if @bsc='' or @bsc=null or @bsc is null or @bsc='null'
				begin 
				select top 1 @bsc=bsc_name from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where LINK = @nsvci and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle and NE_NAME=@map_Ne) data;

				select top 1 @SPC=MSS_SPC from (select top 1 (case when charindex(' ',MSS_SPC)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(MSS_SPC),0,charindex(' ',REVERSE(MSS_SPC),0))))) else MSS_SPC end) as MSS_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where MGW_NAME=@map_Ne and LINK =@nsvci and CIRCLE=@circle and MSS_SPC is not null  and ltrim(rtrim(MSS_SPC))<>'') data;

				select top 1 @linkSet = LINKSET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where LINK = @nsvci and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle and NE_NAME=@map_Ne;

				select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@map_Ne and CIRCLE=@circle AND LINKSET LIKE'%'+@linkSet+'%');
				select @down=(select top 1 COUNT(distinct MSS_SPC) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@map_Ne and MSS_SPC=@SPC and CIRCLE=@circle AND LINKSET = @linkSet group by LINKSET);
				end	

		--SELECT @ncgr = (SELECT distinct top 1 NCGR FROM [AWE_db_VFI_CS_DCM].[dbo].[V_Get_SPC_NCGR] WHERE SPC=@SPC and NCGR<>'');
		SELECT @ncgr = (SELECT distinct top 1 NCGR FROM [AWE_db_VFI_CS_DCM].[dbo].[V_Get_SPC_NCGR] WHERE SPC=@SPC and CIRCLE=@circle and (NCGR like'I%' or NCGR like'B%' or NCGR like'S%' or NCGR like'C%' or NCGR like'X%' or NCGR like'M%') and NCGR<>'');
	if @ncgr=null or @ncgr='' or @ncgr is null or @ncgr='null'
	begin
	 select @linkType='';
	 end
	 else
	 begin
	select @ncgrStartWithB = (SELECT CHARINDEX('B', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithS = (SELECT CHARINDEX('S', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithC = (SELECT CHARINDEX('C', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithX = (SELECT CHARINDEX('X', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithM = (SELECT CHARINDEX('M', LTRIM(RTRIM(@ncgr)), 1));	
	if (@ncgrStartWithB = 1)
	begin	
	select @linkType='BSC';
	end
	else if(@ncgrStartWithS=1 or @ncgrStartWithC=1)
	begin
	select @linkType='InterMSC';
	end
	else if(@ncgrStartWithX=1 or @ncgrStartWithM=1)
	begin
	select @linkType='VAS';
	end
	end		
	end
	else if(@type='GCS')
	begin
		select top 1 @bsc= bsc_name,@SPC=CGR_SPC from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name,CGR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and NE_NAME=@map_Ne and LINK =@nsvci and CIRCLE=@circle and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'') data;

	select top 1 @SPC=CGR_SPC from (select top 1 (case when charindex(' ',CGR_SPC)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(CGR_SPC),0,charindex(' ',REVERSE(CGR_SPC),0))))) else CGR_SPC end) as CGR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and NE_NAME=@map_Ne and LINK =@nsvci and CIRCLE=@circle and CGR_NET=@net and CGR_SPC is not null and ltrim(rtrim(CGR_SPC))<>'') data;

	select top 1 @linkSet=LINKSET from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and NE_NAME=@map_Ne and LINK =@nsvci and CIRCLE=@circle and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'';


	 select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and CIRCLE=@circle AND LINKSET LIKE'%'+@linkSet+'%');
	 select @down=(select top 1 COUNT(distinct CGR_SPC) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where NE_NAME=@map_Ne and CGR_SPC=@SPC and CIRCLE=@circle AND LINKSET = @linkSet group by LINKSET);
	
	            if @bsc='' or @bsc=null or @bsc is null or @bsc='null'
	            begin
		select @bsc=(case when charindex(' ',link_set)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINK_SET),0,charindex(' ',REVERSE(LINK_SET),0))))) else link_set end),@count=count(distinct ID ) from [AWE_db_VFI_CS_DCM].[dbo]. [association_info] where Circle=@circle and link_set is not null and node=@map_Ne and CAST(IP_LINK AS VARCHAR) =@nsvci group by link_set;

		select top 1 @linkSet=LINK_SET from [AWE_db_VFI_CS_DCM].[dbo]. [association_info] where Circle=@circle and link_set is not null and node=@map_Ne and CAST(IP_LINK AS VARCHAR) =@nsvci group by link_set;

		select @SPC=(case when charindex(' ',SPC)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(SPC),0,charindex(' ',REVERSE(SPC),0))))) else SPC end) from [AWE_db_VFI_CS_DCM].[dbo]. [association_info] where Circle=@circle and SPC is not null and node=@map_Ne and CAST(IP_LINK AS VARCHAR) =@nsvci group by SPC;
		select @down=(select top 1 COUNT(distinct SPC) from AWE_db_VFI_CS_DCM.dbo.association_info where NODE=@map_Ne and SPC=@SPC and CIRCLE=@circle AND link_set LIKE'%'+@linkSet+'%' group by link_set);
		end
		
		        if @bsc='' or @bsc=null or @bsc is null or @bsc='null'
				begin 
				select top 1 @bsc=bsc_name,@SPC=HLR_SPC from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name,HLR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and LINK =@nsvci and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle and NE_NAME=@map_Ne) data;

				select top 1 @SPC=HLR_SPC from (select top 1 (case when charindex(' ',HLR_SPC)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(HLR_SPC),0,charindex(' ',REVERSE(HLR_SPC),0))))) else HLR_SPC end) as HLR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and NE_NAME=@map_Ne and LINK =@nsvci and CIRCLE=@circle and CGR_NET=@net and HLR_SPC is not null and ltrim(rtrim(HLR_SPC))<>'') data;

				select top 1 @linkSet=LINKSET from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and NE_NAME=@map_Ne and LINK =@nsvci and CIRCLE=@circle and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'';

				select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and CIRCLE=@circle AND LINKSET LIKE'%'+@linkSet+'%');
				select @down=(select top 1 COUNT(distinct HLR_SPC) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where NE_NAME=@map_Ne and HLR_SPC=@SPC and CIRCLE=@circle AND LINKSET = @linkSet group by LINKSET);
				end

				if @bsc='' or @bsc=null or @bsc is null or @bsc='null'
				begin 
				select top 1 @bsc=bsc_name from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where LINK = @nsvci and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle and NE_NAME=@map_Ne) data;

				select top 1 @SPC=CGR_SPC from (select top 1 (case when charindex(' ',CGR_SPC)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(CGR_SPC),0,charindex(' ',REVERSE(CGR_SPC),0))))) else CGR_SPC end) as CGR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where MGW_NAME=@map_Ne and LINK =@nsvci and CIRCLE=@circle and CGR_SPC is not null  and ltrim(rtrim(CGR_SPC))<>'') data;

				select top 1 @linkSet = LINKSET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where LINK = @nsvci and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle and NE_NAME=@map_Ne;

				select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@map_Ne and CIRCLE=@circle AND LINKSET LIKE'%'+@linkSet+'%');
				select @down=(select top 1 COUNT(distinct CGR_SPC) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@map_Ne and CGR_SPC=@SPC and CIRCLE=@circle AND LINKSET = @linkSet group by LINKSET);

				end

				if @bsc='' or @bsc=null or @bsc is null or @bsc='null'
				begin 
				select top 1 @bsc=bsc_name from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where LINK = @nsvci and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle and NE_NAME=@map_Ne) data;

				select top 1 @SPC=MSS_SPC from (select top 1 (case when charindex(' ',MSS_SPC)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(MSS_SPC),0,charindex(' ',REVERSE(MSS_SPC),0))))) else MSS_SPC end) as MSS_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where MGW_NAME=@map_Ne and LINK =@nsvci and CIRCLE=@circle and MSS_SPC is not null  and ltrim(rtrim(MSS_SPC))<>'') data;

				select top 1 @linkSet = LINKSET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where LINK = @nsvci and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle and NE_NAME=@map_Ne;

				select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@map_Ne and CIRCLE=@circle AND LINKSET LIKE'%'+@linkSet+'%');
				select @down=(select top 1 COUNT(distinct MSS_SPC) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@map_Ne and MSS_SPC=@SPC and CIRCLE=@circle AND LINKSET = @linkSet group by LINKSET);
				end	
	
		--select @ncgr = (select distinct top 1 CGR_NUMBER from [AWE_db_VFI_CS_DCM].[dbo]. [association_info] where SPC=@SPC and NODE=@map_Ne);
		--SELECT @ncgr = (SELECT distinct top 1 NCGR FROM [AWE_db_VFI_CS_DCM].[dbo].[V_Get_SPC_NCGR] WHERE SPC=@SPC and NCGR<>'');
		SELECT @ncgr = (SELECT distinct top 1 NCGR FROM [AWE_db_VFI_CS_DCM].[dbo].[V_Get_SPC_NCGR] WHERE SPC=@SPC and CIRCLE=@circle and (NCGR like'I%' or NCGR like'B%' or NCGR like'S%' or NCGR like'C%' or NCGR like'X%' or NCGR like'M%') and NCGR<>'');
	if @ncgr=null or @ncgr='' or @ncgr is null or @ncgr='null'
	begin
	 select @linkType='';
	 end
	 else
	 begin
	select @ncgrStartWithB = (SELECT CHARINDEX('B', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithS = (SELECT CHARINDEX('S', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithC = (SELECT CHARINDEX('C', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithX = (SELECT CHARINDEX('X', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithM = (SELECT CHARINDEX('M', LTRIM(RTRIM(@ncgr)), 1));
    select @ncgrStartWithI = (SELECT CHARINDEX('I', LTRIM(RTRIM(@ncgr)), 1));
	if (@ncgrStartWithB = 1 or @ncgrStartWithI=1)
	begin	
	select @linkType='POI';
	end
	else if(@ncgrStartWithS=1 or @ncgrStartWithC=1)
	begin
	select @linkType='InterMSC';
	end
	else if(@ncgrStartWithX=1 or @ncgrStartWithM=1)
	begin
	select @linkType='VAS';
	end
	end			
	end
	else if (@type='ATCA_MSS')
	begin	
	select top 1 @bsc= bsc_name from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name from AWE_db_VFI_CS_DCM.dbo.MSS_Link where NE_NAME=@map_Ne and LINK =@nsvci and CIRCLE=@circle and LINKSET is not null and ltrim(rtrim(LINKSET))<>'') data;
	select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where NE_NAME=@map_Ne and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');
	set @cgr_upart=' '
	if @bsc='' or @bsc=null or @bsc is null or @bsc='null'

		select @bsc=(case when charindex(' ',link_set)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINK_SET),0,charindex(' ',			REVERSE	(LINK_SET),0))))) else link_set end) , @count=count(distinct ID ) from [AWE_db_VFI_CS_DCM].[dbo]. [association_info] where Circle=@circle and link_set is not null and node=@map_Ne and CAST(IP_LINK AS VARCHAR) =@nsvci group by link_set;		
	end
	else if ( @type='MGW' )
	begin	
	select top 1 @bsc= bsc_name from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where MGW_NAME=@map_Ne and LINK =@nsvci and CIRCLE=@circle and LINKSET is not null and ltrim(rtrim(LINKSET))<>'') data;

	select top 1 @SPC=CGR_SPC from (select top 1 (case when charindex(' ',CGR_SPC)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(CGR_SPC),0,charindex(' ',REVERSE(CGR_SPC),0))))) else CGR_SPC end) as CGR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where MGW_NAME=@map_Ne and LINK =@nsvci and CIRCLE=@circle and CGR_SPC is not null  and ltrim(rtrim(CGR_SPC))<>'') data;
	
    select top 1  @linkSet = LINKSET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where MGW_NAME=@map_Ne and LINK =@nsvci and CIRCLE=@circle and LINKSET is not null and ltrim(rtrim(LINKSET))<>'';

	select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where MGW_NAME=@map_Ne and CIRCLE=@circle AND LINKSET LIKE'%'+@linkSet+'%');
	select @down=(select top 1 COUNT(distinct CGR_SPC) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where MGW_NAME=@map_Ne and CGR_SPC=@SPC and CIRCLE=@circle AND LINKSET = @linkSet group by LINKSET);	

        if @bsc='' or @bsc=null or @bsc is null or @bsc='null'
		begin
		select @bsc=(case when charindex(' ',link_set)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINK_SET),0,charindex(' ',			REVERSE	(LINK_SET),0))))) else link_set end) , @count=count(distinct ID ) from [AWE_db_VFI_CS_DCM].[dbo].[association_info] where Circle=@circle and link_set is not null and node=@map_Ne and IP_LINK like'%'+@nsvci+'%' group by link_set;
		select top 1 @linkSet=LINK_SET from AWE_db_VFI_CS_DCM.dbo.association_info  where Circle=@circle and link_set is not null and node=@map_Ne and IP_LINK like'%'+@nsvci+'%' group by link_set;
		select @SPC=(case when charindex(' ',SPC)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(SPC),0,charindex(' ',REVERSE(SPC),0))))) else SPC end) from [AWE_db_VFI_CS_DCM].[dbo]. [association_info] where Circle=@circle and SPC is not null and node=@map_Ne and CAST(IP_LINK AS VARCHAR) =@nsvci group by SPC;
		select @down=(select top 1 COUNT(distinct SPC) from AWE_db_VFI_CS_DCM.dbo.association_info where NODE=@map_Ne and SPC=@SPC and CIRCLE=@circle AND LINK_SET LIKE'%'+@linkSet+'%' group by LINK_SET);
		end
		--SELECT @ncgr = (SELECT distinct top 1 NCGR FROM [AWE_db_VFI_CS_DCM].[dbo].[V_Get_SPC_NCGR] WHERE SPC=@SPC and NCGR<>'');
SELECT @ncgr = (SELECT distinct top 1 NCGR FROM [AWE_db_VFI_CS_DCM].[dbo].[V_Get_SPC_NCGR] WHERE SPC=@SPC and CIRCLE=@circle and (NCGR like'I%' or NCGR like'B%' or NCGR like'S%' or NCGR like'C%' or NCGR like'X%' or NCGR like'M%') and NCGR<>'');
	if @ncgr=null or @ncgr='' or @ncgr is null or @ncgr='null'
	begin
	 select @linkType='';
	 end
	 else
	 begin
	select @ncgrStartWithB = (SELECT CHARINDEX('B', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithS = (SELECT CHARINDEX('S', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithC = (SELECT CHARINDEX('C', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithX = (SELECT CHARINDEX('X', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithM = (SELECT CHARINDEX('M', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithI = (SELECT CHARINDEX('I', LTRIM(RTRIM(@ncgr)), 1));
	--if (@ncgrStartWithB = 1 or @ncgrStartWithI=1)
	--begin		
	--select @linkType='POI';
	--end	
	if (@ncgrStartWithI = 1)
	begin	
	select @linkType='POI';
	end
	else if (@ncgrStartWithB = 1)
	begin	
	select @linkType='BSC';
	end
	else if(@ncgrStartWithS=1 or @ncgrStartWithC=1)
	begin
	select @linkType='InterMSC';
	end
	else if(@ncgrStartWithX=1 or @ncgrStartWithM=1)
	begin
	select @linkType='VAS';
	end
	end	
	end
	else if (@type='GMGW')
	begin	
	select top 1 @bsc= bsc_name from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where MGW_NAME=@map_Ne and LINK =@nsvci and CIRCLE=@circle and LINKSET is not null and ltrim(rtrim(LINKSET))<>'') data;

	select top 1 @SPC=CGR_SPC from (select top 1 (case when charindex(' ',CGR_SPC)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(CGR_SPC),0,charindex(' ',REVERSE(CGR_SPC),0))))) else CGR_SPC end) as CGR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where MGW_NAME=@map_Ne and LINK =@nsvci and CIRCLE=@circle and CGR_SPC is not null  and ltrim(rtrim(CGR_SPC))<>'') data;
	
    select top 1 @linkSet=LINKSET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where MGW_NAME=@map_Ne and LINK =@nsvci and CIRCLE=@circle and LINKSET is not null and ltrim(rtrim(LINKSET))<>'';

	select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where MGW_NAME=@map_Ne and CIRCLE=@circle AND LINKSET LIKE'%'+@linkSet+'%');
	select @down=(select top 1 COUNT(distinct CGR_SPC) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where MGW_NAME=@map_Ne and CGR_SPC=@SPC and CIRCLE=@circle AND LINKSET = @linkSet group by LINKSET);	

        if @bsc='' or @bsc=null or @bsc is null or @bsc='null'
		begin
		select @bsc=(case when charindex(' ',link_set)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINK_SET),0,charindex(' ',			REVERSE	(LINK_SET),0))))) else link_set end) , @count=count(distinct ID ) from [AWE_db_VFI_CS_DCM].[dbo].[association_info] where Circle=@circle and link_set is not null and node=@map_Ne and IP_LINK like'%'+@nsvci+'%' group by link_set;
		select top 1 @linkSet=LINK_SET from AWE_db_VFI_CS_DCM.dbo.association_info  where Circle=@circle and link_set is not null and node=@map_Ne and IP_LINK like'%'+@nsvci+'%' group by link_set;
		select @SPC=(case when charindex(' ',SPC)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(SPC),0,charindex(' ',REVERSE(SPC),0))))) else SPC end) from [AWE_db_VFI_CS_DCM].[dbo]. [association_info] where Circle=@circle and SPC is not null and node=@map_Ne and CAST(IP_LINK AS VARCHAR) =@nsvci group by SPC;
		select @down=(select top 1 COUNT(distinct SPC) from AWE_db_VFI_CS_DCM.dbo.association_info where NODE=@map_Ne and SPC=@SPC and CIRCLE=@circle AND LINK_SET LIKE'%'+@linkSet+'%' group by LINK_SET);
		end
		SELECT @ncgr = (SELECT distinct top 1 NCGR FROM [AWE_db_VFI_CS_DCM].[dbo].[V_Get_SPC_NCGR] WHERE SPC=@SPC and CIRCLE=@circle and (NCGR like'I%' or NCGR like'B%' or NCGR like'S%' or NCGR like'C%' or NCGR like'X%' or NCGR like'M%') and NCGR<>'');
		--SELECT @ncgr = (SELECT distinct top 1 NCGR FROM [AWE_db_VFI_CS_DCM].[dbo].[V_Get_SPC_NCGR] WHERE SPC=@SPC and NCGR<>'');
		--select @ncgr = (select distinct top 1 CGR_NUMBER from [AWE_db_VFI_CS_DCM].[dbo]. [association_info] where SPC=@SPC and NODE=@map_Ne);
	if @ncgr=null or @ncgr='' or @ncgr is null or @ncgr='null'
	begin
	 select @linkType='';
	 end
	 else
	 begin
	select @ncgrStartWithB = (SELECT CHARINDEX('B', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithS = (SELECT CHARINDEX('S', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithC = (SELECT CHARINDEX('C', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithX = (SELECT CHARINDEX('X', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithM = (SELECT CHARINDEX('M', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithI = (SELECT CHARINDEX('I', LTRIM(RTRIM(@ncgr)), 1));
	if (@ncgrStartWithB = 1 or @ncgrStartWithI=1)
	begin		
	select @linkType='POI';
	end
	--if (@ncgrStartWithB = 1)
	--begin	
	--select @linkType='BSC';
	--end
	else if(@ncgrStartWithS=1 or @ncgrStartWithC=1)
	begin
	select @linkType='InterMSC';
	end
	else if(@ncgrStartWithX=1 or @ncgrStartWithM=1)
	begin
	select @linkType='VAS';
	end
	end	
	end
	else if ( @type='MSC' or @type='GMSC')
	begin	
	select top 1 @bsc=bsc_name,@cgr_upart=CGR_UPART from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name,CGR_UPART from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and LINK =@nsvci and CIRCLE=@circle and LINKSET is not null and ltrim(rtrim(LINKSET))<>'') data;
	select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSC where  ELEMENT_IP=@ip and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');
	end
	else if @type='HLR'
	begin	
	select top 1 @bsc=bsc_name,@cgr_upart=CGRUPART from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name,'ISUP' as CGRUPART from AWE_db_VFI_CS_DCM.dbo.HLR where ELEMENT_IP=@ip and LINK =@nsvci and CIRCLE=@circle and LINKSET is not null and ltrim(rtrim(LINKSET))<>'') data;
	select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.HLR where  ELEMENT_IP=@ip and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');
	end
	if exists(select consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec and circle_name=@circle)
	begin
	select @fake=consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec;
	end
	else
	begin
	if (@bsc='' or @bsc=null or @bsc is null or @bsc='null')
	   begin
	       if(Not Exists(Select * from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] Where Consec_nbr=@consec))
	         begin
	         -- written column names on insert statement // saurabh
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] (consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity) values(@consec,@CIRCLE,@map_Ne,'Not in DB/'+@nsvci,'0','0','CS',@alarm_time,@cancel_time,'2072','',@nsvci,dateadd(minute,150,getdate()),'');
             end	
       end	
	else
	begin
	 if(Not Exists(Select * from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] Where Consec_nbr=@consec))
	         begin
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] (consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity) values(@consec,@CIRCLE,@map_Ne,@bsc,ISNULL(@count,'0'),ISNULL(@down,'0'),'CS',@alarm_time,@cancel_time,'2072',@linkType,@nsvci,dateadd(minute,150,getdate()),'NA');
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set down=(select count(down) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where bsc_name=@bsc and ne_name=@map_Ne and circle_name=@circle and cancel_time is null AND alarm_number='2072'), UpdateTimestamp=dateadd(minute,150,getdate()),Alternate_Availablity='NA' where bsc_name=@bsc and ne_name=@map_Ne AND alarm_number='2072' ;
             end	
	end
	end
    --set @map_Ne='';
	set @ip='';
	set @bsc='';
	SET @count='0';
	set @nsvci='';
	set @cgr_upart='';
	
	--end
	fetch next from mycurl into @consec,@supplementary_info,@ne_name,@alarm_time,@cancel_time,@alarm_num
	end
	close mycurl
	deallocate mycurl

	drop table #temp;
	 end try
  
  begin catch
  
  ---rollback tran;
    declare @error int,@message varchar(4000),@xstate int;
    select @error= ERROR_NUMBER(),@MESSAGE=ERROR_MESSAGE(),@xstate=XACT_STATE();
     
     raiserror ('updatecsdcm_2072:%d:%s',16,1,@error,@message);
     return;
  end catch
END

GO
/****** Object:  StoredProcedure [dbo].[updateCSDcm_2087]    Script Date: 04-Apr-19 4:42:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
--exec [dbo].[updateCSDcm_2087] 'ROTN'
CREATE procEDURE [dbo].[updateCSDcm_2087] 
	-- Add the parameters for the stored procedure here
	@circle varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	begin try

	create table #temp
	(
	consec_nbr bigint,
	ne_name varchar(50),
	supplementary_info varchar(100),
	alarm_time datetime,
	cancel_time datetime,
	alarm_num varchar(50)
	)

	if @CIRCLE='AP'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_AP al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp select CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP] where ALARM_NUMBER in ('2087') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='CHENNAI'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_CHENNAI al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI] where ALARM_NUMBER in ('2087') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE) ;
	end
	else if @CIRCLE='MAHARASHTRA'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_MAHARASHTRA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA] where ALARM_NUMBER in ('2087') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='GUJARAT'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_GUJARAT al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT] where ALARM_NUMBER in ('2087') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='KARNATAKA'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_KARNATAKA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA] where ALARM_NUMBER in ('2087') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='KERALA'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_KERALA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA] where ALARM_NUMBER in ('2087') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='RAJASTHAN'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_RAJASTHAN al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN] where ALARM_NUMBER in ('2087') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='ROTN'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_ROTN al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN] where ALARM_NUMBER in ('2087') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='UPE'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_UPE al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE] where ALARM_NUMBER in ('2087') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='UPW'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_UPW al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW] where ALARM_NUMBER in ('2087') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='ROB'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_ROB al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROB] where ALARM_NUMBER in ('2087') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='HARYANA'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_HARYANA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_HARYANA] where ALARM_NUMBER in ('2087') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end

	declare @fake as varchar(50),@type as varchar(20),@SUPL_INFO AS VARCHAR(50),@cgr_upart as varchar(30),@ip as varchar(20)
	declare @consec as bigint,@alarm_num as varchar(50),@supplementary_info as varchar(100),@ne_name as varchar(50),@bsc as varchar(50),@count as int,@alarm_time as datetime,@cancel_time as datetime ,@map_Ne as varchar(50),@nsvci as varchar(50),@split_data as varchar(50)
	declare @et_count as bigint,@ncgr as varchar(50),@mgw as varchar(50),@CountE as bigint,@linkset varchar(50), @nbcrct varchar(50),@spc varchar(50),@ncgrStartWithB as int,@linkType as varchar(50),@ncgrStartWithS as int,@ncgrStartWithM as int,@ncgrStartWithC as int,@ncgrStartWithX as int,@ncgrStartWithI as int


	declare mycurl cursor
	for select consec_nbr,supplementary_info,ne_name,alarm_time,cancel_time,alarm_num from #temp
	open mycurl
	fetch next from mycurl into @consec,@supplementary_info,@ne_name,@alarm_time,@cancel_time,@alarm_num
	while @@FETCH_STATUS=0
	begin
	set @map_Ne=@ne_name;
	select @type =[Node_Type] from [AWE_db_VFI_CS_DCM].dbo.Ne_Master where NE_NetAct_Name=@ne_name and Circle=@circle and Domain='cs';
	select @ip = LTRIM(RTRIM(NE_IP)) from [AWE_db_VFI_CS_DCM].dbo.Ne_Master where NE_NetAct_Name=@ne_name and Circle=@circle and Domain='cs';
   declare @supl_values as varchar(100) = RTRIM(Substring(LTRIM(SUBSTRING(@supplementary_info,CHARINDEX('/',@supplementary_info)+1,LEN(@supplementary_info))),1,LEN(LTRIM(SUBSTRING(@supplementary_info,CHARINDEX('/',@supplementary_info)+1,LEN(@supplementary_info))))-1));
    --Select top 2 @split_data=SplitData from [dbo].[StringSplit](@supl_values,' ');
	 select @split_data=SplitData from  (select *,dense_rank() over(order by SplitData desc)rank from [dbo].[StringSplit](@supl_values,' '))as tab where tab.rank=1;
   select @supl_info = LTRIM(RTRIM(SUBSTRING(@split_data,1,4)));
	--select @supl_info = LTRIM(RTRIM(SUBSTRING(@supplementary_info,3,5)));
	--select @supl_info = LTRIM(RTRIM(SUBSTRING(@supplementary_info,6,4)));
	select @nsvci= convert(int,convert(varbinary,'0x'+@supl_info,1));
	-- if @nsvci like'%d'
	-- begin
	-- select @nsvci=LTRIM(RTRIM(SUBSTRING(@supplementary_info,0,4)));
	-- end

	--MSS
	if (@type='MSS')
	begin
	--set @CountE=0;
	--select top 1 @bsc=LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and LINK like'%'+@supl_info+'%' and CIRCLE=@circle and LINKSET is not null and ltrim(rtrim(LINKSET))<>'';
	--select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');

	--select @et_count=(select COUNT(distinct ET) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	--set @et_count=@et_count*31;
	--select @ncgr=(select distinct NCGR from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where ELEMENT_IP=@ip and CIRCLE=@circle AND CGR =@supl_info);
	select @ncgr=(select distinct top 1 NCGR from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@nsvci and ELEMENT_IP LIKE '%'+@ip+'%' and NE_NAME=@map_Ne);
	select @mgw=(select distinct top 1 VMGW from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@nsvci and ELEMENT_IP LIKE '%'+@ip+'%' and NE_NAME=@map_Ne);
	select @nbcrct=(select distinct top 1 NBCRCT from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@nsvci and ELEMENT_IP LIKE '%'+@ip+'%' and NE_NAME=@map_Ne);
	select @spc=(select distinct top 1 CGR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@nsvci and ELEMENT_IP LIKE '%'+@ip+'%' and NE_NAME=@map_Ne);
	select @bsc=(select distinct top 1 LINKSET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@nsvci and ELEMENT_IP LIKE '%'+@ip+'%' and NE_NAME=@map_Ne);
	 
	 if @ncgr=null or @ncgr='' or @ncgr is null or @ncgr='null'
	 begin
	 select @linkType='';
	 end
	 else
	 begin
	select @ncgrStartWithB = (SELECT CHARINDEX('B', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithS = (SELECT CHARINDEX('S', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithC = (SELECT CHARINDEX('C', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithX = (SELECT CHARINDEX('X', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithM = (SELECT CHARINDEX('M', LTRIM(RTRIM(@ncgr)), 1));
	if (@ncgrStartWithB = 1)
	begin
	select @linkType='BSC';
	end
	else if(@ncgrStartWithS=1 or @ncgrStartWithC=1)
	begin
	select @linkType='InterMSC';
	end
	else if(@ncgrStartWithX=1 or @ncgrStartWithM=1)
	begin
	select @linkType='VAS';
	end
	end
	end

	--GCS
    if (@type='GCS')
	begin
	--set @CountE=0;
	--select top 1 @bsc=LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and LINK like'%'+@supl_info+'%' and CIRCLE=@circle and LINKSET is not null and ltrim(rtrim(LINKSET))<>'';
	--select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');

	--select @et_count=(select COUNT(distinct ET) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	--set @et_count=@et_count*31;
	--select @ncgr=(select distinct NCGR from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where ELEMENT_IP=@ip and CIRCLE=@circle AND CGR =@supl_info);
	select @ncgr=(select distinct top 1 NCGR from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@nsvci and ELEMENT_IP LIKE '%'+@ip+'%' and NE_NAME=@map_Ne);
	select @mgw=(select distinct top 1 VMGW from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@nsvci and ELEMENT_IP LIKE '%'+@ip+'%' and NE_NAME=@map_Ne);
	select @nbcrct=(select distinct top 1 NBCRCT from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@nsvci and ELEMENT_IP LIKE '%'+@ip+'%' and NE_NAME=@map_Ne);
	select @spc=(select distinct top 1 CGR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@nsvci and ELEMENT_IP LIKE '%'+@ip+'%' and NE_NAME=@map_Ne);
	select @bsc=(select distinct top 1 LINKSET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@nsvci and ELEMENT_IP LIKE '%'+@ip+'%' and NE_NAME=@map_Ne);
	 
	 if @ncgr=null or @ncgr='' or @ncgr is null or @ncgr='null'
	 begin
	 select @linkType='';
	 end
	 else
	 begin
	select @ncgrStartWithB = (SELECT CHARINDEX('B', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithS = (SELECT CHARINDEX('S', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithC = (SELECT CHARINDEX('C', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithX = (SELECT CHARINDEX('X', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithM = (SELECT CHARINDEX('M', LTRIM(RTRIM(@ncgr)), 1));
	select @ncgrStartWithI = (SELECT CHARINDEX('I', LTRIM(RTRIM(@ncgr)), 1));
	if (@ncgrStartWithB = 1 or @ncgrStartWithI=1)
	begin
	select @linkType='POI';
	end
	else if(@ncgrStartWithS=1 or @ncgrStartWithC=1)
	begin
	select @linkType='InterMSC';
	end
	else if(@ncgrStartWithX=1 or @ncgrStartWithM=1)
	begin
	select @linkType='VAS';
	end
	end
	end

	--MGW
	if (@type='MGW' or @type='GMGW')
	begin
	--set @CountE=0;
	--select top 1 @bsc=LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and LINK like'%'+@supl_info+'%' and CIRCLE=@circle and LINKSET is not null and ltrim(rtrim(LINKSET))<>'';
	--select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');

	--select @et_count=(select COUNT(distinct ET) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	--set @et_count=@et_count*31;
	--select @ncgr=(select distinct NCGR from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where ELEMENT_IP=@ip and CIRCLE=@circle AND CGR =@supl_info);

	select @ncgr=(select distinct top 1 MGW_NCGR from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND MGW_CGR =@nsvci and MGW_NAME=@map_Ne);
	select @mgw=(select distinct top 1 VMGW from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND MGW_CGR =@nsvci and MGW_NAME=@map_Ne);
	select @nbcrct=(select distinct top 1 MGW_NBCRCT from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND MGW_CGR =@nsvci and MGW_NAME=@map_Ne);
	select @spc=(select distinct top 1 CGR_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND MGW_CGR =@nsvci and MGW_NAME=@map_Ne);
	select @bsc=(select distinct top 1 LINKSET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND MGW_CGR =@nsvci and MGW_NAME=@map_Ne);	

	if @ncgr=null or @ncgr='' or @ncgr is null or @ncgr='null'
	 select @linkType='';
	 else
	 begin	
	select @linkType='CGR';
	end

	end

	--if @circle='GUJARAT'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))
	
	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	
	--end
	--else if @circle='AP'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))

	-----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='MAHARASHTRA'
	--begin


	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))

	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='CHENNAI'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))

	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	-- else if @circle='ROTN'
	--if @circle='ROTN'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='KERALA'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='RAJASTHAN'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))

	-----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='KARNATAKA'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='UPE'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='UPW'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--set @CountE=@CountE*31;

	
	--if @CountE=null or @CountE is null
	--begin
	--set @CountE=0;
	--end

	--if @et_count=null or @et_count is null
	--begin
	--set @et_count=0;
	--end
	
	--end
	
	--else if @type='MSC'
	--begin
	--set @CountE=0;
	----select @map_Ne=ne_name from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and CIRCLE=@circle and NE_NAME<>'';
	----select top 1 @bsc=LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))),@cgr_upart=CGR_UPART from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and LINK like'%'+@nsvci+'%' and CIRCLE=@circle and LINKSET is not null and ltrim(rtrim(LINKSET))<>'';
	----select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSC where  ELEMENT_IP=@ip and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');
	--select @et_count=(select COUNT(distinct ET) from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and CIRCLE=@circle AND CGR =@nsvci);
	--set @et_count=@et_count*31;
	--select @ncgr=(select distinct NCGR from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and CIRCLE=@circle AND CGR =@nsvci);
	--select @mgw=(select distinct NE_NAME from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and CIRCLE=@circle AND CGR =@nsvci);
	
	--if @circle='GUJARAT'
	--begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='AP'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='MAHARASHTRA'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='CHENNAI'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='ROTN'
	--if @circle='ROTN'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	----else if @circle='KERALA'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))



	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='RAJASTHAN'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='KARNATAKA'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='UPE'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='UPW'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))



	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--set @CountE=@CountE*31;

	--if @CountE=null or @CountE is null
	--begin
	--set @CountE=0;
	--end

	--if @et_count=null or @et_count is null
	--begin
	--set @et_count=0;
	--end


	--end
	
	--if exists(select consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec and circle_name=@circle)
	--begin
	--select @fake=consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec;
	--end
	--else
	--begin
	
	--insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] values(@consec,@CIRCLE,@map_Ne,@ncgr,@et_count,@CountE,'CS',@alarm_time,@cancel_time,'2087','',@nsvci,dateadd(minute,150,getdate()),@mgw);
	--set @CountE=0;
	--end


	if exists(select consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec and circle_name=@circle)
	begin
	select @fake=consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec;
	end
	else
	begin
	if (@ncgr='' or @ncgr=null or @ncgr is null or @ncgr='null')
	   begin
	       if(Not Exists(Select * from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] Where Consec_nbr=@consec))
	         begin
	-- written column names on insert statement // saurabh
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] (consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity) values(@consec,@CIRCLE,@map_Ne,'Not in DB/'+@nsvci,'0','0','CS',@alarm_time,@cancel_time,'2087',@linkType,@nsvci,dateadd(minute,150,getdate()),'NA');
	end
	end
	else
	begin
	if(Not Exists(Select * from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] Where Consec_nbr=@consec))
	         begin
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info](consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity) values(@consec,@CIRCLE,@map_Ne,@ncgr,@nbcrct,@spc,'CS',@alarm_time,@cancel_time,'2087',@linkType,@nsvci,dateadd(minute,150,getdate()),@mgw);
	end
	end
	end

	set @ip='';
	set @bsc='';
	SET @et_count='0';
	set @nsvci='';
	set @cgr_upart='';
	set @CountE='0';
	set @ncgr='';
	
	fetch next from mycurl into @consec,@supplementary_info,@ne_name,@alarm_time,@cancel_time,@alarm_num
	end
	close mycurl
	deallocate mycurl

	drop table #temp;
	 end try
  
  begin catch
  
  ---rollback tran;
    declare @error int,@message varchar(4000),@xstate int;
    select @error= ERROR_NUMBER(),@MESSAGE=ERROR_MESSAGE(),@xstate=XACT_STATE();
     
     raiserror ('updatecsdcm_2087:%d:%s',16,1,@error,@message);
     return;
  end catch
END

GO
/****** Object:  StoredProcedure [dbo].[updateCSDcm_2445]    Script Date: 04-Apr-19 4:42:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
--exec [dbo].[updateCSDcm_2445] 'ROTN'
CREATE PROCEDURE [dbo].[updateCSDcm_2445] 
	-- Add the parameters for the stored procedure here
	@circle varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	begin try

	create table #temp
	(
	consec_nbr bigint,
	ne_name varchar(50),
	supplementary_info varchar(100),
	alarm_time datetime,
	cancel_time datetime,
	alarm_num varchar(50)
	)

	if @CIRCLE='AP'
	begin
	insert into #temp select CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP] where ALARM_NUMBER in ('2445') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='CHENNAI'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI] where ALARM_NUMBER in ('2445') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='MAHARASHTRA'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA] where ALARM_NUMBER in ('2445') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='GUJARAT'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT] where ALARM_NUMBER in ('2445') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='KARNATAKA'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA] where ALARM_NUMBER in ('2445') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='KERALA'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA] where ALARM_NUMBER in ('2445') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='RAJASTHAN'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN] where ALARM_NUMBER in ('2445') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='ROTN'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN] where ALARM_NUMBER in ('2445') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='UPE'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE] where ALARM_NUMBER in ('2445') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='UPW'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW] where ALARM_NUMBER in ('2445') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
else if @CIRCLE='ROB'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROB] where ALARM_NUMBER in ('2445') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='HARYANA'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_HARYANA] where ALARM_NUMBER in ('2445') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	
	declare @fake as varchar(50),@net as varchar(20),@type as varchar(20),@SUPL_INFO AS varchar(50),@cgr_upart as varchar(30),@ip as varchar(50)
	declare @consec as bigint,@alarm_num as varchar(50),@supplementary_info as varchar(100),@ne_name as varchar(50),@bsc as varchar(50),@count as int,@alarm_time as datetime,@cancel_time as datetime ,@map_Ne as varchar(50),@nsvci as varchar(50)
	declare mycurl cursor FAST_FORWARD
	for select consec_nbr,supplementary_info,ne_name,alarm_time,cancel_time,alarm_num from #temp
	open mycurl
	fetch next from mycurl into @consec,@supplementary_info,@ne_name,@alarm_time,@cancel_time,@alarm_num
	while @@FETCH_STATUS=0
	begin
	 
	
	--set @map_Ne=@ne_name;
	select @type =[Node_Type],@ip=LTRIM(RTRIM(NE_IP)),@map_Ne=Ne_name from [AWE_db_VFI_CS_DCM].dbo.Ne_Master where NE_NetAct_Name=@ne_name and Domain='cs';
	select @supl_info =LTRIM(RTRIM(SUBSTRING(@supplementary_info,13,5)));
	--select @count=LTRIM(RTRIM(SUBSTRING(@supplementary_info,5,4)));
	--select @count=convert(int,convert(varbinary,'0x'+LTRIM(RTRIM(SUBSTRING(@supplementary_info,5,4)))));

    select @count=case LTRIM(RTRIM(SUBSTRING(@supplementary_info,5,4)))
	when '01' then LTRIM(RTRIM(SUBSTRING(@supplementary_info,5,4)))
	when '02' then LTRIM(RTRIM(SUBSTRING(@supplementary_info,5,4)))
	when '03' then LTRIM(RTRIM(SUBSTRING(@supplementary_info,5,4)))
	when '04' then LTRIM(RTRIM(SUBSTRING(@supplementary_info,5,4)))
	when '05' then LTRIM(RTRIM(SUBSTRING(@supplementary_info,5,4)))
	when '06' then LTRIM(RTRIM(SUBSTRING(@supplementary_info,5,4)))
	when '07' then LTRIM(RTRIM(SUBSTRING(@supplementary_info,5,4)))
	when '08' then LTRIM(RTRIM(SUBSTRING(@supplementary_info,5,4)))
	when '09' then LTRIM(RTRIM(SUBSTRING(@supplementary_info,5,4)))
	else
	--convert(int,convert(VARBINARY,'0x'+LTRIM(RTRIM(SUBSTRING(@supplementary_info,5,4))),1))
	convert(int,convert(VARBINARY,'0x'+LTRIM(RTRIM(SUBSTRING(@supplementary_info,5,4)))))
	
	end;
	
	select @net=LTRIM(RTRIM(SUBSTRING(@supplementary_info,18,4)));

	if @net='0C'
	begin
	set @net='NA1'
	end
	else
	begin
	set @net='NA0'
	end

	if ( @type='MSS' or @type='GCS')
	begin	
	--select top 1 @bsc=LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and CGR_SPC like @SUPL_INFO+'%' and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle;
	select top 1 @bsc=bsc_name from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and CGR_SPC like @SUPL_INFO+'%' and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle) data;
	set @cgr_upart=' '
	--select top 1 @bsc=LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) ,@cgr_upart=CGR_UPART from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where ELEMENT_IP=@ip and CGR_SPC like @SUPL_INFO+'%' and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle;
	--set @bsc='Not in DB/'+@SUPL_INFO
	--set @count='0'
	--set @cgr_upart=' '
	end
	else if ( @type='ATCA_MSS')
	begin	
	
	select top 1 @bsc=bsc_name from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name from AWE_db_VFI_CS_DCM.dbo.MSS_Link where NE_NAME=@map_Ne and CGR_SPC like @SUPL_INFO+'%' and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle) data;
	set @cgr_upart=' '
	
	end
	else if @type='HLR'
	begin
	--select @map_Ne=ne_name from AWE_db_VFI_CS_DCM.dbo.HLR where ELEMENT_IP=@ip and CIRCLE=@circle;
	--select top 1 @bsc=LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) ,@cgr_upart='IUPS' from AWE_db_VFI_CS_DCM.dbo.HLR where ELEMENT_IP=@ip and CGR_SPC like @SUPL_INFO+'%' and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle;
	select top 1 @bsc=bsc_name,@cgr_upart=CGRUPART from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name ,'IUPS' as CGRUPART from AWE_db_VFI_CS_DCM.dbo.HLR where ELEMENT_IP=@ip and CGR_SPC like @SUPL_INFO+'%' and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle) data;
	end
	else if (@type='MSC' or @type='GMSC')
	begin
	--select @map_Ne=ne_name from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and CIRCLE=@circle;
	--select top 1 @bsc=LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) ,@cgr_upart=CGR_UPART from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and CGR_SPC like @SUPL_INFO+'%' and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle;
	select top 1 @bsc=bsc_name,@cgr_upart=CGR_UPART from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name ,CGR_UPART from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and CGR_SPC like @SUPL_INFO+'%' and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle) data;
	end
	else if ( @type='MGW' or @type='GMGW')
	begin
	--select top 1 @bsc=LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))),@cgr_upart=CGR_UPART from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where MGW_NAME=@map_Ne and CGR_SPC like @SUPL_INFO+'%' and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle;
	select top 1 @bsc=bsc_name,@cgr_upart=CGR_UPART from (select top 1 (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as bsc_name,CGR_UPART from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where MGW_NAME=@map_Ne and CGR_SPC like @SUPL_INFO+'%' and CGR_NET=@net and LINKSET is not null and ltrim(rtrim(LINKSET))<>'' and CIRCLE=@circle) data;	
	end
	
	if exists(select consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec)
	begin
	select @fake=consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec;
	end
	else
	begin
	if @bsc=null or @bsc='' or @bsc is null or @bsc='null'
	-- written column names on insert statement // saurabh
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] (consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity) values(@consec,@CIRCLE,@map_Ne,'Not in DB/'+@SUPL_INFO,@count,@count,'CS',@alarm_time,@cancel_time,'2445','',@SUPL_INFO,dateadd(minute,150,getdate()),'NA');
	else
	begin
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info](consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity) values(@consec,@CIRCLE,@map_Ne,@bsc,@count,@count,'CS',@alarm_time,@cancel_time,'2445',@cgr_upart,@SUPL_INFO,dateadd(minute,150,getdate()),'NA');
	end
	end
	
	set @bsc='';
	set @count=0;
	set @map_Ne='';
	set @cgr_upart='';
	--end
	fetch next from mycurl into @consec,@supplementary_info,@ne_name,@alarm_time,@cancel_time,@alarm_num
	
	end
	close mycurl
	deallocate mycurl

	drop table #temp;
	 end try
  
  begin catch
  
  ---rollback tran;
    declare @error int,@message varchar(4000),@xstate int;
    select @error= ERROR_NUMBER(),@MESSAGE=ERROR_MESSAGE(),@xstate=XACT_STATE();
     
     raiserror ('updateCSDCM_2445:%d:%s',16,1,@error,@message);
     return;
  end catch
END

GO
/****** Object:  StoredProcedure [dbo].[updateCSDcm_3159]    Script Date: 04-Apr-19 4:42:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
--exec [dbo].[updateCSDcm_3159] 'UPE'
CREATE procEDURE [dbo].[updateCSDcm_3159] 
	-- Add the parameters for the stored procedure here
	@circle varchar(50)
AS
BEGIN

--Declare @circle varchar(20)

--SET @circle = 'ROTN'

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	begin try

	create table #temp
	(
	consec_nbr bigint,
	ne_name varchar(50),
	supplementary_info varchar(100),
	alarm_time datetime,
	cancel_time datetime,
	alarm_num varchar(50)
	)

	if @CIRCLE='AP'
	begin
	insert into #temp select CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP] where ALARM_NUMBER in ('3159') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='CHENNAI'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI] where ALARM_NUMBER in ('3159') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='MAHARASHTRA'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA] where ALARM_NUMBER in ('3159') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='GUJARAT'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT] where ALARM_NUMBER in ('3159') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='KARNATAKA'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA] where ALARM_NUMBER in ('3159') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='KERALA'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA] where ALARM_NUMBER in ('3159') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='RAJASTHAN'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN] where ALARM_NUMBER in ('3159') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='ROTN'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN] where ALARM_NUMBER in ('3159') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='UPE'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE] where ALARM_NUMBER in ('3159') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='UPW'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW] where ALARM_NUMBER in ('3159') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
else if @CIRCLE='ROB'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROB] where ALARM_NUMBER in ('3159') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='HARYANA'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_HARYANA] where ALARM_NUMBER in ('3159') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	
	declare @fake as varchar(50),@net as varchar(20),@type as varchar(20),@SUPL_INFO AS varchar(50),@cgr_upart as varchar(30),@ip as varchar(50)
	declare @consec as bigint,@alarm_num as varchar(50),@supplementary_info as varchar(100),@ne_name as varchar(50),@bsc as varchar(50),@count as int,@alarm_time as datetime,@cancel_time as datetime ,@map_Ne as varchar(50),@nsvci as varchar(50),@split_data as varchar(50),@ncgr as varchar(50),@ncgrStartWithB as int,@linkType as varchar(50),@ncgrStartWithS as int,@ncgrStartWithM as int,@ncgrStartWithC as int,@ncgrStartWithX as int,@ncgrStartWithI as int,@SPC as varchar(50),@split_value as varchar(50),@supply_data as varchar(50),@down as int --down added by ajay
	declare mycurl cursor FAST_FORWARD
	for select consec_nbr,supplementary_info,ne_name,alarm_time,cancel_time,alarm_num from #temp
	open mycurl
	fetch next from mycurl into @consec,@supplementary_info,@ne_name,@alarm_time,@cancel_time,@alarm_num
	while @@FETCH_STATUS=0
	begin
	 
	
	--set @map_Ne=@ne_name;
	select @type =[Node_Type],@ip=LTRIM(RTRIM(NE_IP)),@map_Ne=Ne_name from [AWE_db_VFI_CS_DCM].dbo.Ne_Master where NE_NetAct_Name=@ne_name and Domain='cs';
	--select @supl_info =LTRIM(RTRIM(SUBSTRING(@supplementary_info,13,5)));
	declare @supl_values as varchar(100) = RTRIM(Substring(LTRIM(SUBSTRING(@supplementary_info,CHARINDEX('/',@supplementary_info)+1,LEN(@supplementary_info))),1,LEN(LTRIM(SUBSTRING(@supplementary_info,CHARINDEX('/',@supplementary_info)+1,LEN(@supplementary_info))))-1));
  Select top 1 @split_data=SplitData from [dbo].[StringSplit](@supl_values,' ');     	   
    select @split_value=SplitData from  (select *,dense_rank() over(order by SplitData desc)rank from [dbo].[StringSplit](@supl_values,' '))as tab where tab.rank=3;
	--select @net=LTRIM(RTRIM(SUBSTRING(@supplementary_info,18,4)));
	select @nsvci = convert(bigint,convert(varbinary,'0x'+@split_value,1));
  select @supply_data= LTRIM(RTRIM(@split_data));		
  if(@supply_data = '03')
	if ( @type='MSS' or @type='GCS')
	begin			
	
	select top 1 @bsc=(case when charindex(' ',ASSOCIATION_SET)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(ASSOCIATION_SET),0,charindex(' ',REVERSE(ASSOCIATION_SET),0))))) else ASSOCIATION_SET end),@count=count(distinct ID ) from [AWE_db_VFI_CS_DCM].[dbo]. [association_info] where Circle=@circle and ASSOCIATION_SET is not null and ASSOCIATION_SET_ID=@nsvci and node=@map_Ne group by ASSOCIATION_SET;
	
	select @down=count(distinct ID ) from [AWE_db_VFI_CS_DCM].[dbo]. [association_info] where Circle=@circle and ASSOCIATION_SET is not null and ASSOCIATION_SET_ID=@nsvci and node=@map_Ne and STATE!='ASP-ACTIVE' group by ASSOCIATION_SET; --Down count added by AJAY
	if @down=null or @down='' or @down is null or @down='null'
	begin
	select @down=0;
	end
		end
		else if ( @type='MGW' or @type='GMGW')
	begin		 
	select top 1 @bsc=(case when charindex(' ',ASSOCIATION_SET)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(ASSOCIATION_SET),0,charindex(' ',REVERSE(ASSOCIATION_SET),0))))) else ASSOCIATION_SET end),@count=count(distinct ID ) from [AWE_db_VFI_CS_DCM].[dbo]. [association_info] where Circle=@circle and ASSOCIATION_SET is not null and node=@map_Ne group by ASSOCIATION_SET;	
	
	select @down=count(distinct ID ) from [AWE_db_VFI_CS_DCM].[dbo]. [association_info] where Circle=@circle and ASSOCIATION_SET is not null and ASSOCIATION_SET_ID=@nsvci and node=@map_Ne and STATE!='ASP-ACTIVE' group by ASSOCIATION_SET; --Down count added by AJAY
	if @down=null or @down='' or @down is null or @down='null'
	begin
	select @down=0;
	end
	end

	if exists(select consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec and circle_name=@circle)
	begin
	select @fake=consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec;
	end
	else
	begin
	if @bsc=null or @bsc='' or @bsc is null or @bsc='null'
	-- written column names on insert statement // saurabh
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] (consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity) values(@consec,@CIRCLE,@map_Ne,'Not in DB/'+@nsvci,'0','0','CS',@alarm_time,@cancel_time,'3159','',@nsvci,dateadd(minute,150,getdate()),'');
	else
	begin
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info](consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity) values(@consec,@CIRCLE,@map_Ne,@bsc,@count,@down,'CS',@alarm_time,@cancel_time,'3159','M3UA',@nsvci,dateadd(minute,150,getdate()),'NA');
	end
	end
	
	set @bsc='';
	set @count=0;
	set @map_Ne='';
	set @cgr_upart='';
	--end
	fetch next from mycurl into @consec,@supplementary_info,@ne_name,@alarm_time,@cancel_time,@alarm_num
	
	end
	close mycurl
	deallocate mycurl

	drop table #temp;
	 end try
  
  begin catch
  
  ---rollback tran;
    declare @error int,@message varchar(4000),@xstate int;
    select @error= ERROR_NUMBER(),@MESSAGE=ERROR_MESSAGE(),@xstate=XACT_STATE();
     
     raiserror ('updateCSDCM_3159:%d:%s',16,1,@error,@message);
     return;
  end catch
END

GO
/****** Object:  StoredProcedure [dbo].[updateCSDcm_3294]    Script Date: 04-Apr-19 4:42:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE procEDURE [dbo].[updateCSDcm_3294]
	-- Add the parameters for the stored procedure here
	@CIRCLE VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	begin try

		create table #ttable (CONSEC_NBR bigint,NE_NAME varchar(50),NE_IP varchar(50),NODE_TYPE varchar(50),NET varchar(50),SPC varchar(50),ALARM_TIME datetime,CANCEL_TIME datetime,ALARM_NUMBER varchar(50))
	IF(@CIRCLE='AP')
		insert into #ttable select * from (select f.CONSEC_NBR,f.NE_Name,n.NE_IP,n.Node_Type,CASE SUBSTRING(f.SUPPLEMENTARY_INFO,10,2) WHEN '0C' THEN 'NA1' ELSE 'NA0' END AS NET,
		SUBSTRING(f.SUPPLEMENTARY_INFO,5,4) AS SPC,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP] f 
		INNER JOIN AWE_db_VFI_CS_DCM.dbo.Ne_Master n ON n.NE_NetAct_Name = f.NE_Name where ALARM_NUMBER = '3294') data where data.CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name='AP') and data.NODE_TYPE in ('MSS','MSC','GMSC','MGW','GMGW','HLR','GCS','ATCA','ATCA_MSS')
		
	IF(@CIRCLE='GUJARAT')
		insert into #ttable select * from (select f.CONSEC_NBR,f.NE_Name,n.NE_IP,n.Node_Type,CASE SUBSTRING(f.SUPPLEMENTARY_INFO,10,2) WHEN '0C' THEN 'NA1' ELSE 'NA0' END AS NET,
		SUBSTRING(f.SUPPLEMENTARY_INFO,5,4) AS SPC,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT] f 
		INNER JOIN AWE_db_VFI_CS_DCM.dbo.Ne_Master n ON n.NE_NetAct_Name = f.NE_Name where ALARM_NUMBER = '3294') data where data.CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE) and data.NODE_TYPE in ('MSS','MSC','GMSC','MGW','GMGW','HLR','GCS','ATCA','ATCA_MSS')
		
	IF(@CIRCLE='CHENNAI')
		insert into #ttable select * from (select f.CONSEC_NBR,f.NE_Name,n.NE_IP,n.Node_Type,CASE SUBSTRING(f.SUPPLEMENTARY_INFO,10,2) WHEN '0C' THEN 'NA1' ELSE 'NA0' END AS NET,
		SUBSTRING(f.SUPPLEMENTARY_INFO,5,4) AS SPC,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI] f 
		INNER JOIN AWE_db_VFI_CS_DCM.dbo.Ne_Master n ON n.NE_NetAct_Name = f.NE_Name where ALARM_NUMBER = '3294') data where data.CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE) and data.NODE_TYPE in ('MSS','MSC','GMSC','MGW','GMGW','HLR','GCS','ATCA','ATCA_MSS')
		
	IF(@CIRCLE='KARNATAKA')
		insert into #ttable select * from (select f.CONSEC_NBR,f.NE_Name,n.NE_IP,n.Node_Type,CASE SUBSTRING(f.SUPPLEMENTARY_INFO,10,2) WHEN '0C' THEN 'NA1' ELSE 'NA0' END AS NET,
		SUBSTRING(f.SUPPLEMENTARY_INFO,5,4) AS SPC,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA] f 
		INNER JOIN AWE_db_VFI_CS_DCM.dbo.Ne_Master n ON n.NE_NetAct_Name = f.NE_Name where ALARM_NUMBER = '3294') data where data.CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE) and data.NODE_TYPE in ('MSS','MSC','GMSC','MGW','GMGW','HLR','GCS','ATCA','ATCA_MSS')
	
		
	IF(@CIRCLE='MAHARASHTRA')
		insert into #ttable select * from (select f.CONSEC_NBR,f.NE_Name,n.NE_IP,n.Node_Type,CASE SUBSTRING(f.SUPPLEMENTARY_INFO,10,2) WHEN '0C' THEN 'NA1' ELSE 'NA0' END AS NET,
		SUBSTRING(f.SUPPLEMENTARY_INFO,5,4) AS SPC,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA] f 
		INNER JOIN AWE_db_VFI_CS_DCM.dbo.Ne_Master n ON n.NE_NetAct_Name = f.NE_Name where ALARM_NUMBER = '3294') data where data.CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE) and data.NODE_TYPE in ('MSS','MSC','GMSC','MGW','GMGW','HLR','GCS','ATCA','ATCA_MSS')
	
		
	IF(@CIRCLE='KERALA')
		insert into #ttable select * from (select f.CONSEC_NBR,f.NE_Name,n.NE_IP,n.Node_Type,CASE SUBSTRING(f.SUPPLEMENTARY_INFO,10,2) WHEN '0C' THEN 'NA1' ELSE 'NA0' END AS NET,
		SUBSTRING(f.SUPPLEMENTARY_INFO,5,4) AS SPC,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA] f 
		INNER JOIN AWE_db_VFI_CS_DCM.dbo.Ne_Master n ON n.NE_NetAct_Name = f.NE_Name where ALARM_NUMBER = '3294') data where data.CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE) and data.NODE_TYPE in ('MSS','MSC','GMSC','MGW','GMGW','HLR','GCS','ATCA','ATCA_MSS')
		
	IF(@CIRCLE='RAJASTHAN')
		insert into #ttable select * from (select f.CONSEC_NBR,f.NE_Name,n.NE_IP,n.Node_Type,CASE SUBSTRING(f.SUPPLEMENTARY_INFO,10,2) WHEN '0C' THEN 'NA1' ELSE 'NA0' END AS NET,
		SUBSTRING(f.SUPPLEMENTARY_INFO,5,4) AS SPC,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN] f 
		INNER JOIN AWE_db_VFI_CS_DCM.dbo.Ne_Master n ON n.NE_NetAct_Name = f.NE_Name where ALARM_NUMBER = '3294') data where data.CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE) and data.NODE_TYPE in ('MSS','MSC','GMSC','MGW','GMGW','HLR','GCS','ATCA','ATCA_MSS')
		
	IF(@CIRCLE='ROTN')
		insert into #ttable select * from (select f.CONSEC_NBR,f.NE_Name,n.NE_IP,n.Node_Type,CASE SUBSTRING(f.SUPPLEMENTARY_INFO,10,2) WHEN '0C' THEN 'NA1' ELSE 'NA0' END AS NET,
		SUBSTRING(f.SUPPLEMENTARY_INFO,5,4) AS SPC,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN] f 
		INNER JOIN AWE_db_VFI_CS_DCM.dbo.Ne_Master n ON n.NE_NetAct_Name = f.NE_Name where ALARM_NUMBER = '3294') data where data.CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE) and data.NODE_TYPE in ('MSS','MSC','GMSC','MGW','GMGW','HLR','GCS','ATCA','ATCA_MSS')
	IF(@CIRCLE='UPE')
		insert into #ttable select * from (select f.CONSEC_NBR,f.NE_Name,n.NE_IP,n.Node_Type,CASE SUBSTRING(f.SUPPLEMENTARY_INFO,10,2) WHEN '0C' THEN 'NA1' ELSE 'NA0' END AS NET,
		SUBSTRING(f.SUPPLEMENTARY_INFO,5,4) AS SPC,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE] f 
		INNER JOIN AWE_db_VFI_CS_DCM.dbo.Ne_Master n ON n.NE_NetAct_Name = f.NE_Name where ALARM_NUMBER = '3294') data where data.CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE) and data.NODE_TYPE in ('MSS','MSC','GMSC','MGW','GMGW','HLR','GCS','ATCA','ATCA_MSS')
	IF(@CIRCLE='UPW')
		insert into #ttable select * from (select f.CONSEC_NBR,f.NE_Name,n.NE_IP,n.Node_Type,CASE SUBSTRING(f.SUPPLEMENTARY_INFO,10,2) WHEN '0C' THEN 'NA1' ELSE 'NA0' END AS NET,
		SUBSTRING(f.SUPPLEMENTARY_INFO,5,4) AS SPC,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW] f 
		INNER JOIN AWE_db_VFI_CS_DCM.dbo.Ne_Master n ON n.NE_NetAct_Name = f.NE_Name where ALARM_NUMBER = '3294') data where data.CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE) and data.NODE_TYPE in ('MSS','MSC','GMSC','MGW','GMGW','HLR','GCS','ATCA','ATCA_MSS')
	IF(@CIRCLE='ROB')
		insert into #ttable select * from (select f.CONSEC_NBR,f.NE_Name,n.NE_IP,n.Node_Type,CASE SUBSTRING(f.SUPPLEMENTARY_INFO,10,2) WHEN '0C' THEN 'NA1' ELSE 'NA0' END AS NET,
		SUBSTRING(f.SUPPLEMENTARY_INFO,5,4) AS SPC,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROB] f 
		INNER JOIN AWE_db_VFI_CS_DCM.dbo.Ne_Master n ON n.NE_NetAct_Name = f.NE_Name where ALARM_NUMBER = '3294') data where data.CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE) and data.NODE_TYPE in ('MSS','MSC','GMSC','MGW','GMGW','HLR','GCS','ATCA','ATCA_MSS')
	IF(@CIRCLE='HARYANA')
		insert into #ttable select * from (select f.CONSEC_NBR,f.NE_Name,n.NE_IP,n.Node_Type,CASE SUBSTRING(f.SUPPLEMENTARY_INFO,10,2) WHEN '0C' THEN 'NA1' ELSE 'NA0' END AS NET,
		SUBSTRING(f.SUPPLEMENTARY_INFO,5,4) AS SPC,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_HARYANA] f 
		INNER JOIN AWE_db_VFI_CS_DCM.dbo.Ne_Master n ON n.NE_NetAct_Name = f.NE_Name where ALARM_NUMBER = '3294') data where data.CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE) and data.NODE_TYPE in ('MSS','MSC','GMSC','MGW','GMGW','HLR','GCS','ATCA','ATCA_MSS')
	
		
		declare @consec bigint,@ne_name varchar(50),@ne_ip varchar(50),@node_type varchar(50),@net varchar(50),@spc varchar(50),@CGR_UPART varchar(50),
		@alarm_time datetime,@cancle_time datetime,@alarm_num varchar(50),@linkset varchar(50),@slc_count varchar(10)
		declare newCursor cursor FAST_FORWARD
		
		for SELECT CONSEC_NBR,NE_NAME,NE_IP,NODE_TYPE,NET,SPC,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER FROM #ttable 
		open newCursor
		fetch next from newCursor into @consec,@ne_name,@ne_ip,@node_type,@net,@spc,@alarm_time,@cancle_time,@alarm_num
		while @@FETCH_STATUS=0
		begin
		--SUBSTRING(linkset,4,LEN(linkset) + 1) for fetching linkset old way
		if(@node_type='MSS' or @node_type='GCS')
		begin
			WITH CTE
			AS(
			SELECT (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as linkset,ROW_NUMBER() OVER(PARTITION BY NE_NAME ORDER BY LINKSET) AS CC FROM [AWE_db_VFI_CS_DCM].[dbo].[MSS_Link] AS C 
			WHERE C.CIRCLE = @CIRCLE AND C.ELEMENT_IP = @ne_ip AND C.LINKSET IS NOT NULL AND C.CGR_NET = @net AND SUBSTRING(C.CGR_SPC,0,5) = @spc)			
			SELECT TOP 1 @linkset=linkset/*,@slc_count=CC*/ FROM CTE ORDER BY CC DESC			
			set @CGR_UPART=' '

			select @slc_count=count(*) from (SELECT distinct ELEMENT_IP,cgr_net,cgr_spc,SLC FROM [AWE_db_VFI_CS_DCM].[dbo].[MSS_Link] AS C 
			WHERE C.CIRCLE = @CIRCLE AND C.ELEMENT_IP = @ne_ip AND C.CGR_NET = @net AND SUBSTRING(C.CGR_SPC,0,5) = @spc) slcCount
			

			--SELECT SUBSTRING(linkset,4,LEN(linkset) + 1) as linkset,CGR_UPART,ROW_NUMBER() OVER(PARTITION BY MSS ORDER BY LINKSET) AS CC FROM [AWE_db_VFI_CS_DCM].[dbo].[MSS_MGW_MAPPING] AS C 
			--WHERE C.CIRCLE = @CIRCLE AND C.ELEMENT_IP = @ne_ip AND C.CGR_NET = @net AND SUBSTRING(C.CGR_SPC,0,5) = @spc AND C.SLC != '')
			--SELECT TOP 1 @linkset=linkset,@CGR_UPART=CGR_UPART,@slc_count=CC FROM CTE ORDER BY CC DESC
			--set @linkset='NA'
			--set @slc_count='0'
		end
		if(@node_type='ATCA_MSS')
		begin
			WITH CTE
			AS(
			SELECT (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as linkset,ROW_NUMBER() OVER(PARTITION BY NE_NAME ORDER BY LINKSET) AS CC FROM [AWE_db_VFI_CS_DCM].[dbo].[MSS_Link] AS C 
			WHERE C.CIRCLE = @CIRCLE AND C.NE_NAME = @ne_name AND C.LINKSET IS NOT NULL AND C.CGR_NET = @net AND SUBSTRING(C.CGR_SPC,0,5) = @spc)
			SELECT TOP 1 @linkset=linkset/*,@slc_count=CC*/ FROM CTE ORDER BY CC DESC			
			set @CGR_UPART=' '

			select @slc_count=count(*) from (SELECT distinct ELEMENT_IP,cgr_net,cgr_spc,SLC FROM [AWE_db_VFI_CS_DCM].[dbo].[MSS_Link] AS C 
			WHERE C.CIRCLE = @CIRCLE AND C.NE_NAME = @ne_name AND C.CGR_NET = @net AND SUBSTRING(C.CGR_SPC,0,5) = @spc) slcCount

		end
		if(@node_type='MGW' OR @node_type='GMGW')
		begin
			WITH CTE
			AS(
			SELECT (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as linkset,CGR_UPART,ROW_NUMBER() OVER(PARTITION BY MGW_NAME  ORDER BY LINKSET) AS CC FROM [AWE_db_VFI_CS_DCM].[dbo].[MSS_MGW_MAPPING] AS C 
			WHERE C.CIRCLE = @CIRCLE AND C.MGW_NAME = @ne_name AND C.LINKSET IS NOT NULL AND C.CGR_NET = @net AND SUBSTRING(C.CGR_SPC,0,5) = @spc)
			SELECT TOP 1 @linkset=linkset,@CGR_UPART=CGR_UPART/*,@slc_count=CC*/ FROM CTE ORDER BY CC DESC;

			select @slc_count=count(*)  from (SELECT distinct mgw_name,cgr_net,cgr_spc,slc FROM [AWE_db_VFI_CS_DCM].[dbo].[MSS_MGW_MAPPING] AS C 
			WHERE C.CIRCLE = @CIRCLE AND C.MGW_NAME  = @ne_name AND C.CGR_NET = @net AND SUBSTRING(C.CGR_SPC,0,5) = @spc) slcCount;

		end
		if(@node_type='MSC' OR @node_type='GMSC')
		begin
			WITH CTE
			AS(
			SELECT (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as linkset,CGR_UPART,ROW_NUMBER() OVER(PARTITION BY MSS ORDER BY LINKSET) AS CC FROM [AWE_db_VFI_CS_DCM].[dbo].[MSC] AS C 
			WHERE C.CIRCLE = @CIRCLE AND C.ELEMENT_IP = @ne_ip AND C.LINKSET IS NOT NULL  AND C.CGR_NET = @net AND SUBSTRING(C.CGR_SPC,0,5) = @spc)
			SELECT TOP 1 @linkset=linkset,@CGR_UPART=CGR_UPART/*,@slc_count=CC*/ FROM CTE ORDER BY CC DESC;
			
			select @slc_count= COUNT(*) from (SELECT distinct ELEMENT_IP,cgr_net,cgr_spc,slc FROM [AWE_db_VFI_CS_DCM].[dbo].[MSC] AS C 
			WHERE C.CIRCLE = @CIRCLE AND C.ELEMENT_IP = @ne_ip AND C.CGR_NET = @net AND SUBSTRING(C.CGR_SPC,0,5) = @spc) slcCount;

		end
		if(@node_type='HLR')
		begin
			WITH CTE
			AS(
			SELECT (case when charindex(' ',linkset)>0 then LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) else linkset end) as linkset,GENERIC_NAME AS CGR_UPART,ROW_NUMBER() OVER(PARTITION BY HLR ORDER BY LINKSET) AS CC FROM [AWE_db_VFI_CS_DCM].[dbo].[HLR] AS C 
			WHERE C.CIRCLE = @CIRCLE AND C.ELEMENT_IP = @ne_ip  AND C.LINKSET IS NOT NULL AND C.CGR_NET = @net AND SUBSTRING(C.CGR_SPC,0,5) = @spc)
			SELECT TOP 1 @linkset=linkset,@CGR_UPART=CGR_UPART/*,@slc_count=CC*/ FROM CTE ORDER BY CC DESC;
			
			select @slc_count= count(*) from (SELECT distinct element_ip,cgr_net,cgr_spc,slc FROM [AWE_db_VFI_CS_DCM].[dbo].[HLR] AS C 
			WHERE C.CIRCLE = @CIRCLE AND C.ELEMENT_IP = @ne_ip AND C.CGR_NET = @net AND SUBSTRING(C.CGR_SPC,0,5) = @spc ) slcCount
			
		end
	
	if not exists(select consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec)
	begin
	if @linkset=null or @linkset='' or @linkset is null or @linkset='null'
	-- written column names on insert statement // saurabh
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] (consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity) values(@consec,@CIRCLE,@ne_name,'N/A','0','0','CS',@alarm_time,@cancle_time,'3294',@CGR_UPART,'',dateadd(minute,150,getdate()),'Yes');
	else
	begin
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info](consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity) values(@consec,@CIRCLE,@ne_name,@linkset,'NA','NA','CS',@alarm_time,@cancle_time,'3294',@CGR_UPART,'',dateadd(minute,150,getdate()),'Yes');
	end
	end
	

	set @linkset='';
	set @slc_count=0;
	set @CGR_UPART='';
	fetch next from newCursor into @consec,@ne_name,@ne_ip,@node_type,@net,@spc,@alarm_time,@cancle_time,@alarm_num
	end
	close newCursor
	deallocate newCursor

	drop table #ttable;
	 end try
  
  begin catch
  
  ---rollback tran;
    declare @error int,@message varchar(4000),@xstate int;
    select @error= ERROR_NUMBER(),@MESSAGE=ERROR_MESSAGE(),@xstate=XACT_STATE();
     
     raiserror ('updateCSDCM_3294:%d:%s',16,1,@error,@message);
     return;
  end catch
END

GO
/****** Object:  StoredProcedure [dbo].[updateCSDcm_3295]    Script Date: 04-Apr-19 4:42:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
--exec [dbo].[updateCSDcm_3295] 'AP'
CREATE procEDURE [dbo].[updateCSDcm_3295] 
	-- Add the parameters for the stored procedure here
	@circle varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	begin try

	create table #temp
	(
	consec_nbr bigint,
	ne_name varchar(50),
	supplementary_info varchar(100),
	alarm_time datetime,
	cancel_time datetime,
	alarm_num varchar(50)
	)

	if @CIRCLE='AP'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_AP al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp select CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP] where ALARM_NUMBER in ('3295') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='CHENNAI'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_CHENNAI al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI] where ALARM_NUMBER in ('3295') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info) ;
	end
	else if @CIRCLE='MAHARASHTRA'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_MAHARASHTRA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA] where ALARM_NUMBER in ('3295') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='GUJARAT'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_GUJARAT al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT] where ALARM_NUMBER in ('3295') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='KARNATAKA'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_KARNATAKA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA] where ALARM_NUMBER in ('3295') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='KERALA'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_KERALA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA] where ALARM_NUMBER in ('3295') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='RAJASTHAN'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_RAJASTHAN al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN] where ALARM_NUMBER in ('3295') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='ROTN'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_ROTN al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN] where ALARM_NUMBER in ('3295') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='UPE'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_UPE al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE] where ALARM_NUMBER in ('3295') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='UPW'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_UPW al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW] where ALARM_NUMBER in ('3295') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='ROB'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_ROB al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROB] where ALARM_NUMBER in ('3295') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='HARYANA'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_HARYANA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_HARYANA] where ALARM_NUMBER in ('3295') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end

	declare @fake as varchar(50),@type as varchar(20),@SUPL_INFO AS VARCHAR(50),@cgr_upart as varchar(30),@ip as varchar(20)
	declare @consec as bigint,@alarm_num as varchar(50),@supplementary_info as varchar(100),@ne_name as varchar(50),@bsc as varchar(50),@count as int,@alarm_time as datetime,@cancel_time as datetime ,@map_Ne as varchar(50),@nsvci as varchar(50)
	declare @et_count as bigint,@ncgr as varchar(50),@mgw as varchar(50),@CountE as bigint,@linkset varchar(50), @nbcrct varchar(50),@spc varchar(50)


	declare mycurl cursor
	for select consec_nbr,supplementary_info,ne_name,alarm_time,cancel_time,alarm_num from #temp
	open mycurl
	fetch next from mycurl into @consec,@supplementary_info,@ne_name,@alarm_time,@cancel_time,@alarm_num
	while @@FETCH_STATUS=0
	begin
	set @map_Ne=@ne_name
	select @type =[Node_Type] from [AWE_db_VFI_CS_DCM].dbo.Ne_Master where NE_NetAct_Name=@ne_name and Circle=@circle and Domain='cs';
	
	select @ip = LTRIM(RTRIM(NE_IP)) from [AWE_db_VFI_CS_DCM].dbo.Ne_Master where NE_NetAct_Name=@ne_name and Circle=@circle and Domain='cs';	

	select @supl_info = LTRIM(RTRIM(SUBSTRING(@supplementary_info,3,5)));
	--select @nsvci= convert(int,convert(varbinary,'0x'+@supl_info,1));
	-- if @nsvci like'%d'
	-- begin
	-- select @nsvci=LTRIM(RTRIM(SUBSTRING(@supplementary_info,0,4)));
	-- end

	if (@type='MSS' or @type='GCS')
	begin
	--set @CountE=0;
	--select top 1 @bsc=LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and LINK like'%'+@supl_info+'%' and CIRCLE=@circle and LINKSET is not null and ltrim(rtrim(LINKSET))<>'';
	--select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');

	--select @et_count=(select COUNT(distinct ET) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	--set @et_count=@et_count*31;
	--select @ncgr=(select distinct NCGR from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where ELEMENT_IP=@ip and CIRCLE=@circle AND CGR =@supl_info);
	select @ncgr=(select distinct NCGR from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	select @mgw=(select distinct VMGW from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	select @nbcrct=(select distinct NBCRCT from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	select @spc=(select distinct MSS_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);	
	end

	if (@type='MGW')
	begin
	--set @CountE=0;
	--select top 1 @bsc=LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and LINK like'%'+@supl_info+'%' and CIRCLE=@circle and LINKSET is not null and ltrim(rtrim(LINKSET))<>'';
	--select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');

	--select @et_count=(select COUNT(distinct ET) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	--set @et_count=@et_count*31;
	--select @ncgr=(select distinct NCGR from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where ELEMENT_IP=@ip and CIRCLE=@circle AND CGR =@supl_info);
	select @ncgr=(select distinct NCGR from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	select @mgw=(select distinct VMGW from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	select @nbcrct=(select distinct NBCRCT from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	select @spc=(select distinct MSS_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);	
	end

	--if @circle='GUJARAT'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))
	
	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	
	--end
	--else if @circle='AP'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))

	-----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='MAHARASHTRA'
	--begin


	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))

	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='CHENNAI'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))

	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	-- else if @circle='ROTN'
	--if @circle='ROTN'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='KERALA'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='RAJASTHAN'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))

	-----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='KARNATAKA'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='UPE'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='UPW'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--set @CountE=@CountE*31;

	
	--if @CountE=null or @CountE is null
	--begin
	--set @CountE=0;
	--end

	--if @et_count=null or @et_count is null
	--begin
	--set @et_count=0;
	--end
	
	--end
	
	--else if @type='MSC'
	--begin
	--set @CountE=0;
	----select @map_Ne=ne_name from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and CIRCLE=@circle and NE_NAME<>'';
	----select top 1 @bsc=LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))),@cgr_upart=CGR_UPART from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and LINK like'%'+@nsvci+'%' and CIRCLE=@circle and LINKSET is not null and ltrim(rtrim(LINKSET))<>'';
	----select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSC where  ELEMENT_IP=@ip and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');
	--select @et_count=(select COUNT(distinct ET) from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and CIRCLE=@circle AND CGR =@nsvci);
	--set @et_count=@et_count*31;
	--select @ncgr=(select distinct NCGR from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and CIRCLE=@circle AND CGR =@nsvci);
	--select @mgw=(select distinct NE_NAME from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and CIRCLE=@circle AND CGR =@nsvci);
	
	--if @circle='GUJARAT'
	--begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='AP'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='MAHARASHTRA'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='CHENNAI'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='ROTN'
	--if @circle='ROTN'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	----else if @circle='KERALA'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))



	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='RAJASTHAN'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='KARNATAKA'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='UPE'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='UPW'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))



	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--set @CountE=@CountE*31;

	--if @CountE=null or @CountE is null
	--begin
	--set @CountE=0;
	--end

	--if @et_count=null or @et_count is null
	--begin
	--set @et_count=0;
	--end


	--end
	
	--if exists(select consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec and circle_name=@circle)
	--begin
	--select @fake=consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec;
	--end
	--else
	--begin
	
	--insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] values(@consec,@CIRCLE,@map_Ne,@ncgr,@et_count,@CountE,'CS',@alarm_time,@cancel_time,'3295','',@nsvci,dateadd(minute,150,getdate()),@mgw);
	--set @CountE=0;
	--end


	if not exists(select consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec)
	begin
	if @supl_info=null or @supl_info='' or @supl_info is null or @supl_info='null'
	-- written column names on insert statement // saurabh
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] (consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity) values(@consec,@CIRCLE,@map_Ne,'N/A','0','0','CS',@alarm_time,@cancel_time,'3295',@supl_info,'',dateadd(minute,150,getdate()),'NA');
	else
	begin
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info](consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity) values(@consec,@CIRCLE,@map_Ne,@ncgr,@nbcrct,@spc,'CS',@alarm_time,@cancel_time,'3295',@supl_info,'',dateadd(minute,150,getdate()),@mgw);
	end
	end

	set @ip='';
	set @bsc='';
	SET @et_count='0';
	set @nsvci='';
	set @cgr_upart='';
	set @CountE='0';
	set @ncgr='';
	
	fetch next from mycurl into @consec,@supplementary_info,@ne_name,@alarm_time,@cancel_time,@alarm_num
	end
	close mycurl
	deallocate mycurl

	drop table #temp;
	 end try
  
  begin catch
  
  ---rollback tran;
    declare @error int,@message varchar(4000),@xstate int;
    select @error= ERROR_NUMBER(),@MESSAGE=ERROR_MESSAGE(),@xstate=XACT_STATE();
     
     raiserror ('updatecsdcm_3295:%d:%s',16,1,@error,@message);
     return;
  end catch
END

GO
/****** Object:  StoredProcedure [dbo].[updateCSDcm_3379]    Script Date: 04-Apr-19 4:42:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
--exec [dbo].[updateCSDcm_3379] 'ROTN'
CREATE procEDURE [dbo].[updateCSDcm_3379] 
	-- Add the parameters for the stored procedure here
	@circle varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	begin try

	create table #temp
	(
	consec_nbr bigint,
	ne_name varchar(50),
	supplementary_info varchar(100),
	alarm_time datetime,
	cancel_time datetime,
	alarm_num varchar(50)
	)

	if @CIRCLE='AP'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_AP al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp select CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP] where ALARM_NUMBER in ('3379') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='CHENNAI'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_CHENNAI al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI] where ALARM_NUMBER in ('3379') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info) ;
	end
	else if @CIRCLE='MAHARASHTRA'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_MAHARASHTRA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA] where ALARM_NUMBER in ('3379') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='GUJARAT'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_GUJARAT al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT] where ALARM_NUMBER in ('3379') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='KARNATAKA'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_KARNATAKA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA] where ALARM_NUMBER in ('3379') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='KERALA'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_KERALA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA] where ALARM_NUMBER in ('3379') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='RAJASTHAN'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_RAJASTHAN al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN] where ALARM_NUMBER in ('3379') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='ROTN'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_ROTN al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN] where ALARM_NUMBER in ('3379') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='UPE'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_UPE al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE] where ALARM_NUMBER in ('3379') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='UPW'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_UPW al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW] where ALARM_NUMBER in ('3379') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='ROB'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_ROB al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROB] where ALARM_NUMBER in ('3379') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='HARYANA'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_HARYANA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_HARYANA] where ALARM_NUMBER in ('3379') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end

	declare @fake as varchar(50),
	@type as varchar(20),
	@SUPL_INFO AS VARCHAR(50),
	@cgr_upart as varchar(30),
	@ip as varchar(20)

	declare @consec as bigint,
	@alarm_num as varchar(50),
	@supplementary_info as varchar(100),
	@ne_name as varchar(50),
	@bsc as varchar(50),
	@count as int,
	@alarm_time as datetime,
	@cancel_time as datetime ,
	@map_Ne as varchar(50),
	@nsvci as varchar(50)

	declare @et_count as bigint,
	@ncgr as varchar(50),
	@mgw as varchar(50),
	@CountE as bigint,
	@linkset varchar(50),
	@nbcrct varchar(50),
	@spc varchar(50)


	declare mycurl cursor
	for select consec_nbr,supplementary_info,ne_name,alarm_time,cancel_time,alarm_num from #temp
	open mycurl
	fetch next from mycurl into @consec,@supplementary_info,@ne_name,@alarm_time,@cancel_time,@alarm_num
	while @@FETCH_STATUS=0
	begin
	set @map_Ne=@ne_name
	select @type =[Node_Type] from [AWE_db_VFI_CS_DCM].dbo.Ne_Master where NE_NetAct_Name=@ne_name and Circle=@circle and Domain='cs';
	
	select @ip = LTRIM(RTRIM(NE_IP)) from [AWE_db_VFI_CS_DCM].dbo.Ne_Master where NE_NetAct_Name=@ne_name and Circle=@circle and Domain='cs';	

	select @supl_info = LTRIM(RTRIM(SUBSTRING(@supplementary_info,3,5)));

	if (@type='MSS' or @type='GCS')
	begin
	select @ncgr=(select distinct NCGR from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	select @mgw=(select distinct VMGW from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	select @nbcrct=(select distinct NBCRCT from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	select @spc=(select distinct MSS_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);	
	end

	if (@type='MGW')
	begin
	select @ncgr=(select distinct NCGR from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	select @mgw=(select distinct VMGW from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	select @nbcrct=(select distinct NBCRCT from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	select @spc=(select distinct MSS_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);	
	end


	if not exists(select consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec)
	begin
	if @supl_info=null or @supl_info='' or @supl_info is null or @supl_info='null'
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] (consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity) values(@consec,@CIRCLE,@map_Ne,'N/A','0','0','CS',@alarm_time,@cancel_time,'3379',@supl_info,'',dateadd(minute,150,getdate()),'NA');
	else
	begin
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info](consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity) values(@consec,@CIRCLE,@map_Ne,@ncgr,@nbcrct,@spc,'CS',@alarm_time,@cancel_time,'3379',@supl_info,'',dateadd(minute,150,getdate()),@mgw);
	end
	end

	set @ip='';
	set @bsc='';
	SET @et_count='0';
	set @nsvci='';
	set @cgr_upart='';
	set @CountE='0';
	set @ncgr='';
	
	fetch next from mycurl into @consec,@supplementary_info,@ne_name,@alarm_time,@cancel_time,@alarm_num
	end
	close mycurl
	deallocate mycurl

	drop table #temp;
	 end try
  
  begin catch
  
  ---rollback tran;
    declare @error int,@message varchar(4000),@xstate int;
    select @error= ERROR_NUMBER(),@MESSAGE=ERROR_MESSAGE(),@xstate=XACT_STATE();
     
     raiserror ('updatecsdcm_3379:%d:%s',16,1,@error,@message);
     return;
  end catch
END

GO
/****** Object:  StoredProcedure [dbo].[updateCSDcm_3937]    Script Date: 04-Apr-19 4:42:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- CREATE date: <CREATE Date,,>
-- Description:	<Description,,>
-- =============================================
--exec [dbo].[updateCSDcm_3937] 'ROTN'
CREATE procEDURE [dbo].[updateCSDcm_3937] 
	-- Add the parameters FOR the stored procedure here
	@circle varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- INSERT statements FOR procedure here
BEGIN TRY

	CREATE TABLE #temp
	(
	consec_nbr bigint,
	ne_name varchar(50),
	supplementary_info varchar(250),
	alarm_time datetime,
	cancel_time datetime,
	alarm_num varchar(50)
	)

	  IF @CIRCLE='AP'
	     BEGIN
	       INSERT into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP] where ALARM_NUMBER in (3937) and CONSEC_NBR not in(SELECT distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	     END
	  ELSE IF @CIRCLE='CHENNAI'
	     BEGIN
	       INSERT into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI] where ALARM_NUMBER in (3937) and CONSEC_NBR not in(SELECT distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	     END
	  ELSE IF @CIRCLE='MAHARASHTRA'
	     BEGIN
	      INSERT into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA] where ALARM_NUMBER in (3937) and CONSEC_NBR not in(SELECT distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	     END
	  ELSE IF @CIRCLE='GUJARAT'
	     BEGIN
	      INSERT into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT] where ALARM_NUMBER in (3937) and CONSEC_NBR not in(SELECT distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	     END
	  ELSE IF @CIRCLE='KARNATAKA'
	     BEGIN
	      INSERT into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA] where ALARM_NUMBER in (3937) and CONSEC_NBR not in(SELECT distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	     END
	  ELSE IF @CIRCLE='KERALA'
	     BEGIN
	      INSERT into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA] where ALARM_NUMBER in (3937) and CONSEC_NBR not in(SELECT distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	     END
	  ELSE IF @CIRCLE='RAJASTHAN'
	     BEGIN
	      INSERT into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN] where ALARM_NUMBER in (3937) and CONSEC_NBR not in(SELECT distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	     END
	  ELSE IF @CIRCLE='ROTN'
	     BEGIN
	      INSERT into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN] where ALARM_NUMBER in (3937) and CONSEC_NBR not in(SELECT distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	     END
      ELSE IF @CIRCLE='UPE'
	     BEGIN
          INSERT into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE] where ALARM_NUMBER in (3937) and CONSEC_NBR not in(SELECT distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	     END
	  ELSE IF @CIRCLE='UPW'
         BEGIN
	      INSERT into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW] where ALARM_NUMBER in (3937) and CONSEC_NBR not in(SELECT distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	     END
	     ELSE IF @CIRCLE='ROB'
         BEGIN
	      INSERT into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROB] where ALARM_NUMBER in (3937) and CONSEC_NBR not in(SELECT distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	     END
	     ELSE IF @CIRCLE='HARYANA'
         BEGIN
	      INSERT into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_HARYANA] where ALARM_NUMBER in (1001) and CONSEC_NBR not in(SELECT distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	     END
	     
	DECLARE @fake as varchar(50),@net as varchar(20),@type as varchar(20),@SUPL_INFO AS nvarchar(250),@cgr_upart as varchar(30),@ip as varchar(50)
	DECLARE @consec as bigint,@alarm_num as varchar(50),@supplementary_info as nvarchar(250),@ne_name as varchar(50),@bsc as varchar(50),@count as int,@alarm_time as datetime,@cancel_time as datetime ,@map_Ne as varchar(50),@nsvci as nvarchar(50),@loc as varchar(50),@power_card as varchar(50),@split_data as varchar(50),@dataLen as int
	DECLARE mycurl cursor FAST_FORWARD
	FOR SELECT consec_nbr,supplementary_info,ne_name,alarm_time,cancel_time,alarm_num from #temp
	open mycurl
	FETCH next from mycurl into @consec,@supplementary_info,@ne_name,@alarm_time,@cancel_time,@alarm_num
	WHILE @@FETCH_STATUS=0
	BEGIN
	 IF(@alarm_num='3937')
	   BEGIN
	       --IF((SELECT 1 where @supplementary_info like '%VLRU-0-1%')=1)
	         --BEGIN			 
	              --SELECT  @SUPL_INFO = Substring(dbo.udf_GetNumeric(substring(@supplementary_info,9,len(@supplementary_info))),1,len(dbo.udf_GetNumeric(substring(@supplementary_info,9,len(@supplementary_info))))-1);
				  --SELECT @supplementary_info='VLRU-0-1';

				  --declare @supl_values as varchar(100) = RTRIM(Substring(LTRIM(SUBSTRING(@supplementary_info,CHARINDEX('/',@supplementary_info)+1,LEN(@supplementary_info))),1,LEN(LTRIM(SUBSTRING(@supplementary_info,CHARINDEX('/',@supplementary_info)+1,LEN(@supplementary_info))))-1));
                  --Select top 1 @split_data=SplitData from [dbo].[StringSplit](@supl_values,' ');
                  --select @supl_info = LTRIM(RTRIM(SUBSTRING(@split_data,1,8)));
				   --select @nsvci= convert(bigint,convert(varbinary,'0x'+@supl_info,1));

				  Select top 1 @split_data=SplitData from [dbo].[StringSplit](@supplementary_info,'/') where SplitData<>'';
				  select top 1 @supl_info= SplitData from [dbo].[StringSplit](@split_data,'') where SplitData<>'';
				  select @dataLen = LEN(@supl_info);
				  if(@dataLen=1)
				  begin
				 select @nsvci=@SUPL_INFO;
				  end
				  else
				  begin
				  select @nsvci= convert(bigint,convert(varbinary,'0x'+@supl_info,1));
				  end				 
	              SELECT @type =[Node_Type],@ip=LTRIM(RTRIM(NE_IP)),@map_ne=NE_NetAct_Name from [AWE_db_VFI_CS_DCM].[dbo].[Ne_Master] where NE_NetAct_Name=@ne_name and Circle=@circle and Domain='cs';
				    			          	               
	            IF ( @type='MSS' or @type='GCS')
	              BEGIN
	  SELECT TOP 1 @bsc = bsc_name FROM (SELECT TOP 1 (CASE WHEN charindex(' ',VMGW)>0 THEN LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(VMGW),0,charindex(' ',REVERSE(VMGW),0))))) ELSE VMGW END) AS bsc_name 
		FROM AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING WHERE NE_NAME=@map_Ne AND VMGW_ID LIKE '%'+@nsvci+'%' 
		AND VMGW_ID IS NOT NULL AND ltrim(rtrim(VMGW_ID))<>'' AND CIRCLE=@circle) data;	

		--SELECT @count=(SELECT COUNT(distinct ROUTE_ID) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where MGW_NAME=@map_Ne and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');
		END

		IF ( @type='MGW' or @type='GMGW')
	              BEGIN
	  SELECT TOP 1 @bsc = bsc_name FROM (SELECT TOP 1 (CASE WHEN charindex(' ',MGW_VMGW)>0 THEN LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(MGW_VMGW),0,charindex(' ',REVERSE(MGW_VMGW),0))))) ELSE MGW_VMGW END) AS bsc_name 
		FROM AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING WHERE MGW_NAME=@map_Ne AND MGW_VMGW_ID LIKE '%'+@nsvci+'%' 
		AND MGW_VMGW_ID IS NOT NULL AND ltrim(rtrim(MGW_VMGW_ID))<>'' AND CIRCLE=@circle) data;	

		--SELECT @count=(SELECT COUNT(distinct ROUTE_ID) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where MGW_NAME=@map_Ne and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');
		END
			--	IF(@type='ATCA_MSS')
			--		BEGIN
			--SELECT TOP 1 @bsc = bsc_name,@loc = LOC,@power_card=POWER_CARD FROM (SELECT TOP 1 (CASE WHEN charindex(' ',UNIT)>0 THEN LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(UNIT),0,charindex(' ',REVERSE(UNIT),0))))) ELSE UNIT END) AS bsc_name,LOC,POWER_CARD
			--FROM AWE_db_VFI_CS_DCM.dbo.redundancy_subtrack_mss WHERE NE_NAME=@map_Ne AND UNIT LIKE '%'+@supplementary_info+'%' 
			--AND UNIT IS NOT NULL AND ltrim(rtrim(UNIT))<>'' AND CIRCLE=@circle) data;
			
			--SELECT @count=(SELECT COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where MGW_NAME=@map_Ne and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');
			--		END
	            IF EXISTS(SELECT consec_nbr FROM [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] WHERE consec_nbr=@consec and circle_name=@circle)
                   BEGIN
	                  select @fake=consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec;
	               END
	            ELSE
	             -- written column names on insert statement // saurabh
	               BEGIN
	                 IF (@bsc=null or @bsc='' or @bsc is null or @bsc='null')
	                     BEGIN
						  if(Not Exists(Select * from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] Where Consec_nbr=@consec))
						 BEGIN
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] (consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity)  values(@consec,@CIRCLE,@map_Ne,'Not in DB/'+@nsvci,'0','0','CS',@alarm_time,@cancel_time,@alarm_num,'',@nsvci,dateadd(minute,150,getdate()),'NA');
	                     END
						 END
	                 ELSE
	                     BEGIN
						 if(Not Exists(Select * from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] Where Consec_nbr=@consec))
						 BEGIN
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] (consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity)  values(@consec,@CIRCLE,@map_Ne,@bsc,'0','0','CS',@alarm_time,@cancel_time,@alarm_num,'H248',@nsvci,dateadd(minute,150,getdate()),'NA');
	                     END
						 END
	                END
	
	                set @bsc='';
	                set @count=0;
	                set @map_Ne='';
	                set @loc='';
					set @power_card='';
	               --
	          --END
	   END	
	 
      FETCH next from mycurl into @consec,@supplementary_info,@ne_name,@alarm_time,@cancel_time,@alarm_num
	END
	close mycurl
	deallocate mycurl
	drop TABLE #temp;
END TRY
BEGIN catch
    DECLARE @error int,@message varchar(4000),@xstate int;
    SELECT @error= ERROR_NUMBER(),@MESSAGE=ERROR_MESSAGE(),@xstate=XACT_STATE();
    raiserror ('UPDATECSDCM_3937:%d:%s',16,1,@error,@message);
    return;
END catch
END

GO
/****** Object:  StoredProcedure [dbo].[updateCSDcm_70159]    Script Date: 04-Apr-19 4:42:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
--exec [dbo].[updateCSDcm_70159] 'AP'
CREATE PROCEDURE [dbo].[updateCSDcm_70159] 
	-- Add the parameters for the stored procedure here
	@circle varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	begin try

	create table #temp
	(
	consec_nbr bigint,
	ne_name varchar(50),
	supplementary_info varchar(100),
	alarm_time datetime,
	cancel_time datetime,
	alarm_num varchar(50)
	)

	if @CIRCLE='AP'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_AP al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp select CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP] where ALARM_NUMBER in ('70159') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='CHENNAI'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_CHENNAI al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI] where ALARM_NUMBER in ('70159') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info) ;
	end
	else if @CIRCLE='MAHARASHTRA'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_MAHARASHTRA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA] where ALARM_NUMBER in ('70159') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='GUJARAT'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_GUJARAT al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT] where ALARM_NUMBER in ('70159') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='KARNATAKA'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_KARNATAKA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA] where ALARM_NUMBER in ('70159') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='KERALA'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_KERALA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA] where ALARM_NUMBER in ('70159') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='RAJASTHAN'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_RAJASTHAN al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN] where ALARM_NUMBER in ('70159') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='ROTN'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_ROTN al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN] where ALARM_NUMBER in ('70159') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='UPE'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_UPE al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE] where ALARM_NUMBER in ('70159') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='UPW'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_UPW al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW] where ALARM_NUMBER in ('70159') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='ROB'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_ROB al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROB] where ALARM_NUMBER in ('70159') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='HARYANA'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_HARYANA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_HARYANA] where ALARM_NUMBER in ('70159') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end

	declare @fake as varchar(50),@type as varchar(20),@SUPL_INFO AS VARCHAR(50),@cgr_upart as varchar(30),@ip as varchar(20)
	declare @consec as bigint,@alarm_num as varchar(50),@supplementary_info as varchar(100),@ne_name as varchar(50),@bsc as varchar(50),@count as int,@alarm_time as datetime,@cancel_time as datetime ,@map_Ne as varchar(50),@nsvci as varchar(50)
	declare @et_count as bigint,@ncgr as varchar(50),@mgw as varchar(50),@CountE as bigint,@linkset varchar(50), @nbcrct varchar(50),@spc varchar(50)


	declare mycurl cursor
	for select consec_nbr,supplementary_info,ne_name,alarm_time,cancel_time,alarm_num from #temp
	open mycurl
	fetch next from mycurl into @consec,@supplementary_info,@ne_name,@alarm_time,@cancel_time,@alarm_num
	while @@FETCH_STATUS=0
	begin
	set @map_Ne=@ne_name
	select @type =[Node_Type] from [AWE_db_VFI_CS_DCM].dbo.Ne_Master where NE_NetAct_Name=@ne_name and Circle=@circle and Domain='cs';
	
	select @ip = LTRIM(RTRIM(NE_IP)) from [AWE_db_VFI_CS_DCM].dbo.Ne_Master where NE_NetAct_Name=@ne_name and Circle=@circle and Domain='cs';	

	select @supl_info = LTRIM(RTRIM(SUBSTRING(@supplementary_info,3,5)));
	--select @nsvci= convert(int,convert(varbinary,'0x'+@supl_info,1));
	-- if @nsvci like'%d'
	-- begin
	-- select @nsvci=LTRIM(RTRIM(SUBSTRING(@supplementary_info,0,4)));
	-- end

	if (@type='MSS' or @type='GCS')
	begin
	--set @CountE=0;
	--select top 1 @bsc=LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and LINK like'%'+@supl_info+'%' and CIRCLE=@circle and LINKSET is not null and ltrim(rtrim(LINKSET))<>'';
	--select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');

	--select @et_count=(select COUNT(distinct ET) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	--set @et_count=@et_count*31;
	--select @ncgr=(select distinct NCGR from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where ELEMENT_IP=@ip and CIRCLE=@circle AND CGR =@supl_info);
	select @ncgr=(select distinct NCGR from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	select @mgw=(select distinct VMGW from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	select @nbcrct=(select distinct NBCRCT from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	select @spc=(select distinct MSS_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);	
	end

	if (@type='MGW')
	begin
	--set @CountE=0;
	--select top 1 @bsc=LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and LINK like'%'+@supl_info+'%' and CIRCLE=@circle and LINKSET is not null and ltrim(rtrim(LINKSET))<>'';
	--select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');

	--select @et_count=(select COUNT(distinct ET) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	--set @et_count=@et_count*31;
	--select @ncgr=(select distinct NCGR from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where ELEMENT_IP=@ip and CIRCLE=@circle AND CGR =@supl_info);
	select @ncgr=(select distinct NCGR from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	select @mgw=(select distinct VMGW from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	select @nbcrct=(select distinct NBCRCT from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	select @spc=(select distinct MSS_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);	
	end

	--if @circle='GUJARAT'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))
	
	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	
	--end
	--else if @circle='AP'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))

	-----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='MAHARASHTRA'
	--begin


	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))

	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='CHENNAI'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))

	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	-- else if @circle='ROTN'
	--if @circle='ROTN'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='KERALA'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='RAJASTHAN'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))

	-----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='KARNATAKA'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='UPE'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='UPW'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--set @CountE=@CountE*31;

	
	--if @CountE=null or @CountE is null
	--begin
	--set @CountE=0;
	--end

	--if @et_count=null or @et_count is null
	--begin
	--set @et_count=0;
	--end
	
	--end
	
	--else if @type='MSC'
	--begin
	--set @CountE=0;
	----select @map_Ne=ne_name from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and CIRCLE=@circle and NE_NAME<>'';
	----select top 1 @bsc=LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))),@cgr_upart=CGR_UPART from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and LINK like'%'+@nsvci+'%' and CIRCLE=@circle and LINKSET is not null and ltrim(rtrim(LINKSET))<>'';
	----select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSC where  ELEMENT_IP=@ip and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');
	--select @et_count=(select COUNT(distinct ET) from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and CIRCLE=@circle AND CGR =@nsvci);
	--set @et_count=@et_count*31;
	--select @ncgr=(select distinct NCGR from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and CIRCLE=@circle AND CGR =@nsvci);
	--select @mgw=(select distinct NE_NAME from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and CIRCLE=@circle AND CGR =@nsvci);
	
	--if @circle='GUJARAT'
	--begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='AP'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='MAHARASHTRA'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='CHENNAI'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='ROTN'
	--if @circle='ROTN'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	----else if @circle='KERALA'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))



	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='RAJASTHAN'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='KARNATAKA'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='UPE'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='UPW'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))



	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--set @CountE=@CountE*31;

	--if @CountE=null or @CountE is null
	--begin
	--set @CountE=0;
	--end

	--if @et_count=null or @et_count is null
	--begin
	--set @et_count=0;
	--end


	--end
	
	--if exists(select consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec and circle_name=@circle)
	--begin
	--select @fake=consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec;
	--end
	--else
	--begin
	
	--insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] values(@consec,@CIRCLE,@map_Ne,@ncgr,@et_count,@CountE,'CS',@alarm_time,@cancel_time,'70159','',@nsvci,dateadd(minute,150,getdate()),@mgw);
	--set @CountE=0;
	--end


	if not exists(select consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec)
	begin
	if @supl_info=null or @supl_info='' or @supl_info is null or @supl_info='null'
	-- written column names on insert statement // saurabh
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] (consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity) values(@consec,@CIRCLE,@map_Ne,'N/A','0','0','CS',@alarm_time,@cancel_time,'70159',@supl_info,'',dateadd(minute,150,getdate()),'NA');
	else
	begin
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info](consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity) values(@consec,@CIRCLE,@map_Ne,@ncgr,@nbcrct,@spc,'CS',@alarm_time,@cancel_time,'70159',@supl_info,'',dateadd(minute,150,getdate()),@mgw);
	end
	end

	set @ip='';
	set @bsc='';
	SET @et_count='0';
	set @nsvci='';
	set @cgr_upart='';
	set @CountE='0';
	set @ncgr='';
	
	fetch next from mycurl into @consec,@supplementary_info,@ne_name,@alarm_time,@cancel_time,@alarm_num
	end
	close mycurl
	deallocate mycurl

	drop table #temp;
	 end try
  
  begin catch
  
  ---rollback tran;
    declare @error int,@message varchar(4000),@xstate int;
    select @error= ERROR_NUMBER(),@MESSAGE=ERROR_MESSAGE(),@xstate=XACT_STATE();
     
     raiserror ('updatecsdcm_70159:%d:%s',16,1,@error,@message);
     return;
  end catch
END

GO
/****** Object:  StoredProcedure [dbo].[updateCSDcm_70194]    Script Date: 04-Apr-19 4:42:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
--exec [dbo].[updateCSDcm_70194] 'AP'
CREATE PROCEDURE [dbo].[updateCSDcm_70194] 
	-- Add the parameters for the stored procedure here
	@circle varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	begin try

	create table #temp
	(
	consec_nbr bigint,
	ne_name varchar(50),
	supplementary_info varchar(100),
	alarm_time datetime,
	cancel_time datetime,
	alarm_num varchar(50)
	)

	if @CIRCLE='AP'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_AP al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp select CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP] where ALARM_NUMBER in ('70194') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='CHENNAI'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_CHENNAI al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI] where ALARM_NUMBER in ('70194') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info) ;
	end
	else if @CIRCLE='MAHARASHTRA'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_MAHARASHTRA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA] where ALARM_NUMBER in ('70194') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='GUJARAT'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_GUJARAT al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT] where ALARM_NUMBER in ('70194') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='KARNATAKA'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_KARNATAKA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA] where ALARM_NUMBER in ('70194') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='KERALA'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_KERALA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA] where ALARM_NUMBER in ('70194') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='RAJASTHAN'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_RAJASTHAN al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN] where ALARM_NUMBER in ('70194') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='ROTN'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_ROTN al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN] where ALARM_NUMBER in ('70194') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='UPE'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_UPE al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE] where ALARM_NUMBER in ('70194') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='UPW'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_UPW al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW] where ALARM_NUMBER in ('70194') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='ROB'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_ROB al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROB] where ALARM_NUMBER in ('70194') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end
	else if @CIRCLE='HARYANA'
	begin
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_HARYANA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_HARYANA] where ALARM_NUMBER in ('70194') and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info);
	end

	declare @fake as varchar(50),@type as varchar(20),@SUPL_INFO AS VARCHAR(50),@cgr_upart as varchar(30),@ip as varchar(20)
	declare @consec as bigint,@alarm_num as varchar(50),@supplementary_info as varchar(100),@ne_name as varchar(50),@bsc as varchar(50),@count as int,@alarm_time as datetime,@cancel_time as datetime ,@map_Ne as varchar(50),@nsvci as varchar(50)
	declare @et_count as bigint,@ncgr as varchar(50),@mgw as varchar(50),@CountE as bigint,@linkset varchar(50), @nbcrct varchar(50),@spc varchar(50)


	declare mycurl cursor
	for select consec_nbr,supplementary_info,ne_name,alarm_time,cancel_time,alarm_num from #temp
	open mycurl
	fetch next from mycurl into @consec,@supplementary_info,@ne_name,@alarm_time,@cancel_time,@alarm_num
	while @@FETCH_STATUS=0
	begin
	set @map_Ne=@ne_name
	select @type =[Node_Type] from [AWE_db_VFI_CS_DCM].dbo.Ne_Master where NE_NetAct_Name=@ne_name and Circle=@circle and Domain='cs';
	
	select @ip = LTRIM(RTRIM(NE_IP)) from [AWE_db_VFI_CS_DCM].dbo.Ne_Master where NE_NetAct_Name=@ne_name and Circle=@circle and Domain='cs';	

	select @supl_info = LTRIM(RTRIM(SUBSTRING(@supplementary_info,3,5)));
	--select @nsvci= convert(int,convert(varbinary,'0x'+@supl_info,1));
	-- if @nsvci like'%d'
	-- begin
	-- select @nsvci=LTRIM(RTRIM(SUBSTRING(@supplementary_info,0,4)));
	-- end

	if (@type='MSS' or @type='GCS')
	begin
	--set @CountE=0;
	--select top 1 @bsc=LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and LINK like'%'+@supl_info+'%' and CIRCLE=@circle and LINKSET is not null and ltrim(rtrim(LINKSET))<>'';
	--select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');

	--select @et_count=(select COUNT(distinct ET) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	--set @et_count=@et_count*31;
	--select @ncgr=(select distinct NCGR from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where ELEMENT_IP=@ip and CIRCLE=@circle AND CGR =@supl_info);
	select @ncgr=(select distinct NCGR from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	select @mgw=(select distinct VMGW from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	select @nbcrct=(select distinct NBCRCT from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	select @spc=(select distinct MSS_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);	
	end

	if (@type='MGW')
	begin
	--set @CountE=0;
	--select top 1 @bsc=LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and LINK like'%'+@supl_info+'%' and CIRCLE=@circle and LINKSET is not null and ltrim(rtrim(LINKSET))<>'';
	--select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSS_Link where ELEMENT_IP=@ip and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');

	--select @et_count=(select COUNT(distinct ET) from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	--set @et_count=@et_count*31;
	--select @ncgr=(select distinct NCGR from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where ELEMENT_IP=@ip and CIRCLE=@circle AND CGR =@supl_info);
	select @ncgr=(select distinct NCGR from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	select @mgw=(select distinct VMGW from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	select @nbcrct=(select distinct NBCRCT from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);
	select @spc=(select distinct MSS_SPC from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where CIRCLE=@circle AND CGR =@supl_info);	
	end

	--if @circle='GUJARAT'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))
	
	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	
	--end
	--else if @circle='AP'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))

	-----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='MAHARASHTRA'
	--begin


	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))

	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='CHENNAI'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))

	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	-- else if @circle='ROTN'
	--if @circle='ROTN'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='KERALA'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='RAJASTHAN'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))

	-----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='KARNATAKA'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='UPE'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--else if @circle='UPW'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSS_MGW_MAPPING where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--set @CountE=@CountE*31;

	
	--if @CountE=null or @CountE is null
	--begin
	--set @CountE=0;
	--end

	--if @et_count=null or @et_count is null
	--begin
	--set @et_count=0;
	--end
	
	--end
	
	--else if @type='MSC'
	--begin
	--set @CountE=0;
	----select @map_Ne=ne_name from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and CIRCLE=@circle and NE_NAME<>'';
	----select top 1 @bsc=LTRIM(RTRIM(reverse(SUBSTRING(REVERSE(LINKSET),0,charindex(' ',REVERSE(LINKSET),0))))),@cgr_upart=CGR_UPART from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and LINK like'%'+@nsvci+'%' and CIRCLE=@circle and LINKSET is not null and ltrim(rtrim(LINKSET))<>'';
	----select @count=(select COUNT(distinct link) from AWE_db_VFI_CS_DCM.dbo.MSC where  ELEMENT_IP=@ip and CIRCLE=@circle AND LINKSET LIKE'%'+@bsc+'%');
	--select @et_count=(select COUNT(distinct ET) from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and CIRCLE=@circle AND CGR =@nsvci);
	--set @et_count=@et_count*31;
	--select @ncgr=(select distinct NCGR from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and CIRCLE=@circle AND CGR =@nsvci);
	--select @mgw=(select distinct NE_NAME from AWE_db_VFI_CS_DCM.dbo.MSC where ELEMENT_IP=@ip and CIRCLE=@circle AND CGR =@nsvci);
	
	--if @circle='GUJARAT'
	--begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='AP'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='MAHARASHTRA'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='CHENNAI'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='ROTN'
	--if @circle='ROTN'
	--begin

	--SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	--FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN]
 --   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 --   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	----else if @circle='KERALA'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))



	----SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='RAJASTHAN'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='KARNATAKA'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='UPE'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))


	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	----end
	----else if @circle='UPW'
	----begin

	----SELECT @CountE=(select count( e.cet) from (select distinct CONVERT(float,LTRIM(rtrim( SUBSTRING(SUPPLEMENTARY_INFO,3,CHARINDEX('d', SUPPLEMENTARY_INFO,0)-3)))) cet 
	----FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW]
 ----   where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate()))) e 

 ----   where e.cet in(select distinct ET from AWE_db_VFI_CS_DCM.dbo.MSC where NE_NAME=@mgw and CIRCLE=@circle AND CGR =@nsvci))



	------SELECT @CountE=(select count(distinct SUBSTRING(SUPPLEMENTARY_INFO,3,5))FROM [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW]where ALARM_NUMBER like'29%' and ne_name=@mgw and CIRCLE_NAME=@circle and ALARM_TIME>convert(datetime,dateadd(HOUR,-1,getdate())))
	--end
	--set @CountE=@CountE*31;

	--if @CountE=null or @CountE is null
	--begin
	--set @CountE=0;
	--end

	--if @et_count=null or @et_count is null
	--begin
	--set @et_count=0;
	--end


	--end
	
	--if exists(select consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec and circle_name=@circle)
	--begin
	--select @fake=consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec;
	--end
	--else
	--begin
	
	--insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] values(@consec,@CIRCLE,@map_Ne,@ncgr,@et_count,@CountE,'CS',@alarm_time,@cancel_time,'70194','',@nsvci,dateadd(minute,150,getdate()),@mgw);
	--set @CountE=0;
	--end


	if not exists(select consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec)
	begin
	if @supl_info=null or @supl_info='' or @supl_info is null or @supl_info='null'
	-- written column names on insert statement // saurabh
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] (consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity) values(@consec,@CIRCLE,@map_Ne,'N/A','0','0','CS',@alarm_time,@cancel_time,'70194',@supl_info,'',dateadd(minute,150,getdate()),'NA');
	else
	begin
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info](consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity) values(@consec,@CIRCLE,@map_Ne,@ncgr,@nbcrct,@spc,'CS',@alarm_time,@cancel_time,'70194',@supl_info,'',dateadd(minute,150,getdate()),@mgw);
	end
	end

	set @ip='';
	set @bsc='';
	SET @et_count='0';
	set @nsvci='';
	set @cgr_upart='';
	set @CountE='0';
	set @ncgr='';
	
	fetch next from mycurl into @consec,@supplementary_info,@ne_name,@alarm_time,@cancel_time,@alarm_num
	end
	close mycurl
	deallocate mycurl

	drop table #temp;
	 end try
  
  begin catch
  
  ---rollback tran;
    declare @error int,@message varchar(4000),@xstate int;
    select @error= ERROR_NUMBER(),@MESSAGE=ERROR_MESSAGE(),@xstate=XACT_STATE();
     
     raiserror ('updatecsdcm_70194:%d:%s',16,1,@error,@message);
     return;
  end catch
END

GO
/****** Object:  StoredProcedure [dbo].[updatePacoDCM_3019]    Script Date: 04-Apr-19 4:42:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	Implemented check for bsc='' for counts
-- =============================================
CREATE procEDURE [dbo].[updatePacoDCM_3019] 
	@CIRCLE VARCHAR (50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	create table #temp
	(
	consec_nbr bigint,
	supplementary_info varchar(100),
	ne_name varchar(50),
	alarm_time datetime,
	cancel_time datetime
	)

	create table #temp1
	(
	consec_nbr bigint,
	supplementary_info varchar(100),
	ne_name varchar(50),
	alarm_time datetime,
	cancel_time datetime
	)

	if @CIRCLE='AP'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_AP al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= SYSDATETIME(), UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_AP al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR and LOCAL_ACK is not null ; 
	insert into #temp select consec_nbr,SUPPLEMENTARY_INFO,ne_name,ALARM_TIME,CANCEL_TIME from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP] where ALARM_NUMBER='3019' and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='CHENNAI'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_CHENNAI al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= SYSDATETIME(), UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_CHENNAI al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR and LOCAL_ACK is not null ; 
	insert into #temp SELECT consec_nbr,SUPPLEMENTARY_INFO,ne_name,ALARM_TIME,CANCEL_TIME from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI] where ALARM_NUMBER='3019' and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='MAHARASHTRA'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_MAHARASHTRA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= SYSDATETIME(), UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_MAHARASHTRA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR and LOCAL_ACK is not null ; 
	insert into #temp SELECT consec_nbr,SUPPLEMENTARY_INFO,ne_name,ALARM_TIME,CANCEL_TIME from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA] where ALARM_NUMBER='3019' and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='GUJARAT'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_GUJARAT al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= SYSDATETIME(), UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_GUJARAT al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR and LOCAL_ACK is not null ; 
	insert into #temp SELECT consec_nbr,SUPPLEMENTARY_INFO,ne_name,ALARM_TIME,CANCEL_TIME from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT] where ALARM_NUMBER='3019' and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='KARNATAKA'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_KARNATAKA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= SYSDATETIME(), UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_KARNATAKA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR and LOCAL_ACK is not null ; 
	insert into #temp SELECT consec_nbr,SUPPLEMENTARY_INFO,ne_name,ALARM_TIME,CANCEL_TIME from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA] where ALARM_NUMBER='3019' and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='KERALA'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_KERALA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= SYSDATETIME(), UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_KERALA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR and LOCAL_ACK is not null ; 
	insert into #temp SELECT consec_nbr,SUPPLEMENTARY_INFO,ne_name,ALARM_TIME,CANCEL_TIME from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA] where ALARM_NUMBER='3019' and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='RAJASTHAN'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_RAJASTHAN al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= SYSDATETIME(), UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_RAJASTHAN al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR and LOCAL_ACK is not null ; 
	insert into #temp SELECT consec_nbr,SUPPLEMENTARY_INFO,ne_name,ALARM_TIME,CANCEL_TIME from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN] where ALARM_NUMBER='3019' and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='ROTN'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_ROTN al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ;
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= SYSDATETIME(), UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_ROTN al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR and LOCAL_ACK is not null ;  
	insert into #temp SELECT consec_nbr,SUPPLEMENTARY_INFO,ne_name,ALARM_TIME,CANCEL_TIME from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN] where ALARM_NUMBER='3019' and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='UPE'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_UPE al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= SYSDATETIME(), UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_UPE al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR and LOCAL_ACK is not null ; 
	insert into #temp SELECT consec_nbr,SUPPLEMENTARY_INFO,ne_name,ALARM_TIME,CANCEL_TIME from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE] where ALARM_NUMBER='3019' and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='UPW'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_UPW al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= SYSDATETIME(), UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_UPW al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR and LOCAL_ACK is not null ; 
	insert into #temp SELECT consec_nbr,SUPPLEMENTARY_INFO,ne_name,ALARM_TIME,CANCEL_TIME from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW] where ALARM_NUMBER='3019' and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='ROB'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_ROB al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= SYSDATETIME(), UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_ROB al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR and LOCAL_ACK is not null ; 
	insert into #temp SELECT consec_nbr,SUPPLEMENTARY_INFO,ne_name,ALARM_TIME,CANCEL_TIME from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROB] where ALARM_NUMBER='3019' and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='HARYANA'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_HARYANA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= SYSDATETIME(), UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_HARYANA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR and LOCAL_ACK is not null ; 
	insert into #temp SELECT consec_nbr,SUPPLEMENTARY_INFO,ne_name,ALARM_TIME,CANCEL_TIME from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_HARYANA] where ALARM_NUMBER='3019' and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end

	declare @fake as varchar(10)
	declare @consec as bigint,@supplementary_info as varchar(100),@ne_name as varchar(50),@bsc as varchar(50),@count as int,@alarm_time as datetime,@cancel_time as datetime ,@map_Ne as varchar(50),@nsvci as varchar(50)
	declare mycurl cursor FAST_FORWARD
	for select consec_nbr,supplementary_info,ne_name,alarm_time,cancel_time from #temp
	open mycurl
	fetch next from mycurl into @consec,@supplementary_info,@ne_name,@alarm_time,@cancel_time
	while @@FETCH_STATUS=0
	begin

	begin try
	select @nsvci= convert(int,convert(varbinary,'0x'+@supplementary_info,1));
	--select @map_Ne =[NE_NAME] from [AWE_db_VFI_CS_DCM].dbo.Ne_Master where NE_NetAct_Name=ltrim(rtrim(@ne_name)) and Circle=@CIRCLE;
	SELECT top 1 @map_ne=dcm_nename FROM [AWE_db_VFI_CS_DCM].[dbo].[DCM_MAP_NE_NAME] where ne_name=ltrim(rtrim(@ne_name)) and circle=@CIRCLE;
	
	select @bsc=[bsc] from [AWE_db_VFI_CS_DCM].[dbo].tblsgsn_nsvci where (NSEI='0'+@nsvci or NSEI='00'+@nsvci or NSEI=@nsvci) and NE_NAME=ltrim(rtrim(@map_Ne)) and CIRCLE=@CIRCLE;
	select @count =count(distinct nsei) from [AWE_db_VFI_CS_DCM].[dbo].tblsgsn_nsvci where bsc=@bsc and NE_NAME=ltrim(rtrim(@map_Ne));
	if exists(select consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec)
	begin
	select @fake=consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec;
	end
	else
	-- written column names on insert statement // saurabh
	begin
	if @bsc='' or @bsc=null or @bsc is null or @bsc='null'
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] (consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity)  values(@consec,@CIRCLE,@map_Ne,'Not in DB/'+@nsvci,0,1,'PS',@alarm_time,@cancel_time,'3019','BSC',@nsvci,dateadd(minute,150,getdate()),'NA');
	else
	begin
	declare @value as varchar(45),@ns as varchar(45)
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] (consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity)  values(@consec,@CIRCLE,@map_Ne,@bsc,@count,1,'PS',@alarm_time,@cancel_time,'3019','BSC',@nsvci,dateadd(minute,150,getdate()),'NA');
	select @value=COUNT(down) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where bsc_name=@bsc and ne_name=@map_Ne and cancel_time is null and circle_name=@CIRCLE and alarm_number='3019';
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set down=@value, UpdateTimestamp=dateadd(minute,150,getdate()) where bsc_name=@bsc and ne_name=@map_Ne and circle_name=@CIRCLE and alarm_number='3019';
	end
	end
	end try

	begin catch
	declare @error int,@message varchar(300),@xstate int;
	select @error=ERROR_NUMBER(),@message=ERROR_MESSAGE(),@xstate=ERROR_STATE();
	
	
	end catch
	set @nsvci='';
	set @map_ne='';
	set @bsc='';
	set @count='';
	set @consec='';

	fetch next from mycurl into @consec,@supplementary_info,@ne_name,@alarm_time,@cancel_time
	end
	close mycurl
	deallocate mycurl

END

GO
/****** Object:  StoredProcedure [dbo].[updatePacoDCM_3020]    Script Date: 04-Apr-19 4:42:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procEDURE [dbo].[updatePacoDCM_3020]
	@CIRCLE VARCHAR (50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	create table #temp
	(
	consec_nbr bigint,
	supplementary_info varchar(100),
	ne_name varchar(50),
	alarm_time datetime,
	cancel_time datetime
	)

	create table #temp1
	(
	consec_nbr bigint,
	supplementary_info varchar(100),
	ne_name varchar(50),
	alarm_time datetime,
	cancel_time datetime
	)


if @CIRCLE='AP'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_AP al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= SYSDATETIME(), UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_AP al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR and LOCAL_ACK is not null ; 
	insert into #temp select consec_nbr,SUPPLEMENTARY_INFO,ne_name,ALARM_TIME,CANCEL_TIME from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP] where ALARM_NUMBER='3020' and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='CHENNAI'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_CHENNAI al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ;
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= SYSDATETIME(), UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_CHENNAI al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR and LOCAL_ACK is not null ;  
	insert into #temp SELECT consec_nbr,SUPPLEMENTARY_INFO,ne_name,ALARM_TIME,CANCEL_TIME from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI] where ALARM_NUMBER='3020' and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='MAHARASHTRA'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_MAHARASHTRA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ;
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= SYSDATETIME(), UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_MAHARASHTRA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR and LOCAL_ACK is not null ;  
	insert into #temp SELECT consec_nbr,SUPPLEMENTARY_INFO,ne_name,ALARM_TIME,CANCEL_TIME from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA] where ALARM_NUMBER='3020' and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='GUJARAT'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_GUJARAT al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= SYSDATETIME(), UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_GUJARAT al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR and LOCAL_ACK is not null ; 
	insert into #temp SELECT consec_nbr,SUPPLEMENTARY_INFO,ne_name,ALARM_TIME,CANCEL_TIME from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT] where ALARM_NUMBER='3020' and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='KARNATAKA'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_KARNATAKA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= SYSDATETIME(), UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_KARNATAKA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR and LOCAL_ACK is not null ; 
	insert into #temp SELECT consec_nbr,SUPPLEMENTARY_INFO,ne_name,ALARM_TIME,CANCEL_TIME from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA] where ALARM_NUMBER='3020' and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='KERALA'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_KERALA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= SYSDATETIME(), UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_KERALA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR and LOCAL_ACK is not null ; 
	insert into #temp SELECT consec_nbr,SUPPLEMENTARY_INFO,ne_name,ALARM_TIME,CANCEL_TIME from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA] where ALARM_NUMBER='3020' and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='RAJASTHAN'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_RAJASTHAN al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= SYSDATETIME(), UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_RAJASTHAN al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR and LOCAL_ACK is not null ; 
	insert into #temp SELECT consec_nbr,SUPPLEMENTARY_INFO,ne_name,ALARM_TIME,CANCEL_TIME from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN] where ALARM_NUMBER='3020' and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='ROTN'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_ROTN al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= SYSDATETIME(), UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_ROTN al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR and LOCAL_ACK is not null ; 
	insert into #temp SELECT consec_nbr,SUPPLEMENTARY_INFO,ne_name,ALARM_TIME,CANCEL_TIME from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN] where ALARM_NUMBER='3020' and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='UPE'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_UPE al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ; 
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= SYSDATETIME(), UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_UPE al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR and LOCAL_ACK is not null ; 
	insert into #temp SELECT consec_nbr,SUPPLEMENTARY_INFO,ne_name,ALARM_TIME,CANCEL_TIME from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE] where ALARM_NUMBER='3020' and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='UPW'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_UPW al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ;
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= SYSDATETIME(), UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_UPW al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR and LOCAL_ACK is not null ;  
	insert into #temp SELECT consec_nbr,SUPPLEMENTARY_INFO,ne_name,ALARM_TIME,CANCEL_TIME from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW] where ALARM_NUMBER='3020' and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='ROB'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_ROB al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ;
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= SYSDATETIME(), UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_ROB al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR and LOCAL_ACK is not null ;  
	insert into #temp SELECT consec_nbr,SUPPLEMENTARY_INFO,ne_name,ALARM_TIME,CANCEL_TIME from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROB] where ALARM_NUMBER='3020' and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
    else if @CIRCLE='HARYANA'
	begin
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= al.cancel_time, UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_HARYANA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR ;
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set cancel_time= SYSDATETIME(), UpdateTimestamp=dateadd(minute,150,getdate()) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] dcm join [AWE_db_VFI_NSS].[dbo].fxalarm_nss_HARYANA al  on dcm.consec_nbr=al.CONSEC_NBR  where dcm.consec_nbr=al.CONSEC_NBR and LOCAL_ACK is not null ;  
	insert into #temp SELECT consec_nbr,SUPPLEMENTARY_INFO,ne_name,ALARM_TIME,CANCEL_TIME from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_HARYANA] where ALARM_NUMBER='3020' and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	
	declare @fake as varchar(10)
	declare @consec as bigint,@supplementary_info as varchar(100),@ne_name as varchar(50),@bsc as varchar(50),@count as int,@alarm_time as datetime,@cancel_time as datetime ,@map_Ne as varchar(50),@nsvci as varchar(50)
	declare mycurl cursor FAST_FORWARD
	for select consec_nbr,supplementary_info,ne_name,alarm_time,cancel_time from #temp
	open mycurl
	fetch next from mycurl into @consec,@supplementary_info,@ne_name,@alarm_time,@cancel_time
	while @@FETCH_STATUS=0
	begin

	begin try
	select @nsvci= convert(int,convert(varbinary,'0x'+ltrim(rtrim(substring(@supplementary_info,5,5))),1));
	--select @map_Ne =[NE_NAME] from [AWE_db_VFI_CS_DCM].dbo.Ne_Master where NE_NetAct_Name=ltrim(rtrim(@ne_name)) and Circle=@CIRCLE;
	SELECT top 1 @map_ne=dcm_nename FROM [AWE_db_VFI_CS_DCM].[dbo].[DCM_MAP_NE_NAME] where ne_name=ltrim(rtrim(@ne_name)) and circle=@CIRCLE;
	
	select @bsc=[bsc] from [AWE_db_VFI_CS_DCM].[dbo].tblsgsn_nsvci where (NSEI='0'+ltrim(rtrim(@nsvci)) or NSEI='00'+ltrim(rtrim(@nsvci)) or NSEI=ltrim(rtrim(@nsvci))) and NE_NAME=ltrim(rtrim(@map_Ne)) and CIRCLE=@CIRCLE;
	select @count =count(distinct nsei) from [AWE_db_VFI_CS_DCM].[dbo].tblsgsn_nsvci where bsc=@bsc and NE_NAME=ltrim(rtrim(@map_Ne));
	if exists(select consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec)
	begin
	select @fake=consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec;
	end
	else
	begin
	if @bsc='' or @bsc=null or @bsc is null or @bsc='null'
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] (consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity) values(@consec,@CIRCLE,@map_Ne,'Not in DB/'+@nsvci,0,1,'PS',@alarm_time,@cancel_time,'3020','BSC',@nsvci,dateadd(minute,150,getdate()),'NA');
	else
	begin
	-- written column names on insert statement // saurabh
	declare @value as varchar(45),@ns as varchar(45),@nseiVar as varchar(45)
	insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] (consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity) values(@consec,@CIRCLE,@map_Ne,@bsc,@count,1,'PS',@alarm_time,@cancel_time,'3020','BSC',@nsvci,dateadd(minute,150,getdate()),'NA');
	select @value=count(*) from (select nsei from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where bsc_name=@bsc and ne_name=@map_Ne and cancel_time is null and circle_name=@CIRCLE and alarm_number='3020' group by nsei) db;
	
	update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set down=@value, UpdateTimestamp=dateadd(minute,150,getdate()) where bsc_name=@bsc and ne_name=@map_Ne and circle_name=@CIRCLE and alarm_number='3020';
	--insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] values(@consec,@CIRCLE,@map_Ne,@bsc,@count,1,'PS',@alarm_time,@cancel_time,'3020','BSC',@nsvci);
	--update [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] set down=(select count(down) from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where bsc_name=@bsc and ne_name=@map_Ne and cancel_time is null and circle_name=@CIRCLE and alarm_number='3020') where bsc_name=@bsc and ne_name=@map_Ne and circle_name=@CIRCLE and alarm_number='3020';
	end
	end
	end try

	begin catch
	declare @error int,@message varchar(300),@xstate int;
	select @error=ERROR_NUMBER(),@message=ERROR_MESSAGE(),@xstate=ERROR_STATE();
	
	
	end catch
	set @nsvci='';
	set @map_ne='';
	set @bsc='';
	set @count='';
	set @consec='';

	fetch next from mycurl into @consec,@supplementary_info,@ne_name,@alarm_time,@cancel_time
	end
	close mycurl
	deallocate mycurl
	drop table #temp;
	drop table #temp1;

END

GO
/****** Object:  StoredProcedure [dbo].[updatePSDcm_71503]    Script Date: 04-Apr-19 4:42:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE procEDURE [dbo].[updatePSDcm_71503] 
	-- Add the parameters for the stored procedure here
	@circle varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
begin try
    -- Insert statements for procedure here
	create table #temp
	(
	consec_nbr bigint,
	ne_name varchar(50),
	supplementary_info varchar(1000),
	alarm_time datetime,
	cancel_time datetime,
	alarm_num varchar(50)
	)

	if @CIRCLE='AP'
	begin
	insert into #temp select CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_AP] where ALARM_NUMBER in ('71503') and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='CHENNAI'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_CHENNAI] where ALARM_NUMBER in ('71503') and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='MAHARASHTRA'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_MAHARASHTRA] where ALARM_NUMBER in ('71503') and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='GUJARAT'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_GUJARAT] where ALARM_NUMBER in ('71503') and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='KARNATAKA'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KARNATAKA] where ALARM_NUMBER in ('71503') and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='KERALA'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_KERALA] where ALARM_NUMBER in ('71503') and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='RAJASTHAN'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_RAJASTHAN] where ALARM_NUMBER in ('71503') and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='ROTN'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROTN] where ALARM_NUMBER in ('71503') and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='UPE'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPE] where ALARM_NUMBER in ('71503') and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='UPW'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_UPW] where ALARM_NUMBER in ('71503') and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='ROB'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_ROB] where ALARM_NUMBER in ('71503') and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end
	else if @CIRCLE='HARYANA'
	begin
	insert into #temp SELECT CONSEC_NBR,NE_Name,SUPPLEMENTARY_INFO,ALARM_TIME,CANCEL_TIME,ALARM_NUMBER from [AWE_db_VFI_NSS].[dbo].[fxalarm_nss_HARYANA] where ALARM_NUMBER in ('71503') and CANCEL_TIME is null and ACKED_BY is null and CONSEC_NBR not in(select distinct CONSEC_NBR from AWE_db_VFI_CS_DCM.dbo.paco_dcm_info where circle_name=@CIRCLE);
	end

-----Cursor starts here.........

	declare @fake as varchar(50),@SUPL_INFO AS VARCHAR(50),@ip as varchar(20),@ec as varchar(50),@link_type as varchar(50),@NE AS VARCHAR(50),@COMP AS VARCHAR(50)
	declare @consec_nbr as bigint,@alarm_num as varchar(50),@supplementary_info as varchar(1000),@ne_name as varchar(50),@alarm_time as datetime,@cancel_time as datetime ,@map_Ne as varchar(50)
	declare mycur cursor FAST_FORWARD
	for select consec_nbr,supplementary_info,ne_name,alarm_time,cancel_time,alarm_num from #temp
	open mycur
	fetch next from mycur into @consec_nbr,@supplementary_info,@ne_name,@alarm_time,@cancel_time,@alarm_num
	while @@FETCH_STATUS=0
	begin
	
	 if exists(select consec_nbr from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec_nbr)
	   begin
	 
	     select @fake=consec_nbr  from [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] where consec_nbr=@consec_nbr;
	   end
	 else
	   begin
	     select @map_Ne =[NE_NAME] from [AWE_db_VFI_CS_DCM].dbo.Ne_Master where NE_NetAct_Name=@ne_name and Circle=@circle;

	
	     select @supl_info =LTRIM(RTRIM(SUBSTRING(@supplementary_info,46,9)));
		 if @SUPL_INFO <>'ALL CONNE' and LTRIM(RTRIM(SUBSTRING(@SUPL_INFO,0,3)))='cmd'
		 begin
	     select @ip=LTRIM(RTRIM(SUBSTRING(@supplementary_info,CHARINDEX('=',@supplementary_info,0)+1,charindex(':',@supplementary_info,charindex('=',@supplementary_info,0))-CHARINDEX('=',@supplementary_info,0)-1)));

	     select @ec=ec_detail from AWE_db_VFI_CS_DCM.dbo.apn_map where pri_server_ip=@ip;
	   if @ec='' or @ec is null or @ec='null'
	     begin
	      select @ec=SEC_EC from AWE_db_VFI_CS_DCM.dbo.apn_map where sec_server_ip=@ip;
	       if @ec='' or @ec is null or @ec='null'
	        begin
	         set @link_type=@ip;
	        end
	       else
	        begin
	         set @link_type=@ec+' '+@ip;
	        end
	    end
	  else
	   begin
	    set @link_type=@ec+' '+@ip;
	   end
	 end
	 else if @SUPL_INFO <>'ALL CONNE' and @SUPL_INFO='DIAMETER_'
	 begin
	 select @supl_info =LTRIM(RTRIM(SUBSTRING(@supplementary_info,46,13)));
       select @ip=LTRIM(RTRIM(SUBSTRING(@supplementary_info,CHARINDEX('=',@supplementary_info,0)+1,charindex(':',@supplementary_info,charindex('=',@supplementary_info,0))-CHARINDEX('=',@supplementary_info,0)-1)));
	    if LTRIM(RTRIM(SUBSTRING(@ip,8,1)))=':'
		begin
		select @ip=LTRIM(RTRIM(SUBSTRING(@supplementary_info,60,7)));
		end
	     select @ec=ec_detail from AWE_db_VFI_CS_DCM.dbo.apn_map where pri_server_ip=@ip;
	   if @ec='' or @ec is null or @ec='null'
	     begin
	      select @ec=SEC_EC from AWE_db_VFI_CS_DCM.dbo.apn_map where sec_server_ip=@ip;
	       if @ec='' or @ec is null or @ec='null'
	        begin
	         set @link_type=@ip;
	        end
	       else
	        begin
	         set @link_type=@ec+' '+@ip;
	        end
	    end
	  else
	   begin
	    set @link_type=@ec+' '+@ip;
	   end
	 end
	  else if @SUPL_INFO <>'ALL CONNE' and @SUPL_INFO='GTPC_SIG_'
	 begin
	 select @supl_info =LTRIM(RTRIM(SUBSTRING(@supplementary_info,46,13)));
       select @ip=LTRIM(RTRIM(SUBSTRING(@supplementary_info,CHARINDEX('=',@supplementary_info,0)+1,charindex(':',@supplementary_info,charindex('=',@supplementary_info,0))-CHARINDEX('=',@supplementary_info,0)-1)));
	    if LTRIM(RTRIM(SUBSTRING(@ip,8,1)))=':'
		begin
		select @ip=LTRIM(RTRIM(SUBSTRING(@supplementary_info,60,7)));
		end
	     select @NE=NE_NAME,@COMP=COMP_UNIT from AWE_db_VFI_CS_DCM.dbo.apn_map where PAPU_IP=@ip;
		 
	   if (@NE='' AND @COMP='') OR (@NE is null AND @COMP is null) OR (@NE='null' AND @COMP='null')
	     begin
	      --select @ec=SEC_EC from AWE_db_VFI_CS_DCM.dbo.apn_map where sec_server_ip=@ip;
	      -- if @ec='' or @ec is null or @ec='null'
	      --  begin
	      --   set @link_type=@ip;
	      --  end
	      -- else
	      --  begin
	      --   set @link_type=@ec+' '+@ip;
	      --  end
		  SET @link_type=@ip
	    end
	  else
	   begin
	    set @link_type=@NE+' '+@COMP;
	   end
	 end
	  if @ec='' or @ec is null or @ec='null'
	  -- written column names on insert statement // saurabh
	   begin
	    insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] (consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity)   values(@consec_nbr,@CIRCLE,@map_Ne,@ip,'0','0','PS',@alarm_time,@cancel_time,'71503',@SUPL_INFO,'',dateadd(minute,150,getdate()),'NA');
	   end
	   else if @ip='' or @ip is null or @ip='null'
	   begin
	     insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info](consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity)   values(@consec_nbr,@CIRCLE,@map_Ne,'NA','0','0','PS',@alarm_time,@cancel_time,'71503',@SUPL_INFO,'',dateadd(minute,150,getdate()),'NA');
	   end
      else
	   begin
	     insert into [AWE_db_VFI_CS_DCM].[dbo].[paco_dcm_info] (consec_nbr,circle_name,ne_name,bsc_name,total,down,domain,alarm_time,cancel_time,alarm_number,link_type,nsei,UpdateTimestamp,Alternate_Availablity)   values(@consec_nbr,@CIRCLE,@map_Ne,@link_type,'0','0','PS',@alarm_time,@cancel_time,'71503',@SUPL_INFO,'',dateadd(minute,150,getdate()),'NA');
	   end

	 end

	set @ec='';
	set @ip='';
	set @link_type='';

	fetch next from mycur into @consec_nbr,@supplementary_info,@ne_name,@alarm_time,@cancel_time,@alarm_num
	end
	close mycur
	deallocate mycur
 end try
  
  begin catch
  
  ---rollback tran;
    declare @error int,@message varchar(4000),@xstate int;
    select @error= ERROR_NUMBER(),@MESSAGE=ERROR_MESSAGE(),@xstate=XACT_STATE();
     
     raiserror ('updatepsdcm_71503:%d:%s',16,1,@error,@message);
     return;
  end catch
END

GO
