USE [DB_COS_CENTRAL]
GO
/****** 对象:  User [cosin]    脚本日期: 07/10/2015 12:02:22 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'cosin')
CREATE USER [cosin] FOR LOGIN [cosin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** 对象:  Table [dbo].[SolutionClass_a]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SolutionClass_a]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SolutionClass_a](
	[SluName] [nvarchar](50) NULL,
	[SluId] [int] IDENTITY(1,1) NOT NULL,
	[SluType] [nvarchar](10) NULL,
	[count] [int] NULL CONSTRAINT [DF_SolutionClass_a_count]  DEFAULT ((0)),
 CONSTRAINT [PK_SolutionClass_a] PRIMARY KEY CLUSTERED 
(
	[SluId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对象:  Table [dbo].[SolutionClass_b]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SolutionClass_b]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SolutionClass_b](
	[SluName] [nvarchar](50) NULL,
	[SluId] [int] IDENTITY(1,1) NOT NULL,
	[count] [int] NULL CONSTRAINT [DF_SolutionClass_b_count]  DEFAULT ((0)),
 CONSTRAINT [PK_SolutionClass_b] PRIMARY KEY CLUSTERED 
(
	[SluId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对象:  Table [dbo].[Solution3rdProduct]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Solution3rdProduct]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Solution3rdProduct](
	[SluId] [int] NULL,
	[CompName] [nvarchar](50) NULL,
	[ProductUrl] [nvarchar](100) NULL,
	[Num] [int] NULL
) ON [PRIMARY]
END
GO
/****** 对象:  Table [dbo].[REQUEST_RESULT_FACT]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[REQUEST_RESULT_FACT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[REQUEST_RESULT_FACT](
	[REQUEST_RESULT_ID] [int] IDENTITY(1,1) NOT NULL,
	[REQUEST_RESULT_NAME] [nvarchar](50) NULL,
 CONSTRAINT [PK_REQUEST_RESULT_FACT] PRIMARY KEY CLUSTERED 
(
	[REQUEST_RESULT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对象:  Table [dbo].[SolutionFact]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SolutionFact]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SolutionFact](
	[icon] [nvarchar](50) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[authprice] [int] NULL,
	[chargenumber] [int] NULL,
	[desp] [nvarchar](1000) NULL,
	[slutype] [nchar](10) NULL,
	[sluclassid] [nvarchar](50) NULL,
	[version] [nchar](10) NULL,
	[lastupdate] [datetime] NULL,
	[developer] [nvarchar](50) NULL,
	[developerwebsite] [nvarchar](100) NULL,
	[despimage] [nvarchar](100) NULL,
	[powertype] [int] NULL,
	[conntype] [int] NULL,
	[connecturl] [nvarchar](100) NULL,
	[slusubclassid] [int] NULL,
	[desp2] [nvarchar](3000) NULL,
	[videourl] [nvarchar](100) NULL,
	[docurl] [nvarchar](50) NULL,
	[ep_num] [int] NULL,
	[devid] [bigint] NULL,
 CONSTRAINT [PK_SolutionFact] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对象:  Table [dbo].[SolutionModeAbstract]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SolutionModeAbstract]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SolutionModeAbstract](
	[MethodName] [nvarchar](50) NULL,
	[MethodDesp] [nvarchar](100) NULL,
	[ModalOwner] [int] NULL
) ON [PRIMARY]
END
GO
/****** 对象:  Table [dbo].[REQUEST_TYPE_FACT]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[REQUEST_TYPE_FACT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[REQUEST_TYPE_FACT](
	[REQUEST_TYPE_ID] [int] IDENTITY(1,1) NOT NULL,
	[REQUEST_TYPE_DESCRIPTION] [nvarchar](50) NULL,
 CONSTRAINT [PK_REQUEST_TYPE_FACT] PRIMARY KEY CLUSTERED 
(
	[REQUEST_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对象:  StoredProcedure [dbo].[HCCU_Register_SP]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HCCU_Register_SP]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[HCCU_Register_SP]

@HCCU_UID NVARCHAR(50),
@HCCU_PSW NVARCHAR(50),
@HCCU_MAC_ID NVARCHAR(50),
@HCCU_ID INT OUTPUT

AS

IF NOT EXISTS(SELECT * FROM HCCU_FACT WHERE HCCU_UID=@HCCU_UID)BEGIN

	INSERT INTO HCCU_FACT
	(HCCU_UID,HCCU_PSW)
	VALUES
	(@HCCU_UID,@HCCU_PSW)

	SET @HCCU_ID = SCOPE_IDENTITY();


END ELSE BEGIN

	SET @HCCU_ID = 0;

END' 
END
GO
/****** 对象:  StoredProcedure [dbo].[HCCU_Login_SP]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HCCU_Login_SP]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[HCCU_Login_SP]

@HCCU_UID NVARCHAR(50),
@HCCU_PSW NVARCHAR(50),
@HCCU_MAC_ID NVARCHAR(50),
@RET NVARCHAR(100) OUTPUT

AS

DECLARE @HCCU_ID INT

IF EXISTS(SELECT * FROM HCCU_FACT WHERE HCCU_UID=@HCCU_UID AND SUBSTRING(HCCU_PSW,4,LEN(HCCU_PSW)-7)=SUBSTRING(@HCCU_PSW,4,LEN(@HCCU_PSW)-7))BEGIN

	SELECT @HCCU_ID = HCCU_ID FROM HCCU_FACT WHERE HCCU_UID=@HCCU_UID

	SET @RET = @HCCU_ID;


END ELSE BEGIN

	SET @RET=''0'';

END



' 
END
GO
/****** 对象:  StoredProcedure [dbo].[HCCU_ChangePassword_SP]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HCCU_ChangePassword_SP]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[HCCU_ChangePassword_SP]

@HCCU_ID INT,
@Old_Password NVARCHAR(50),
@New_Password NVARCHAR(50),
@RET INT OUTPUT

AS


IF EXISTS(SELECT * FROM HCCU_FACT WHERE HCCU_ID=@HCCU_ID AND SUBSTRING(HCCU_PSW,4,LEN(HCCU_PSW)-7)=SUBSTRING(@Old_Password,4,LEN(@Old_Password)-7))BEGIN

	UPDATE 	HCCU_FACT 
	SET HCCU_PSW = @New_Password
	WHERE HCCU_ID = @HCCU_ID

	SET @RET = 1;


END ELSE BEGIN

	SET @RET=0;

END' 
END
GO
/****** 对象:  StoredProcedure [dbo].[EPTYPE_Add_SP]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EPTYPE_Add_SP]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[EPTYPE_Add_SP]

@EP_TYPE_NAME NVARCHAR(50),
@EP_TYPE_DESCRIPTION NVARCHAR(2000),
@HCCU_ID INT,
@RET INT OUTPUT

AS

IF NOT EXISTS(SELECT * FROM ENDPOINT_TYPE_FACT WHERE EP_TYPE_NAME = @EP_TYPE_NAME AND HCCU_ID = @HCCU_ID)BEGIN

	INSERT INTO ENDPOINT_TYPE_FACT
	(EP_TYPE_NAME,EP_TYPE_DESCRIPTION,HCCU_ID)
	VALUES
	(@EP_TYPE_NAME,@EP_TYPE_DESCRIPTION,@HCCU_ID)

	SET @RET = SCOPE_IDENTITY();


END ELSE BEGIN

	SET @RET = 0;

END' 
END
GO
/****** 对象:  StoredProcedure [dbo].[EPTYPE_GetList_SP]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EPTYPE_GetList_SP]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create PROCEDURE [dbo].[EPTYPE_GetList_SP]

@HCCU_ID INT

AS

SELECT * FROM ENDPOINT_TYPE_FACT WHERE HCCU_ID = @HCCU_ID' 
END
GO
/****** 对象:  StoredProcedure [dbo].[PROD_Add_SP]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PROD_Add_SP]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[PROD_Add_SP]

@EP_PRODUCT_NAME NVARCHAR(50),
@EP_PRODUCT_DESCRIPTION NVARCHAR(2000),
@DEV_ID INT,
@RET1 BIGINT OUTPUT,
@RET2 INT OUTPUT

AS

BEGIN TRANSACTION

BEGIN TRY

IF NOT EXISTS(SELECT * FROM ENDPOINT_PRODUCT_FACT WHERE EP_PRODUCT_NAME = @EP_PRODUCT_NAME AND DEV_ID = @DEV_ID)BEGIN


	DECLARE @TABLENAME NVARCHAR(50);
	DECLARE @PREFIX NVARCHAR(50);
	DECLARE @TABLEID BIGINT;
	DECLARE @SQLTXT NVARCHAR(1000);

	SET @PREFIX = ''[DB_COS_PROPERTY].dbo.EP_PRODUCT_'';	
	SET @TABLENAME = RTRIM(CAST(@DEV_ID AS NVARCHAR(20)))+ RTRIM(CAST(round(10000*rand(),0) AS NVARCHAR(20)));
	EXEC(''CREATE TABLE ''+@PREFIX+@TABLENAME+''(EP_ID BIGINT)''); 
	SELECT @TABLEID = OBJECT_ID FROM [DB_COS_PROPERTY].sys.objects WHERE TYPE=''U'' AND NAME = ''EP_PRODUCT_''+@TABLENAME

	INSERT INTO ENDPOINT_PRODUCT_FACT
	(EP_PRODUCT_NAME,EP_PRODUCT_DESCRIPTION,EP_PRODUCT_TABLEOBJECT_ID,DEV_ID)
	VALUES
	(@EP_PRODUCT_NAME,@EP_PRODUCT_DESCRIPTION,@TABLEID,@DEV_ID)

	SET @RET1 = @TABLEID;
	SET @RET2 = SCOPE_IDENTITY();


END ELSE BEGIN

	SET @RET1 = 0;
	SET @RET2 = 0;

END

COMMIT TRANSACTION

END TRY

BEGIN CATCH

	ROLLBACK TRANSACTION

END CATCH' 
END
GO
/****** 对象:  StoredProcedure [dbo].[EP_Add_SP]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EP_Add_SP]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[EP_Add_SP]

@EP_TypeId INT,
@EP_UserDefined_Alias NVARCHAR(50),
@EP_ProductId INT,
@HCCU_Id INT,
@EP_MAC_ID NVARCHAR(50),
@PARAFORMAT NVARCHAR(500),
@RET1 INT OUTPUT,
@RET2 INT OUTPUT,
@RET3 INT OUTPUT

AS

SET @RET3=0;

IF NOT EXISTS(SELECT * FROM ENDPOINT_FACT WHERE EP_MAC_ID=@EP_MAC_ID)BEGIN

		INSERT INTO ENDPOINT_FACT
		(EP_TYPEID,EP_USERDEFINED_ALIAS,EP_PRODUCTID,HCCU_ID,EP_MAC_ID,PARAFORMAT)
		VALUES
		(@EP_TypeId,@EP_UserDefined_Alias,@EP_ProductId,@HCCU_Id,@EP_MAC_ID,@PARAFORMAT)		

		SET @RET1 = SCOPE_IDENTITY();
		SET @RET2 = 1;

END ELSE BEGIN

		IF EXISTS(SELECT * FROM ENDPOINT_FACT WHERE EP_MAC_ID=@EP_MAC_ID AND HCCU_ID = @HCCU_Id)BEGIN

			SELECT @RET1 = EP_ID FROM ENDPOINT_FACT  WHERE EP_MAC_ID=@EP_MAC_ID
			SET @RET2 = 2;
		
		END ELSE BEGIN

			SELECT @RET3 = HCCU_ID FROM ENDPOINT_FACT WHERE EP_MAC_ID=@EP_MAC_ID

			UPDATE ENDPOINT_FACT SET HCCU_ID = @HCCU_Id 
			WHERE
			EP_MAC_ID=@EP_MAC_ID
			SELECT @RET1 = EP_ID FROM ENDPOINT_FACT  WHERE EP_MAC_ID=@EP_MAC_ID
			SET @RET2 = 3;
			
		END
END
' 
END
GO
/****** 对象:  StoredProcedure [dbo].[PROD_Edit_SP]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PROD_Edit_SP]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[PROD_Edit_SP]

@EP_PRODUCT_ID INT,
@EP_PRODUCT_NAME NVARCHAR(50),
@EP_PRODUCT_DESCRIPTION NVARCHAR(100),
@DEV_ID INT,
@RET INT OUTPUT

AS

UPDATE ENDPOINT_PRODUCT_FACT
SET 
EP_PRODUCT_NAME = @EP_PRODUCT_NAME,
EP_PRODUCT_DESCRIPTION = @EP_PRODUCT_DESCRIPTION
WHERE EP_PRODUCT_ID = @EP_PRODUCT_ID

SET @RET=1;' 
END
GO
/****** 对象:  Table [dbo].[ENDPOINT_PRODUCT_FACT]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ENDPOINT_PRODUCT_FACT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ENDPOINT_PRODUCT_FACT](
	[EP_PRODUCT_ID] [int] IDENTITY(1,1) NOT NULL,
	[EP_PRODUCT_NAME] [nvarchar](50) NULL,
	[EP_PRODUCT_DESCRIPTION] [nvarchar](2000) NULL,
	[EP_PRODUCT_TABLEOBJECT_ID] [bigint] NULL,
	[DEV_ID] [int] NULL,
 CONSTRAINT [PK_ENDPOINT_PRODUCT_FACT] PRIMARY KEY CLUSTERED 
(
	[EP_PRODUCT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对象:  Table [dbo].[ENDPOINT_TYPE_FACT]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ENDPOINT_TYPE_FACT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ENDPOINT_TYPE_FACT](
	[EP_TYPE_ID] [int] IDENTITY(1,1) NOT NULL,
	[EP_TYPE_NAME] [nvarchar](50) NULL,
	[EP_TYPE_DESCRIPTION] [nvarchar](2000) NULL,
	[HCCU_ID] [int] NULL,
 CONSTRAINT [PK_ENDPOINT_TYPE_FACT] PRIMARY KEY CLUSTERED 
(
	[EP_TYPE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对象:  StoredProcedure [dbo].[EP_Sync_SP]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EP_Sync_SP]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[EP_Sync_SP]

@HCCU_ID INT

AS

SELECT * FROM ENDPOINT_FACT WHERE HCCU_ID = @HCCU_ID' 
END
GO
/****** 对象:  UserDefinedFunction [dbo].[Split]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Split]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[Split](@String varchar(4000), @Delimiter char(1))
RETURNS @Results TABLE (ID int, Items nvarchar(4000))
AS

BEGIN
    DECLARE @INDEX INT
    DECLARE @SLICE nvarchar(4000)
    DECLARE @ID int

    SELECT @INDEX = 1, @ID = 1
    WHILE @INDEX !=0

        BEGIN
         -- GET THE INDEX OF THE FIRST OCCURENCE OF THE SPLIT CHARACTER
         SELECT @INDEX = CHARINDEX(@Delimiter,@STRING)
         -- NOW PUSH EVERYTHING TO THE LEFT OF IT INTO THE SLICE VARIABLE
         IF @INDEX !=0
          SELECT @SLICE = LEFT(@STRING,@INDEX - 1)
         ELSE
          SELECT @SLICE = @STRING
         -- PUT THE ITEM INTO THE RESULTS SET
         INSERT INTO @Results(ID, Items) VALUES(@ID, @SLICE)
         SELECT @ID = @ID + 1
         -- CHOP THE ITEM REMOVED OFF THE MAIN STRING
         SELECT @STRING = RIGHT(@STRING,LEN(@STRING) - @INDEX)
         -- BREAK OUT IF WE ARE DONE
         IF LEN(@STRING) = 0 BREAK
        END
		RETURN;
END
    ' 
END
GO
/****** 对象:  Table [dbo].[ENDPOINT_PRODUCT_CLASS_MAPPING]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ENDPOINT_PRODUCT_CLASS_MAPPING]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ENDPOINT_PRODUCT_CLASS_MAPPING](
	[ClassId] [int] NULL,
	[ProductId] [int] NULL
) ON [PRIMARY]
END
GO
/****** 对象:  Table [dbo].[ENDPOINT_PRODUCT_CLASS]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ENDPOINT_PRODUCT_CLASS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ENDPOINT_PRODUCT_CLASS](
	[ClassId] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [nvarchar](50) NULL,
	[ClassType] [int] NULL,
	[ClassParentName] [nvarchar](50) NULL,
	[ClassParentId] [int] NULL,
 CONSTRAINT [PK_ENDPOINT_PRODUCT_CLASS] PRIMARY KEY CLUSTERED 
(
	[ClassId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对象:  Table [dbo].[DC_PaymentFact]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DC_PaymentFact]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DC_PaymentFact](
	[MecId] [nvarchar](50) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PayDate] [datetime] NULL,
	[PayAmount] [int] NULL,
	[DeveloperId] [int] NULL,
	[PaymentSKU] [int] NULL,
 CONSTRAINT [PK_DC_PaymentFact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对象:  Table [dbo].[EP_PRODUCT_METHODS_FACT]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EP_PRODUCT_METHODS_FACT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EP_PRODUCT_METHODS_FACT](
	[MethodName] [nvarchar](50) NULL,
	[Modifier] [int] NULL,
	[ReturnType] [int] NULL,
	[ParaCollection] [nvarchar](100) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[EP_Product_Id] [int] NULL,
 CONSTRAINT [PK_EP_PRODUCT_METHODS_FACT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对象:  Table [dbo].[HCCU_MAC_FACT]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HCCU_MAC_FACT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HCCU_MAC_FACT](
	[IP] [nvarchar](50) NULL,
	[Port] [nvarchar](10) NULL,
	[HCCU_ID] [int] NULL,
	[HCCU_MAC] [nvarchar](50) NULL,
	[HCCU_MAC_STATUS] [int] NULL,
	[HCCU_MAC_ID] [int] IDENTITY(1,1) NOT NULL,
	[HCCU_LASTUPDATETIME] [datetime] NULL,
 CONSTRAINT [PK_HCCU_MAC_FACT] PRIMARY KEY CLUSTERED 
(
	[HCCU_MAC_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对象:  Table [dbo].[COS_Guide_Step]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COS_Guide_Step]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[COS_Guide_Step](
	[uid] [int] NULL,
	[CurrentStep] [int] NULL
) ON [PRIMARY]
END
GO
/****** 对象:  Table [dbo].[HCCU_FACT]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HCCU_FACT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HCCU_FACT](
	[HCCU_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[HCCU_UID] [nvarchar](50) NULL,
	[HCCU_PSW] [nvarchar](50) NULL,
	[HCCU_ACC_STATUS] [int] NULL CONSTRAINT [DF_HCCU_FACT_HCCU_ACC_STATUS]  DEFAULT ((0)),
 CONSTRAINT [PK_HCCU_FACT] PRIMARY KEY CLUSTERED 
(
	[HCCU_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对象:  Table [dbo].[SolutionProperty]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SolutionProperty]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SolutionProperty](
	[PropertyName] [nvarchar](50) NULL,
	[PropertyType] [nvarchar](50) NULL,
	[PropertyDesp] [nvarchar](500) NULL,
	[ModalOwner] [int] NULL
) ON [PRIMARY]
END
GO
/****** 对象:  Table [dbo].[SolutionMethod]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SolutionMethod]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SolutionMethod](
	[CodeSnippet] [nvarchar](4000) NULL,
	[ModalOwner] [int] NULL
) ON [PRIMARY]
END
GO
/****** 对象:  Table [dbo].[HCCU_REQUEST_LOGS]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HCCU_REQUEST_LOGS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HCCU_REQUEST_LOGS](
	[REQUEST_MAC_ID] [bigint] NULL,
	[REQUEST_IP] [nvarchar](20) NULL,
	[REQUEST_DATETIME] [datetime] NULL,
	[REQUEST_TYPE_ID] [int] NULL,
	[REQUEST_RESULT_ID] [int] NOT NULL,
	[REQUEST_METHOD_NAME] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
/****** 对象:  Table [dbo].[SolutionMode]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SolutionMode]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SolutionMode](
	[ModalName] [nvarchar](50) NULL,
	[ModalDesp] [nvarchar](500) NULL,
	[SolutionOwner] [int] NULL,
	[ModalClassId] [int] NULL,
	[ModalId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_SolutionMode] PRIMARY KEY CLUSTERED 
(
	[ModalId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对象:  Table [dbo].[ENDPOINT_FACT]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ENDPOINT_FACT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ENDPOINT_FACT](
	[EP_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[EP_TYPEID] [int] NULL,
	[EP_USERDEFINED_ALIAS] [nvarchar](50) NULL,
	[EP_PRODUCTID] [int] NULL,
	[HCCU_ID] [bigint] NULL,
	[EP_MAC_ID] [nvarchar](50) NULL,
	[ParaFormat] [nvarchar](500) NULL,
	[IP] [nvarchar](50) NULL CONSTRAINT [DF_ENDPOINT_FACT_IP]  DEFAULT ((0)),
 CONSTRAINT [PK_ENDPOINT_FACT] PRIMARY KEY CLUSTERED 
(
	[EP_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ENDPOINT_FACT]') AND name = N'IX_ENDPOINT_FACT')
CREATE NONCLUSTERED INDEX [IX_ENDPOINT_FACT] ON [dbo].[ENDPOINT_FACT] 
(
	[EP_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** 对象:  Table [dbo].[DC_DeveloperInfo]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DC_DeveloperInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DC_DeveloperInfo](
	[DeveloperId] [bigint] NOT NULL,
	[DeveloperType] [nvarchar](50) NULL,
	[DeveloperName] [nvarchar](50) NULL,
	[DeveloperTel] [nvarchar](50) NULL,
	[DeveloperAddr] [nvarchar](200) NULL,
	[Misc1] [nvarchar](50) NULL,
	[Misc2] [nvarchar](50) NULL,
	[IfPayed] [int] NULL CONSTRAINT [DF_DC_DeveloperInfo_IfPayed]  DEFAULT ((0)),
	[SubmitDate] [datetime] NULL,
	[PrivateKey] [nvarchar](100) NULL,
	[PrefixNumber] [int] NULL
) ON [PRIMARY]
END
GO
/****** 对象:  View [dbo].[V_REQUEST_LOGS]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[V_REQUEST_LOGS]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[V_REQUEST_LOGS]
AS
SELECT     A.REQUEST_MAC_ID, A.REQUEST_IP, A.REQUEST_DATETIME, A.REQUEST_TYPE_ID, A.REQUEST_RESULT_ID, B.REQUEST_RESULT_ID AS Expr1, 
                      B.REQUEST_RESULT_NAME, C.REQUEST_TYPE_ID AS Expr2, C.REQUEST_TYPE_DESCRIPTION, D.HCCU_MAC
FROM         dbo.HCCU_REQUEST_LOGS AS A INNER JOIN
                      dbo.REQUEST_RESULT_FACT AS B ON A.REQUEST_RESULT_ID = B.REQUEST_RESULT_ID INNER JOIN
                      dbo.REQUEST_TYPE_FACT AS C ON A.REQUEST_TYPE_ID = C.REQUEST_TYPE_ID INNER JOIN
                      dbo.HCCU_MAC_FACT AS D ON A.REQUEST_MAC_ID = D.HCCU_MAC_ID
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'V_REQUEST_LOGS', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 246
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "B"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 192
               Right = 241
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C"
            Begin Extent = 
               Top = 192
               Left = 38
               Bottom = 270
               Right = 268
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "D"
            Begin Extent = 
               Top = 6
               Left = 284
               Bottom = 114
               Right = 464
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_REQUEST_LOGS'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'V_REQUEST_LOGS', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_REQUEST_LOGS'
GO
/****** 对象:  View [dbo].[V_ENDPOINT_PRODUCT_EPTYPE]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[V_ENDPOINT_PRODUCT_EPTYPE]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[V_ENDPOINT_PRODUCT_EPTYPE]
AS
SELECT     a.EP_ID, a.EP_TYPEID, a.EP_USERDEFINED_ALIAS, a.EP_PRODUCTID, a.HCCU_ID, a.EP_MAC_ID, b.EP_PRODUCT_ID, b.EP_PRODUCT_NAME, 
                      b.EP_PRODUCT_DESCRIPTION, b.EP_PRODUCT_TABLEOBJECT_ID, b.DEV_ID, C.EP_TYPE_ID, C.EP_TYPE_NAME, C.EP_TYPE_DESCRIPTION, 
                      C.HCCU_ID AS Expr1
FROM         dbo.ENDPOINT_FACT AS a INNER JOIN
                      dbo.ENDPOINT_PRODUCT_FACT AS b ON a.EP_PRODUCTID = b.EP_PRODUCT_ID INNER JOIN
                      dbo.ENDPOINT_TYPE_FACT AS C ON C.EP_TYPE_ID = a.EP_TYPEID
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'V_ENDPOINT_PRODUCT_EPTYPE', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "a"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 240
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "b"
            Begin Extent = 
               Top = 6
               Left = 278
               Bottom = 114
               Right = 515
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C"
            Begin Extent = 
               Top = 6
               Left = 553
               Bottom = 114
               Right = 749
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_ENDPOINT_PRODUCT_EPTYPE'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'V_ENDPOINT_PRODUCT_EPTYPE', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_ENDPOINT_PRODUCT_EPTYPE'
GO
/****** 对象:  StoredProcedure [dbo].[EP_Edit_SP]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EP_Edit_SP]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[EP_Edit_SP]

@EP_ID INT,
@EP_TYPEID INT,
@EP_USERDEFINED_ALIAS NVARCHAR(50),
@EP_PRODUCT_ID INT,
@RET INT OUTPUT

AS

DECLARE @PRODUCT_ID INT
DECLARE @PRODUCT_TABLE_ID BIGINT

DECLARE @EP_PROP_NAME NVARCHAR(50)
DECLARE @STD_PARA NVARCHAR(500)
DECLARE @TC_PRAR NVARCHAR(500)

SET @STD_PARA='''';
SET @TC_PRAR='''';


DECLARE TABLEOBJECTID_CURSOR CURSOR FOR

SELECT EP_PROPERTY_NAME FROM [DB_COS_PROPERTY].[DBO].[EP_PROPERTY_FACT] A 
                         INNER JOIN [DB_COS_PROPERTY].[DBO].[EP_PROPERTY_FACT_EXTEND] B
                         ON A.EP_PROPERTY_ID = B.EP_PROPERTY_ID
                        WHERE A.EP_PROPERTY_TABLE_ID
                        IN
                        (SELECT EP_PRODUCT_TABLEOBJECT_ID FROM ENDPOINT_PRODUCT_FACT WHERE EP_PRODUCT_ID=@EP_PRODUCT_ID)

OPEN TABLEOBJECTID_CURSOR

FETCH NEXT FROM TABLEOBJECTID_CURSOR
INTO @EP_PROP_NAME

WHILE @@FETCH_STATUS = 0
BEGIN
									SET @STD_PARA = @STD_PARA + @EP_PROP_NAME + '','';

	FETCH NEXT FROM TABLEOBJECTID_CURSOR
	INTO @EP_PROP_NAME
END

CLOSE TABLEOBJECTID_CURSOR
DEALLOCATE TABLEOBJECTID_CURSOR


SELECT @TC_PRAR = PARAFORMAT FROM ENDPOINT_FACT WHERE EP_ID = @EP_ID


IF (@TC_PRAR = @STD_PARA)BEGIN



UPDATE ENDPOINT_FACT 
SET 
EP_TYPEID = @EP_TYPEID,
EP_USERDEFINED_ALIAS = @EP_USERDEFINED_ALIAS,
EP_PRODUCTID = @EP_PRODUCT_ID 
WHERE 
EP_ID = @EP_ID

SET @RET = 1


END ELSE BEGIN

--select @TC_PRAR
SET @RET = 0

END


' 
END
GO
/****** 对象:  StoredProcedure [dbo].[EP_Delete_SP]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EP_Delete_SP]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[EP_Delete_SP]

@EP_ID INT,
@RET INT OUTPUT

AS

DELETE FROM ENDPOINT_FACT WHERE EP_ID = @EP_ID

DECLARE @TID BIGINT
DECLARE @TN NVARCHAR(50)

SET @TN = '''';

SELECT @TID = EP_PRODUCT_TABLEOBJECT_ID FROM ENDPOINT_PRODUCT_FACT WHERE EP_PRODUCT_ID IN 
(SELECT EP_PRODUCTID FROM ENDPOINT_FACT WHERE EP_ID=@EP_ID)

SELECT @TN = NAME FROM [DB_COS_PROPERTY].SYS.OBJECTS WHERE OBJECT_ID = @TID

IF(@TN<>'''')BEGIN

EXEC(N''DELETE FROM [DB_COS_PROPERTY].[DBO].''+@TN+'' WHERE EP_ID=''+@EP_ID)

END 

SET @RET = 1;' 
END
GO
/****** 对象:  StoredProcedure [dbo].[PROD_Delete_SP]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PROD_Delete_SP]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[PROD_Delete_SP]

@EP_PRODUCT_ID INT,
@RET INT OUTPUT

AS

DECLARE @TABLE_OBJECT_ID BIGINT
DECLARE @TABLE_NAME NVARCHAR(50)

SELECT @TABLE_OBJECT_ID = EP_PRODUCT_TABLEOBJECT_ID
FROM ENDPOINT_PRODUCT_FACT
WHERE EP_PRODUCT_ID = @EP_PRODUCT_ID 

SELECT @TABLE_NAME = NAME FROM [DB_COS_PROPERTY].sys.objects WHERE OBJECT_ID = @TABLE_OBJECT_ID


BEGIN TRANSACTION

BEGIN TRY

		/*删除模型*/
		DELETE FROM ENDPOINT_PRODUCT_FACT WHERE EP_PRODUCT_ID = @EP_PRODUCT_ID

		/*销毁属性表*/
		EXEC(''DROP TABLE [DB_COS_PROPERTY].dbo.''+@TABLE_NAME)

		/*删除模型属性枚举*/
		DELETE FROM [db_cos_property].[dbo].[ep_property_Fact] where EP_PROPERTY_TABLE_ID=@TABLE_OBJECT_ID

		/*删除模型关联方法*/
		DELETE FROM ep_product_methods_fact where ep_product_id=@EP_PRODUCT_ID

		COMMIT TRANSACTION

		SET @RET = 1;

