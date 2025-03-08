SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AutoResponseQA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AutoResponseQA](
	[FAQ_No] [numeric](18, 0) NULL,
	[Question] [varchar](300) NULL,
	[Answer] [varchar](500) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserProfile]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserProfile](
	[UserID] [varchar](50) NULL,
	[UserName] [varchar](50) NULL,
	[Street] [varchar](50) NULL,
	[Area] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[Pincode] [varchar](50) NULL,
	[ContactNo] [varchar](50) NULL,
	[EMailID] [varchar](50) NULL,
	[BirthDate] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[LoginID] [varchar](50) NULL,
	[Password] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[temp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[temp](
	[Query] [varchar](100) NULL,
	[Response] [varchar](200) NULL,
	[TFCount] [numeric](18, 0) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QueryResponse]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[QueryResponse](
	[QueryNo] [varchar](50) NULL,
	[UserID] [varchar](50) NULL,
	[Query] [varchar](100) NULL,
	[Response] [varchar](100) NULL,
	[QStatus] [varchar](50) NULL
) ON [PRIMARY]
END