END TRY

BEGIN CATCH

		ROLLBACK TRANSACTION

		SET @RET = 0;

END CATCH





' 
END
GO
/****** 对象:  Trigger [ENDPOINT_FACT_T]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[ENDPOINT_FACT_T]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[ENDPOINT_FACT_T]
ON [dbo].[ENDPOINT_FACT]
FOR UPDATE

AS

DECLARE @EP_ID BIGINT
DECLARE @EP_PRODUCTID INT
DECLARE @TABLE_OBJECT_ID BIGINT
DECLARE @TABLE_NAME NVARCHAR(50)

SELECT @EP_PRODUCTID=EP_PRODUCTID,@EP_ID = EP_ID FROM INSERTED

IF(@EP_PRODUCTID <> ''1'')BEGIN

	SELECT @TABLE_OBJECT_ID = EP_PRODUCT_TABLEOBJECT_ID FROM ENDPOINT_PRODUCT_FACT
	WHERE EP_PRODUCT_ID = @EP_PRODUCTID

	SELECT @TABLE_NAME = [NAME] FROM [DB_COS_PROPERTY].SYS.OBJECTS WHERE [OBJECT_ID] = @TABLE_OBJECT_ID


	EXEC(N''IF NOT EXISTS(SELECT * FROM [DB_COS_PROPERTY].DBO.''+@TABLE_NAME+'' WHERE EP_ID = ''+@EP_ID+'')BEGIN INSERT INTO [DB_COS_PROPERTY].DBO.''+@TABLE_NAME+'' (EP_ID) VALUES(''+@EP_ID+'') END'')
	

END
'
GO
/****** 对象:  StoredProcedure [dbo].[HCCU_MAC_RELATION_SYNC]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HCCU_MAC_RELATION_SYNC]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[HCCU_MAC_RELATION_SYNC]

@MAC NVARCHAR(50),
@HCCU_ID BIGINT,
@HCCU_MAC_ID BIGINT OUTPUT

AS


IF NOT EXISTS(SELECT * FROM HCCU_MAC_FACT WHERE HCCU_ID = @HCCU_ID AND HCCU_MAC=@MAC)BEGIN


	INSERT INTO HCCU_MAC_FACT
	(HCCU_ID,HCCU_MAC,HCCU_MAC_STATUS)
	VALUES
	(@HCCU_ID,@MAC,''1'')

	SET @HCCU_MAC_ID = SCOPE_IDENTITY();

END ELSE BEGIN

	SELECT @HCCU_MAC_ID = HCCU_MAC_ID FROM HCCU_MAC_FACT WHERE HCCU_ID = @HCCU_ID AND HCCU_MAC=@MAC

	UPDATE HCCU_MAC_FACT SET HCCU_MAC_STATUS=''1'' WHERE HCCU_MAC_ID = @HCCU_MAC_ID

END' 
END
GO
/****** 对象:  StoredProcedure [dbo].[HCCU_OFFLINE_NOTIFY]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HCCU_OFFLINE_NOTIFY]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[HCCU_OFFLINE_NOTIFY]

@HCCU_MAC_ID BIGINT,
@IFLOGOUTACCOUNT INT

AS


	IF(@IFLOGOUTACCOUNT=''1'')BEGIN

			DELETE FROM HCCU_MAC_FACT WHERE HCCU_MAC_ID = @HCCU_MAC_ID

	END ELSE BEGIN

			UPDATE HCCU_MAC_FACT SET HCCU_MAC_STATUS=''0'' WHERE HCCU_MAC_ID=@HCCU_MAC_ID

	END' 
END
GO
/****** 对象:  View [dbo].[V_HCCU]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[V_HCCU]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[V_HCCU]
AS
SELECT     A.HCCU_ID, A.HCCU_UID, A.HCCU_PSW, A.HCCU_ACC_STATUS, B.IP, B.Port, B.HCCU_ID AS Expr1, B.HCCU_MAC AS MAC, B.HCCU_MAC_STATUS, 
                      B.HCCU_MAC_ID, B.HCCU_LASTUPDATETIME
FROM         dbo.HCCU_FACT AS A INNER JOIN
                      dbo.HCCU_MAC_FACT AS B ON A.HCCU_ID = B.HCCU_ID
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'V_HCCU', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 217
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "B"
            Begin Extent = 
               Top = 6
               Left = 255
               Bottom = 114
               Right = 435
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_HCCU'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'V_HCCU', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_HCCU'
GO
/****** 对象:  StoredProcedure [dbo].[EP_Add_SP_20140320]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EP_Add_SP_20140320]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[EP_Add_SP_20140320]

@EP_TypeId INT,
@EP_UserDefined_Alias NVARCHAR(50),
@EP_ProductId INT,
@HCCU_Id INT,
@EP_MAC_ID NVARCHAR(50),
@PARAFORMAT NVARCHAR(500),
@IP NVARCHAR(50),
@RET1 INT OUTPUT,
@RET2 INT OUTPUT,
@RET3 INT OUTPUT

AS

SET @RET3=0;

IF NOT EXISTS(SELECT * FROM ENDPOINT_FACT WHERE EP_MAC_ID=@EP_MAC_ID)BEGIN

		INSERT INTO ENDPOINT_FACT
		(EP_TYPEID,EP_USERDEFINED_ALIAS,EP_PRODUCTID,HCCU_ID,EP_MAC_ID,PARAFORMAT,IP)
		VALUES
		(@EP_TypeId,@EP_UserDefined_Alias,@EP_ProductId,@HCCU_Id,@EP_MAC_ID,@PARAFORMAT,@IP)		

		SET @RET1 = SCOPE_IDENTITY();
		SET @RET2 = 1;

END ELSE BEGIN

		IF EXISTS(SELECT * FROM ENDPOINT_FACT WHERE EP_MAC_ID=@EP_MAC_ID AND HCCU_ID = @HCCU_Id)BEGIN

			SELECT @RET1 = EP_ID FROM ENDPOINT_FACT  WHERE EP_MAC_ID=@EP_MAC_ID
			SET @RET2 = 2;
		
		END ELSE BEGIN

			SELECT @RET3 = HCCU_ID FROM ENDPOINT_FACT WHERE EP_MAC_ID=@EP_MAC_ID

			UPDATE ENDPOINT_FACT SET HCCU_ID = @HCCU_Id 
			WHERE
			EP_MAC_ID=@EP_MAC_ID
			SELECT @RET1 = EP_ID FROM ENDPOINT_FACT  WHERE EP_MAC_ID=@EP_MAC_ID
			SET @RET2 = 3;
			
		END
END
' 
END
GO
/****** 对象:  StoredProcedure [dbo].[REQUESTLOGS_Add_SP]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[REQUESTLOGS_Add_SP]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[REQUESTLOGS_Add_SP]

@REQUEST_MAC_ID NVARCHAR(50),
@REQUEST_IP NVARCHAR(20),
@REQUEST_DATETIME DATETIME,
@REQUEST_TYPE_ID INT,
@REQUEST_RESULT_ID INT,
@REQUEST_METHOD_NAME NVARCHAR(50),
@RET INT OUTPUT

AS

	INSERT INTO HCCU_REQUEST_LOGS
	(REQUEST_MAC_ID,REQUEST_IP,REQUEST_DATETIME,REQUEST_TYPE_ID,REQUEST_RESULT_ID,REQUEST_METHOD_NAME)
	VALUES
	(@REQUEST_MAC_ID,@REQUEST_IP,@REQUEST_DATETIME,@REQUEST_TYPE_ID,@REQUEST_RESULT_ID,@REQUEST_METHOD_NAME)

	SET @RET=1;' 
END
GO
/****** 对象:  StoredProcedure [dbo].[HCCU_Get_Info_SP]    脚本日期: 07/10/2015 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HCCU_Get_Info_SP]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[HCCU_Get_Info_SP]

@HCCU_ID INT,
@HCCU_MAC NVARCHAR(50)

AS


SELECT * FROM V_HCCU WHERE HCCU_ID = @HCCU_ID AND HCCU_MAC_ID = @HCCU_MAC

UPDATE HCCU_MAC_FACT SET HCCU_LASTUPDATETIME = GETDATE() WHERE HCCU_MAC_ID = @HCCU_MAC


' 
END
GO
/****** 对象:  ForeignKey [FK_DC_DeveloperInfo_HCCU_FACT]    脚本日期: 07/10/2015 12:02:23 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DC_DeveloperInfo_HCCU_FACT]') AND parent_object_id = OBJECT_ID(N'[dbo].[DC_DeveloperInfo]'))
ALTER TABLE [dbo].[DC_DeveloperInfo]  WITH CHECK ADD  CONSTRAINT [FK_DC_DeveloperInfo_HCCU_FACT] FOREIGN KEY([DeveloperId])
REFERENCES [dbo].[HCCU_FACT] ([HCCU_ID])
GO
ALTER TABLE [dbo].[DC_DeveloperInfo] CHECK CONSTRAINT [FK_DC_DeveloperInfo_HCCU_FACT]
GO
/****** 对象:  ForeignKey [FK_ENDPOINT_FACT_ENDPOINT_PRODUCT_FACT]    脚本日期: 07/10/2015 12:02:23 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ENDPOINT_FACT_ENDPOINT_PRODUCT_FACT]') AND parent_object_id = OBJECT_ID(N'[dbo].[ENDPOINT_FACT]'))
ALTER TABLE [dbo].[ENDPOINT_FACT]  WITH CHECK ADD  CONSTRAINT [FK_ENDPOINT_FACT_ENDPOINT_PRODUCT_FACT] FOREIGN KEY([EP_PRODUCTID])
REFERENCES [dbo].[ENDPOINT_PRODUCT_FACT] ([EP_PRODUCT_ID])
GO
ALTER TABLE [dbo].[ENDPOINT_FACT] CHECK CONSTRAINT [FK_ENDPOINT_FACT_ENDPOINT_PRODUCT_FACT]
GO
/****** 对象:  ForeignKey [FK_ENDPOINT_FACT_ENDPOINT_TYPE_FACT]    脚本日期: 07/10/2015 12:02:23 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ENDPOINT_FACT_ENDPOINT_TYPE_FACT]') AND parent_object_id = OBJECT_ID(N'[dbo].[ENDPOINT_FACT]'))
ALTER TABLE [dbo].[ENDPOINT_FACT]  WITH CHECK ADD  CONSTRAINT [FK_ENDPOINT_FACT_ENDPOINT_TYPE_FACT] FOREIGN KEY([EP_TYPEID])
REFERENCES [dbo].[ENDPOINT_TYPE_FACT] ([EP_TYPE_ID])
GO
ALTER TABLE [dbo].[ENDPOINT_FACT] CHECK CONSTRAINT [FK_ENDPOINT_FACT_ENDPOINT_TYPE_FACT]
GO
/****** 对象:  ForeignKey [FK_ENDPOINT_FACT_HCCU_FACT]    脚本日期: 07/10/2015 12:02:23 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ENDPOINT_FACT_HCCU_FACT]') AND parent_object_id = OBJECT_ID(N'[dbo].[ENDPOINT_FACT]'))
ALTER TABLE [dbo].[ENDPOINT_FACT]  WITH CHECK ADD  CONSTRAINT [FK_ENDPOINT_FACT_HCCU_FACT] FOREIGN KEY([HCCU_ID])
REFERENCES [dbo].[HCCU_FACT] ([HCCU_ID])
GO
ALTER TABLE [dbo].[ENDPOINT_FACT] CHECK CONSTRAINT [FK_ENDPOINT_FACT_HCCU_FACT]
GO
/****** 对象:  ForeignKey [FK_ENDPOINT_PRODUCT_FACT_ENDPOINT_PRODUCT_FACT]    脚本日期: 07/10/2015 12:02:23 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ENDPOINT_PRODUCT_FACT_ENDPOINT_PRODUCT_FACT]') AND parent_object_id = OBJECT_ID(N'[dbo].[ENDPOINT_PRODUCT_FACT]'))
ALTER TABLE [dbo].[ENDPOINT_PRODUCT_FACT]  WITH CHECK ADD  CONSTRAINT [FK_ENDPOINT_PRODUCT_FACT_ENDPOINT_PRODUCT_FACT] FOREIGN KEY([EP_PRODUCT_ID])
REFERENCES [dbo].[ENDPOINT_PRODUCT_FACT] ([EP_PRODUCT_ID])
GO
ALTER TABLE [dbo].[ENDPOINT_PRODUCT_FACT] CHECK CONSTRAINT [FK_ENDPOINT_PRODUCT_FACT_ENDPOINT_PRODUCT_FACT]
GO
/****** 对象:  ForeignKey [FK_HCCU_REQUEST_LOGS_REQUEST_RESULT_FACT]    脚本日期: 07/10/2015 12:02:23 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HCCU_REQUEST_LOGS_REQUEST_RESULT_FACT]') AND parent_object_id = OBJECT_ID(N'[dbo].[HCCU_REQUEST_LOGS]'))
ALTER TABLE [dbo].[HCCU_REQUEST_LOGS]  WITH CHECK ADD  CONSTRAINT [FK_HCCU_REQUEST_LOGS_REQUEST_RESULT_FACT] FOREIGN KEY([REQUEST_RESULT_ID])
REFERENCES [dbo].[REQUEST_RESULT_FACT] ([REQUEST_RESULT_ID])
GO
ALTER TABLE [dbo].[HCCU_REQUEST_LOGS] CHECK CONSTRAINT [FK_HCCU_REQUEST_LOGS_REQUEST_RESULT_FACT]
GO
/****** 对象:  ForeignKey [FK_HCCU_REQUEST_LOGS_REQUEST_TYPE_FACT]    脚本日期: 07/10/2015 12:02:23 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HCCU_REQUEST_LOGS_REQUEST_TYPE_FACT]') AND parent_object_id = OBJECT_ID(N'[dbo].[HCCU_REQUEST_LOGS]'))
ALTER TABLE [dbo].[HCCU_REQUEST_LOGS]  WITH CHECK ADD  CONSTRAINT [FK_HCCU_REQUEST_LOGS_REQUEST_TYPE_FACT] FOREIGN KEY([REQUEST_TYPE_ID])
REFERENCES [dbo].[REQUEST_TYPE_FACT] ([REQUEST_TYPE_ID])
GO
ALTER TABLE [dbo].[HCCU_REQUEST_LOGS] CHECK CONSTRAINT [FK_HCCU_REQUEST_LOGS_REQUEST_TYPE_FACT]
GO
/****** 对象:  ForeignKey [FK_SolutionMethod_SolutionMode]    脚本日期: 07/10/2015 12:02:23 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SolutionMethod_SolutionMode]') AND parent_object_id = OBJECT_ID(N'[dbo].[SolutionMethod]'))
ALTER TABLE [dbo].[SolutionMethod]  WITH CHECK ADD  CONSTRAINT [FK_SolutionMethod_SolutionMode] FOREIGN KEY([ModalOwner])
REFERENCES [dbo].[SolutionMode] ([ModalId])
GO
ALTER TABLE [dbo].[SolutionMethod] CHECK CONSTRAINT [FK_SolutionMethod_SolutionMode]
GO
/****** 对象:  ForeignKey [FK_SolutionMode_SolutionFact]    脚本日期: 07/10/2015 12:02:23 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SolutionMode_SolutionFact]') AND parent_object_id = OBJECT_ID(N'[dbo].[SolutionMode]'))
ALTER TABLE [dbo].[SolutionMode]  WITH CHECK ADD  CONSTRAINT [FK_SolutionMode_SolutionFact] FOREIGN KEY([SolutionOwner])
REFERENCES [dbo].[SolutionFact] ([id])
GO
ALTER TABLE [dbo].[SolutionMode] CHECK CONSTRAINT [FK_SolutionMode_SolutionFact]
GO
/****** 对象:  ForeignKey [FK_SolutionProperty_SolutionMode]    脚本日期: 07/10/2015 12:02:23 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SolutionProperty_SolutionMode]') AND parent_object_id = OBJECT_ID(N'[dbo].[SolutionProperty]'))
ALTER TABLE [dbo].[SolutionProperty]  WITH CHECK ADD  CONSTRAINT [FK_SolutionProperty_SolutionMode] FOREIGN KEY([ModalOwner])
REFERENCES [dbo].[SolutionMode] ([ModalId])
GO
ALTER TABLE [dbo].[SolutionProperty] CHECK CONSTRAINT [FK_SolutionProperty_SolutionMode]
GO
