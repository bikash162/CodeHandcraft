USE [TrackMyFile]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 09/11/2015 15:40:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UsrID] [bigint] IDENTITY(1,1) NOT NULL,
	[UsrLoginNm] [varchar](50) NOT NULL,
	[UsrPwd] [varchar](20) NOT NULL,
	[UsrType] [varchar](10) NOT NULL,
	[DeptID] [bigint] NOT NULL,
	[UsrNm] [varchar](200) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UsrLoginNm] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([UsrID], [UsrLoginNm], [UsrPwd], [UsrType], [DeptID], [UsrNm]) VALUES (2, N'accounts', N'accounts', N'U', 1, N'Accounts')
INSERT [dbo].[Users] ([UsrID], [UsrLoginNm], [UsrPwd], [UsrType], [DeptID], [UsrNm]) VALUES (1, N'ADMIN', N'ADMIN', N'A', 0, N'Mr. ADMIN')
INSERT [dbo].[Users] ([UsrID], [UsrLoginNm], [UsrPwd], [UsrType], [DeptID], [UsrNm]) VALUES (9, N'arnab@hr', N'1234', N'U', 5, N'Arnab')
INSERT [dbo].[Users] ([UsrID], [UsrLoginNm], [UsrPwd], [UsrType], [DeptID], [UsrNm]) VALUES (7, N'engg', N'engg', N'U', 6, N'Engineering')
INSERT [dbo].[Users] ([UsrID], [UsrLoginNm], [UsrPwd], [UsrType], [DeptID], [UsrNm]) VALUES (10, N'GENERAL_FILE', N'1234', N'U', 7, N'santanu')
INSERT [dbo].[Users] ([UsrID], [UsrLoginNm], [UsrPwd], [UsrType], [DeptID], [UsrNm]) VALUES (4, N'hr', N'hr', N'U', 5, N'HR')
INSERT [dbo].[Users] ([UsrID], [UsrLoginNm], [UsrPwd], [UsrType], [DeptID], [UsrNm]) VALUES (5, N'ITC1', N'ITC1', N'U', 3, N'Mr. ITC Person 1')
INSERT [dbo].[Users] ([UsrID], [UsrLoginNm], [UsrPwd], [UsrType], [DeptID], [UsrNm]) VALUES (6, N'ITC2', N'ITC2', N'U', 4, N'Mr. ITC Person 2')
INSERT [dbo].[Users] ([UsrID], [UsrLoginNm], [UsrPwd], [UsrType], [DeptID], [UsrNm]) VALUES (3, N'procure', N'procure', N'U', 2, N'Procurement')
INSERT [dbo].[Users] ([UsrID], [UsrLoginNm], [UsrPwd], [UsrType], [DeptID], [UsrNm]) VALUES (8, N'santanu@accounts', N'1234', N'U', 1, N'Santanu')
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Table [dbo].[NodesTable]    Script Date: 09/11/2015 15:40:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NodesTable](
	[id] [int] NOT NULL,
	[pid] [int] NOT NULL,
	[UrlNm] [varchar](50) NOT NULL,
	[UrlStr] [varchar](255) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[NodesTable] ([id], [pid], [UrlNm], [UrlStr]) VALUES (1, 0, N'Admin Setup', NULL)
INSERT [dbo].[NodesTable] ([id], [pid], [UrlNm], [UrlStr]) VALUES (1, 1, N'Branch Master', N'/WebForms/AddEditBranchMaster.aspx')
INSERT [dbo].[NodesTable] ([id], [pid], [UrlNm], [UrlStr]) VALUES (2, 1, N'Department Master', N'/WebForms/AddEditDeptMaster.aspx')
INSERT [dbo].[NodesTable] ([id], [pid], [UrlNm], [UrlStr]) VALUES (1, 2, N'File Master', N'/WebForms/FileMasterList.aspx')
INSERT [dbo].[NodesTable] ([id], [pid], [UrlNm], [UrlStr]) VALUES (3, 2, N'Search File', N'/WebForms/SearchFile.aspx')
INSERT [dbo].[NodesTable] ([id], [pid], [UrlNm], [UrlStr]) VALUES (3, 1, N'Manage Users', N'/WebForms/ManageUsers.aspx')
INSERT [dbo].[NodesTable] ([id], [pid], [UrlNm], [UrlStr]) VALUES (4, 2, N'File Setup', N'/WebForms/ManageFileNumPrefixSetup.aspx')
INSERT [dbo].[NodesTable] ([id], [pid], [UrlNm], [UrlStr]) VALUES (2, 0, N'Manage', NULL)
INSERT [dbo].[NodesTable] ([id], [pid], [UrlNm], [UrlStr]) VALUES (2, 2, N'File Movements', N'/WebForms/FileMovements.aspx')
INSERT [dbo].[NodesTable] ([id], [pid], [UrlNm], [UrlStr]) VALUES (5, 2, N'File Movement Officials', N'/WebForms/FileMoveOfficials.aspx')
INSERT [dbo].[NodesTable] ([id], [pid], [UrlNm], [UrlStr]) VALUES (4, 1, N'Admin File Movements', N'/WebForms/ADMFileListMovement.aspx')
INSERT [dbo].[NodesTable] ([id], [pid], [UrlNm], [UrlStr]) VALUES (6, 2, N'Change Password', N'/WebForms/ChangePassword.aspx')
INSERT [dbo].[NodesTable] ([id], [pid], [UrlNm], [UrlStr]) VALUES (7, 2, N'Add File (For General Use)', N'/WebForms/AddEditFileMasterGeneral.aspx')
INSERT [dbo].[NodesTable] ([id], [pid], [UrlNm], [UrlStr]) VALUES (5, 1, N'Back Up Database', N'/WebForms/BackUpDB.aspx')
/****** Object:  Table [dbo].[FileNumPrefixSetup]    Script Date: 09/11/2015 15:40:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FileNumPrefixSetup](
	[BranchID] [varchar](20) NOT NULL,
	[FileNumPrefix] [varchar](50) NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedDt] [datetime] NOT NULL,
	[LastModBy] [varchar](50) NULL,
	[LastModDt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[FileNumPrefixSetup] ([BranchID], [FileNumPrefix], [CreatedBy], [CreatedDt], [LastModBy], [LastModDt]) VALUES (N'11', N'WBMSC/', N'wbmsc', CAST(0x0000A49900000000 AS DateTime), N'GENERAL_FILE', CAST(0x0000A4E300000000 AS DateTime))
/****** Object:  Table [dbo].[FileMoveOfficials]    Script Date: 09/11/2015 15:40:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileMoveOfficials](
	[UsrMappID] [bigint] IDENTITY(1,1) NOT NULL,
	[UsrID] [bigint] NOT NULL,
	[CreatedByID] [bigint] NOT NULL,
 CONSTRAINT [PK_FileMoveOfficials_1] PRIMARY KEY CLUSTERED 
(
	[UsrID] ASC,
	[CreatedByID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FileMoveOfficials] ON
INSERT [dbo].[FileMoveOfficials] ([UsrMappID], [UsrID], [CreatedByID]) VALUES (6, 2, 7)
INSERT [dbo].[FileMoveOfficials] ([UsrMappID], [UsrID], [CreatedByID]) VALUES (1, 2, 8)
INSERT [dbo].[FileMoveOfficials] ([UsrMappID], [UsrID], [CreatedByID]) VALUES (9, 2, 9)
INSERT [dbo].[FileMoveOfficials] ([UsrMappID], [UsrID], [CreatedByID]) VALUES (8, 3, 7)
INSERT [dbo].[FileMoveOfficials] ([UsrMappID], [UsrID], [CreatedByID]) VALUES (5, 7, 8)
INSERT [dbo].[FileMoveOfficials] ([UsrMappID], [UsrID], [CreatedByID]) VALUES (10, 7, 9)
INSERT [dbo].[FileMoveOfficials] ([UsrMappID], [UsrID], [CreatedByID]) VALUES (11, 8, 9)
INSERT [dbo].[FileMoveOfficials] ([UsrMappID], [UsrID], [CreatedByID]) VALUES (7, 9, 7)
INSERT [dbo].[FileMoveOfficials] ([UsrMappID], [UsrID], [CreatedByID]) VALUES (4, 9, 8)
INSERT [dbo].[FileMoveOfficials] ([UsrMappID], [UsrID], [CreatedByID]) VALUES (12, 10, 8)
SET IDENTITY_INSERT [dbo].[FileMoveOfficials] OFF
/****** Object:  Table [dbo].[FileMovement]    Script Date: 09/11/2015 15:40:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FileMovement](
	[FileMovementID] [bigint] IDENTITY(1,1) NOT NULL,
	[FileID] [bigint] NOT NULL,
	[FileMoveType] [varchar](10) NOT NULL,
	[DeptID] [bigint] NOT NULL,
	[MoveDt] [datetime] NOT NULL,
	[Remarks] [varchar](500) NULL,
	[CreatedDt] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[LastModDt] [datetime] NULL,
	[LastModBy] [varchar](50) NULL,
	[IsFileViewed] [char](1) NOT NULL,
	[FileViewedBy] [varchar](50) NULL,
	[FileViewedDt] [datetime] NULL,
	[FileMoveTo_UsrID] [bigint] NULL,
 CONSTRAINT [PK__FileMove__B4197CDB0425A276] PRIMARY KEY CLUSTERED 
(
	[FileMovementID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[FileMovement] ON
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (1, 2, N'I', 1, CAST(0x0000A4C700000000 AS DateTime), N'new file', CAST(0x0000A4C700000000 AS DateTime), N'santanu@accounts', NULL, NULL, N'N', NULL, NULL, 8)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (2, 122, N'I', 6, CAST(0x0000A4C700000000 AS DateTime), N'', CAST(0x0000A4C700000000 AS DateTime), N'engg', NULL, NULL, N'N', NULL, NULL, 7)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (3, 122, N'O', 5, CAST(0x0000A4C700000000 AS DateTime), N'', CAST(0x0000A4C700000000 AS DateTime), N'engg', NULL, NULL, N'N', NULL, NULL, 9)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (4, 122, N'I', 5, CAST(0x0000A4C700000000 AS DateTime), N'', CAST(0x0000A4C700000000 AS DateTime), N'engg', NULL, NULL, N'N', NULL, NULL, 9)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (5, 122, N'O', 1, CAST(0x0000A4C700000000 AS DateTime), N'', CAST(0x0000A4C700000000 AS DateTime), N'arnab@hr', NULL, NULL, N'N', NULL, NULL, 8)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (6, 122, N'I', 1, CAST(0x0000A4C700000000 AS DateTime), N'', CAST(0x0000A4C700000000 AS DateTime), N'arnab@hr', NULL, NULL, N'N', NULL, NULL, 8)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (7, 2, N'O', 5, CAST(0x0000A4C700000000 AS DateTime), N'', CAST(0x0000A4C700000000 AS DateTime), N'santanu@accounts', NULL, NULL, N'N', NULL, NULL, 9)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (8, 2, N'I', 5, CAST(0x0000A4C700000000 AS DateTime), N'', CAST(0x0000A4C700000000 AS DateTime), N'santanu@accounts', NULL, NULL, N'N', NULL, NULL, 9)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (9, 122, N'O', 5, CAST(0x0000A4C700000000 AS DateTime), N'', CAST(0x0000A4C700000000 AS DateTime), N'santanu@accounts', NULL, NULL, N'N', NULL, NULL, 9)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (10, 122, N'I', 5, CAST(0x0000A4C700000000 AS DateTime), N'', CAST(0x0000A4C700000000 AS DateTime), N'santanu@accounts', NULL, NULL, N'N', NULL, NULL, 9)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (11, 2, N'O', 6, CAST(0x0000A4C700000000 AS DateTime), N'', CAST(0x0000A4C700000000 AS DateTime), N'arnab@hr', NULL, NULL, N'N', NULL, NULL, 7)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (12, 2, N'I', 6, CAST(0x0000A4C700000000 AS DateTime), N'', CAST(0x0000A4C700000000 AS DateTime), N'arnab@hr', NULL, NULL, N'N', NULL, NULL, 7)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (13, 122, N'O', 6, CAST(0x0000A4C700000000 AS DateTime), N'', CAST(0x0000A4C700000000 AS DateTime), N'arnab@hr', NULL, NULL, N'N', NULL, NULL, 7)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (14, 122, N'I', 6, CAST(0x0000A4C700000000 AS DateTime), N'', CAST(0x0000A4C700000000 AS DateTime), N'arnab@hr', NULL, NULL, N'N', NULL, NULL, 7)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (15, 139, N'I', 6, CAST(0x0000A4C800000000 AS DateTime), N'', CAST(0x0000A4C800000000 AS DateTime), N'engg', NULL, NULL, N'N', NULL, NULL, 7)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (16, 139, N'O', 5, CAST(0x0000A4CA00000000 AS DateTime), N'', CAST(0x0000A4CA00000000 AS DateTime), N'engg', NULL, NULL, N'N', NULL, NULL, 9)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (17, 139, N'I', 5, CAST(0x0000A4CA00000000 AS DateTime), N'', CAST(0x0000A4CA00000000 AS DateTime), N'engg', NULL, NULL, N'N', NULL, NULL, 9)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (18, 122, N'O', 5, CAST(0x0000A4CA00000000 AS DateTime), N'', CAST(0x0000A4CA00000000 AS DateTime), N'engg', NULL, NULL, N'N', NULL, NULL, 9)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (19, 122, N'I', 5, CAST(0x0000A4CA00000000 AS DateTime), N'', CAST(0x0000A4CA00000000 AS DateTime), N'engg', NULL, NULL, N'N', NULL, NULL, 9)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (20, 2, N'O', 5, CAST(0x0000A4CA00000000 AS DateTime), N'', CAST(0x0000A4CA00000000 AS DateTime), N'engg', NULL, NULL, N'N', NULL, NULL, 9)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (21, 2, N'I', 5, CAST(0x0000A4CA00000000 AS DateTime), N'', CAST(0x0000A4CA00000000 AS DateTime), N'engg', NULL, NULL, N'N', NULL, NULL, 9)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (22, 122, N'O', 1, CAST(0x0000A4CA00000000 AS DateTime), N'', CAST(0x0000A4CA00000000 AS DateTime), N'arnab@hr', NULL, NULL, N'N', NULL, NULL, 8)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (23, 122, N'I', 1, CAST(0x0000A4CA00000000 AS DateTime), N'', CAST(0x0000A4CA00000000 AS DateTime), N'arnab@hr', NULL, NULL, N'N', NULL, NULL, 8)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (24, 139, N'O', 1, CAST(0x0000A4CA00000000 AS DateTime), N'', CAST(0x0000A4CA00000000 AS DateTime), N'arnab@hr', NULL, NULL, N'N', NULL, NULL, 8)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (25, 139, N'I', 1, CAST(0x0000A4CA00000000 AS DateTime), N'', CAST(0x0000A4CA00000000 AS DateTime), N'arnab@hr', NULL, NULL, N'N', NULL, NULL, 8)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (26, 121, N'I', 6, CAST(0x0000A4CA00000000 AS DateTime), N'', CAST(0x0000A4CA00000000 AS DateTime), N'engg', NULL, NULL, N'N', NULL, NULL, 7)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (27, 135, N'I', 6, CAST(0x0000A4CA00000000 AS DateTime), N'', CAST(0x0000A4CA00000000 AS DateTime), N'engg', NULL, NULL, N'N', NULL, NULL, 7)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (28, 122, N'O', 6, CAST(0x0000A4CA00000000 AS DateTime), N'', CAST(0x0000A4CA00000000 AS DateTime), N'santanu@accounts', NULL, NULL, N'N', NULL, NULL, 7)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (29, 122, N'I', 6, CAST(0x0000A4CA00000000 AS DateTime), N'', CAST(0x0000A4CA00000000 AS DateTime), N'santanu@accounts', NULL, NULL, N'N', NULL, NULL, 7)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (30, 141, N'I', 1, CAST(0x0000A4E200000000 AS DateTime), N'', CAST(0x0000A4E200000000 AS DateTime), N'santanu@accounts', NULL, NULL, N'N', NULL, NULL, 8)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (31, 142, N'I', 7, CAST(0x0000A4E200000000 AS DateTime), N'', CAST(0x0000A4E200000000 AS DateTime), N'santanu@accounts', NULL, NULL, N'N', NULL, NULL, 8)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (32, 141, N'O', 5, CAST(0x0000A4E200000000 AS DateTime), N'', CAST(0x0000A4E200000000 AS DateTime), N'santanu@accounts', NULL, NULL, N'N', NULL, NULL, 9)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (33, 141, N'I', 5, CAST(0x0000A4E200000000 AS DateTime), N'', CAST(0x0000A4E200000000 AS DateTime), N'santanu@accounts', NULL, NULL, N'N', NULL, NULL, 9)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (34, 143, N'I', 7, CAST(0x0000A4E200000000 AS DateTime), N'', CAST(0x0000A4E200000000 AS DateTime), N'arnab@hr', NULL, NULL, N'N', NULL, NULL, 9)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (35, 144, N'I', 7, CAST(0x0000A4E200000000 AS DateTime), N'', CAST(0x0000A4E200000000 AS DateTime), N'arnab@hr', NULL, NULL, N'N', NULL, NULL, 9)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (36, 145, N'I', 7, CAST(0x0000A4E200000000 AS DateTime), N'', CAST(0x0000A4E200000000 AS DateTime), N'santanu@accounts', NULL, NULL, N'N', NULL, NULL, 8)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (37, 146, N'I', 5, CAST(0x0000A4E200000000 AS DateTime), N'', CAST(0x0000A4E200000000 AS DateTime), N'arnab@hr', NULL, NULL, N'N', NULL, NULL, 9)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (38, 147, N'I', 5, CAST(0x0000A4E200000000 AS DateTime), N'', CAST(0x0000A4E200000000 AS DateTime), N'arnab@hr', NULL, NULL, N'N', NULL, NULL, 9)
INSERT [dbo].[FileMovement] ([FileMovementID], [FileID], [FileMoveType], [DeptID], [MoveDt], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [IsFileViewed], [FileViewedBy], [FileViewedDt], [FileMoveTo_UsrID]) VALUES (39, 148, N'I', 6, CAST(0x0000A4E300000000 AS DateTime), N'', CAST(0x0000A4E300000000 AS DateTime), N'engg', NULL, NULL, N'N', NULL, NULL, 7)
SET IDENTITY_INSERT [dbo].[FileMovement] OFF
/****** Object:  Table [dbo].[FileMaster]    Script Date: 09/11/2015 15:40:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FileMaster](
	[FileID] [bigint] IDENTITY(1,1) NOT NULL,
	[DeptID] [bigint] NOT NULL,
	[FileNum] [varchar](250) NOT NULL,
	[SubMatter] [varchar](500) NULL,
	[FileOpenYr] [varchar](6) NOT NULL,
	[InitialOfficer] [varchar](200) NULL,
	[PhoneNo] [varchar](20) NULL,
	[GenFileNo] [varchar](128) NULL,
	[FileStatus] [varchar](10) NULL,
	[FileFollowUp] [char](1) NOT NULL,
	[Remarks] [varchar](500) NULL,
	[CreatedDt] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[LastModDt] [datetime] NULL,
	[LastModBy] [varchar](50) NULL,
	[LastFollowupBy] [varchar](50) NULL,
	[LastFollowupDt] [datetime] NULL,
 CONSTRAINT [PK__FileMast__6F0F989F07F6335A] PRIMARY KEY CLUSTERED 
(
	[FileID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[FileMaster] ON
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (1, 1, N'WBMSC/AAES-349A/PYMT/995/15', N'CIVIL WORKS AT NHM OFFICE BUILDING', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (2, 1, N'WBMSC/AAES-351/351A/PYMT/996/15', N'SANAITARY AND PLUMBING WORK FOR VERTICAL EXTENSION OF STATE PROGRAMME MANAGEMENT  UNIT NHM OFFICE BUILDING (PHASE-2)', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), N'santanu@accounts', NULL, NULL, N'arnab@hr', CAST(0x0000A4CA00000000 AS DateTime))
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (3, 1, N'WBMSC/AAES-333/PYMT/997/15', N'ELECTRICAL INSTALLATION WORKS AT EXISTING HOMEOPATHY BUILDING FOR SETTING UP OF DISTRICT EARLY INTERVENTION CENTRE', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (4, 1, N'WBMSC/AAES-439/PYMT/998/15', N'ELECTRICAL INSTALLATION WORKS SETTING UP OF BLOOD STROAGE UNIT AT GABBERIA STATE GENERAL HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (5, 1, N'WBMSC/AAES-440/PYMT/999/15', N'MAJOR UPGRADATION OF LABOUR ROOM & MATERNITY WARD AT BASIRHAT DISTRICE HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (6, 1, N'WBMSC/AAES-441/PYMT/1000/15', N'ELECTRICAL INSTALLATION WORKS FOR THE PROPOSED MAJOR UPGRADATION OF LABOUR ROOM & MATERNITY WARD AT BASIRHAT DISTRICE HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (7, 1, N'WBMSC/AAES-442/PYMT/1001/15', N'ELECTRICAL INSTALLATION WORKS REGARDING RENOVATION OF MATERNITY WARD OF VIDYASAGAR STATE GENERAL HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (8, 1, N'WBMSC/AAES-443/PYMT/1002/15', N'CIVIL WORKS RELATED TO RENOVATION OF EXISTING PADIATIC INCENTIVE CARE UNIT (PICU) AT THE FIRST FLOOR OF THE BIDHAN BLOCK OF MIDNAPUR MEDICAL COLLEGE AND HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (9, 1, N'WBMSC/AAES-444/PYMT/1003/15', N'ELECTRICAL WORKS RELATED TO RENOVATION OF EXIXTING PADIATIC INCENTIVE CARE UNIT (PICU) AT THE FIRST FLOOR OF THE BIDHAN BLOCK OF MIDNAPUR MEDICAL COLLEGE AND HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (10, 1, N'WBMSC/AAES-445/PYMT/1004/15', N'CIVIL WORKS RELATED TO CONSTRUCTION OF LIGHT SHED FOR MOTHER REST ROOM INCLUDING RENOVATION OF HOD(PRD) ROOM i.e. VERANDA PORTION OF 2ND FLOOR MIDNAPUR MEDICAL COLLEGE AND HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (11, 1, N'WBMSC/AAES-446/PYMT/1005/15', N'ELECTRICAL WORKS RELATED TO CONSTRUCTION OF LIGHT SHED FOR MOTHER REST ROOM INCLUDING RENOVATION OF HOD(PRD) ROOM i.e. VERANDA PORTION OF 2ND FLOOR MIDNAPUR MEDICAL COLLEGE AND HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (12, 1, N'WBMSC/AAES-447/PYMT/1006/15', N'CIVIL WORKS RELATED TO SETTING UP OF PAEDIARIC INCENTIVE CARE UNIT(PICU) AT CHITTARANJAN SEVA SADAN AND SISU SADAN.', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (13, 1, N'WBMSC/AAES-448/PYMT/1007/15', N'ELECTRICAL WORKS RELATED TO SETTING UP OF PAEDIARIC INCENTIVE CARE UNIT(PICU) AT CHITTARANJAN SEVA SADAN AND SISU SADAN.', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (14, 1, N'WBMSC/AAES-449/PYMT/1008/15', N'CIVIL WORK FOR  SETTING UP OF PAEDIARIC INCENTIVE CARE UNIT(PICU) LABORATORY AND AUTOCLAVE AT SSKM-IPGME&R', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (15, 1, N'WBMSC/AAES-450/PYMT/1009/15', N'ELECTRICAL WORKS FOR  SETTING UP OF PAEDIARIC INCENTIVE CARE UNIT(PICU) LABORATORY AND AUTOCLAVE AT SSKM-IPGME&R', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (16, 1, N'WBMSC/AAES-451/PYMT/1010/15', N'CIVIL WORKS FOR  SETTING UP OF PAEDIARIC INCENTIVE CARE UNIT(PICU) AT CULCATTA NATIONAL MEDICAL COLLEGE AND HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (17, 1, N'WBMSC/AAES-452/PYMT/1014/15', N'ELECTRICAL WORKS FOR  SETTING UP OF PAEDIARIC INCENTIVE CARE UNIT(PICU) AT CULCATTA NATIONAL MEDICAL COLLEGE AND HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (18, 1, N'WBMSC/AAES-453/PYMT/1015/15', N'CIVIL WORKS RELATED TO SETTING TO SETTING UP AND EXPANSION OF PAEDIATRIC INCENTIVE CARE UNIT(PICU) AT NRS MEDICAL COLLEGE AND HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (19, 1, N'WBMSC/AAES-454/PYMT/1016/15', N'ELECTRICAL WORKS RELATED TO SETTING TO SETTING UP AND EXPANSION OF PAEDIATRIC INCENTIVE CARE UNIT(PICU) AT NRS MEDICAL COLLEGE AND HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (20, 1, N'WBMSC/AAES-455/PYMT/1017/15', N'CIVIL WORKS FOR  SETTING UP OF PAEDIARIC INCENTIVE CARE UNIT(PICU)  AT BANKURA SAMMILANI MEDICAL COLLEGE AND HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (21, 1, N'WBMSC/AAES-456/PYMT/1018/15', N'ELECTRICAL WORKS FOR  SETTING UP OF PAEDIARIC INCENTIVE CARE UNIT(PICU)  AT BANKURA SAMMILANI MEDICAL COLLEGE AND HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (22, 1, N'WBMSC/AAES-457/PYMT/1019/15', N'CIVIL WORKS FOR REPAIR AND RENOVATION OF SNCU AT SURI SADAR HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (23, 1, N'WBMSC/AAES-458/PYMT/1020/15', N'ELECTRICAL WORKS FOR REPAIR AND RENOVATION OF SNCU AT SURI SADAR HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (24, 1, N'WBMSC/AAES-459/PYMT/1021/15', N'CIVIL WORKS FOR REPAIR AND RENOVATION OF SNCU AT MJN HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (25, 1, N'WBMSC/AAES-460/PYMT/1022/15', N'ELECTRICAL WORKS FOR REPAIR AND RENOVATION OF SNCU AT MJN HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (26, 1, N'WBMSC/AAES-461/Pymt/1023/15', N'SPACIAL REPAIR TO THE  ACADEMY BUILDING OF THE CULCUTTA HOMEAPATHIC MEDICAL COLLEGE AND HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (27, 1, N'WBMSC/AAES-462/PYMT/1024/15', N'MAJOR UPGRADATION OF LABOUR ROOM & MATERNITY WARD AT TAMLUK DISTRICT HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (28, 1, N'WBMSC/AAES-463/PYMT/1025/15', N'ELECTRICAL INSTALLATION WORKS FOR THE PROPOSED MAJOR UPGRADATION OF LABOUR ROOM & MATERNITY WARD AT TAMLUK DISTRICT HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (29, 1, N'WBMSC/AAES-464/PYMT/1027/15', N'ADDITIONLA ELECTRICAL WORKS FOR THE UPGRADATION OF LABOUR ROOM COMPLEX AT CALCUTTA NATIONAL MEDICAL COLLEGE AND HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (30, 1, N'WBMSC/AAES-465/PYMT/1028/15', N'MAJOR UPGRADATION OF LABOUR ROOM & MATERNITY WARD AT CONTAI SUB DIVISIONAL HOSPITAL.', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (31, 1, N'WBMSC/AAES-466/PYMT/1029/15', N'ELECTRICAL INSTALLATION WORKS FOR THE PROPOSED MAJOR UPGRADATION OF LABOUR ROOM & MATERNITY WARD AT CONTAI SUB DIVISIONAL HOSPITAL.', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (32, 1, N'WBMSC/AAES-467/PYMT/1030/15', N'ROOF TREATMENT WORK OF BLOOD STORAGE UNIT OF UTTARPARA STATE GENERAL HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (33, 1, N'WBMSC/AAES-468/PYMT/1031/15', N'SETTING UP OF SNCU AT LALBAGH SUB-DIVISIONAL HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (34, 1, N'WBMSC/AAES-469/PYMT/1032/15', N'ELECTRICAL INSTALLATION WORKS FOR THE PROPOSED SNCU AT LALBAGH SUB-DIVISIONAL HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (35, 1, N'WBMSC/AAES-470/PYMT/1033/15', N'VERTICAL EXTENSION WITH LIGHT STRUCTURE OF GR.D STAFF QUARTER AT CALCUTTA PAVLAV HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (36, 1, N'WBMSC/AAES-471/PYMT/1034/15', N'ELECTRICAL INSTALLATION WORKS FOR  MAJOR UPGRADATION OF LABOUR ROOM & MATERNITY WARD AT BARASAT DISTRICT HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (37, 1, N'WBMSC/AAES-472/PYMT/1035/15', N'CIVIL WORK FOR NEWLY SETUP DEDICATED DISTRICT FAMILY WELFARE STORES AS WELL AS DISTRICT VACCINE STORES', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (38, 1, N'WBMSC/AAES-473/PYMT1036/15', N'ELECTRICAL WORK FOR NEWLY SETUP DEDICATED DISTRICT FAMILY WELFARE STORES AS WELL AS DISTRICT VACCINE STORES', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (39, 1, N'WBMSC/AAES-474/PYMT/1037/15', N'VERTICAL EXTENSION OF GD.D STAFF QUARTER WITH IN CAMPUS OF CALCUTTA PAVLOV HOSPITAL,ELECTRICAL INSTALLATION AND ADDITIONAL PLUMBING WORK', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (40, 1, N'WBMSC/AAES-329/PYMT/1047/15', N'POWER AUGMENTATION FOR FAIR PRICE DIAGNOSTIC UNIT AT MURSHIDABAD MCH', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (41, 1, N'WBMSC/AAES-339/PYMT/1048/15', N'UPGRADATION WORKS AT JANGIPUR SUB- DIVISION HOSPITAL, MURSHIDABAD DISTRICT.', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (42, 1, N'WBMSC/AAES-320/PYMT/1049/15', N'MAJOR UPGRADATION WORKS AT MATERNITY WARD & LABOUR ROOM OF DEBEN MAHATO HOSPITAL IN THE DISTRICT OF PURULIYA', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (43, 1, N'WBMSC/AAES-321/PYMT/1050/15', N'ELECTRICAL INSTALLATION WORKS FOR UPGRADATION OF MATERNITY WARD & LABOUR ROOM.', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (44, 1, N'WBMSC/AAES-328/1051/15', N'POWER AUGMENTATION FOR FAIR PRICE DIAGNOSTIC UNIT AND CCU', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (45, 1, N'WBMSC/AAES-337/PYMT/1052/15', N'CONSTRUCTION OF NEW HOSTEL BUILDING FOR TRAINNE ANM STUDENTS AT DIMOND HARBOUR SUB-DIVISIONAL HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (46, 1, N'WBMSC/AAES-345/PYMT/1053/15', N'SETTING UP OF DISTRICT EARLY INTERVENTION STORE AT NORTH BENGAL MEDICAL COLLEGE AND HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (47, 1, N'WBMSC/AAES-341/PYMT/1054/15', N'ELECTRICAL INSTALLATION WORKS AT GYNAE OT LABOUR ROOM AND MATERNITY WARD AT MURSHIDABAD MEDICAL COLLEGE AND HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (48, 1, N'WBMSC/AAES-343/PYMT/1055/15', N'ADDITIONAL FUND FOR CONSTRUCTION OF 4-STORIED BUILDING FOR EXTENSION OF LABOUR ROOM AND OT ROOM ADJACENTTO NORTH BLOCK O G&O BUILDING AT RG KAR MEDICAL COLLEGE AND HOSPITAL.', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (49, 1, N'WBMSC/AAES-346/PYMT/1056/15', N'ELECTRICAL INSTALLATION WORKS AT DISTRICT EARLY INTERVETION CENTRE AT NORTH BENGAL MEDICAL COLLEGE AND HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (50, 1, N'WBMSC/AAES-348/PYMT/1057/15', N'ELECTRICAL INSTALLATION WORKS FOR SETTING UP OF DISTRICT EARLY INTERVETION CENTRE AT DEBEN MAHATO HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (51, 1, N'WBMSC/AAES-350/PYMT/1058/15', N'CIVIL WORKS FOR FACE LIFTING WORKS FOR VERTICAL EXTENSION OF STATE PROGRAMME MANAGEMENT UNIT ,NHM OFFICE BUILDING (PHASE-2) LOCATED AT THE SECOND FLOOR OF LIBRARY BUILDING IN THE CAMPUS OF SWASTHYA BHAWAN', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (52, 1, N'WBMSC/AAES-352/PYMT/1059/15', N'ELECTRICAL INSTALLATION WORKS FOR VERTICAL EXTENSION WORKS  OF STATE PROGRAMME MANAGEMENT UNIT ,NHM OFFICE BUILDING (PHASE-2) LOCATED AT THE SECOND FLOOR OF LIBRARY BUILDING IN THE CAMPUS OF SWASTHYA BHAWAN', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (53, 1, N'WBMSC/AAES-354/PYMT/1060/15', N'CIVIL WORKS RELATED TO CONSTRUCTION OF CMOH OFFICE AT BISHNUPUR HEALTH DISTRICT', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (54, 1, N'WBMSC/AAES-355/PYMT/1061/15', N'ELECTRICAL WORKS RELATED TO CONSTRUCTION OF CMOH OFFICE AT BISHNUPUR HEALTH DISTRICT', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (55, 1, N'WBMSC/AAES-375/PYMT/1062/15', N'ELECTRICAL INSTALLATION WORKS FOR PROPOSED DEAD HOUSE IN THE PLACE OF EXISTING DEAD HOUSE WHICH IS TO BE DEMOLISTED TO CLEAR THE LAND FOR THE PROPOSED MOTHER AND CHILD HUB', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (56, 1, N'WBMSC/AAES-367/PYMT/1063/15', N'CONSTRUCTION  OF GNM TRANNING SCHOOL AND HOSTEL BUILDING AT ULUBERIA SUB DIVISIONAL HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (57, 1, N'WBMSC/AAES-391/PYMT/1064/15', N'SUPPELY AND INSTALLATION OF 2 TON CAPACITY SPLIT AC(14 NO)IN NEO NATAL WARD IN MIDNAPUR MEDICAL COLLEGE AND HOSPITAL.', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (58, 1, N'WBMSC/AAES-363/PYMT/1065/15', N'CONSTRUCTION OF GNM TRANING SCHOOL AND HOSTEL BUILDING AT BASIRHAT SD HOSPITAL COMPOUND', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (59, 1, N'WBMSC/AAES-361/PYMT/1066/15', N'CONSTRUCTION OF GNM TRANING SCHOOL AND HOSTEL BUILDING AT COLLEGE OF MEDICINE AND SAGAR DUTTA HOSPITAL,KAMARHATI', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (60, 1, N'WBMSC/AAES-360/PYMT/1067/15', N'CONSTRUCTION OF GNM TRANING SCHOOL AND HOSTEL BUILDING AT COLLEGE OF MEDICINE AND SAGAR DUTTA HOSPITAL,KAMARHATI', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (61, 1, N'WBMSC/AAES-356/PYMT/1068/15', N'ELECTRICAL WORKS OF COLLEGE OF MEDICINE AND SAGAR DUTTA HOSPITAL,KAMARHATI', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (62, 1, N'WBMSC/AAES-393/PYMT/1069/15', N'REPAIR AND RENOVATION CUM MODIFICATION OF THE PASSAGE BETWEEN SNCU AT EYE BUILDING AND G&O BUILDING AT CALCUTTA NATIONAL MEDIACL COLLEGE  & HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (63, 1, N'WBMSC/AAES-392/PYMT/1070/15', N'ELECTRICAL WORKS RELETED TO CONSTRUCTION  OF SNCU  AT IMAMBARA DISTRICT HOSPITAL,CHINSURAH', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (64, 1, N'WBMSC/AAES-369/PYMT/1071/15', N'CONSTRUCTION OF GNM TRANNING SCHOOL AND HOSTEL BUILDING AT GHATAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (65, 1, N'WBMSC/AAES-364/PYMT/1072/15', N'CONSTRUCTION OF GNM TRANNING SCHOOL AND HOSTEL BUILDING AT BARASAT HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (66, 1, N'WBMSC/AAES-365/PYMT/1073/15', N'CONSTRUCTION OF GNM TRANNING SCHOOL AND HOSTEL BUILDING AT BARASAT HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (67, 1, N'WBMSC/AAES-368/PYMT/1074/15', N'CONSTRUCTION OF GNM TRANNING SCHOOL AND HOSTEL BUILDING AT GHATAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (68, 1, N'WBMSC/AAES-377/PYMT/1075/15', N'SETTING UP SNCU AT ALIPURDUAR SUB-DIVISIONAL HOSPITAL,ALIPURDUAR', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (69, 1, N'WBMSC/AAES-359/PYMT/1076/15', N'CONSTRUCTION OF GNM TRANNING SCHOOL AND HOSTEL BUILDING AT JHARGRAM', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (70, 1, N'WBMSC/AAES-382/PYMT/1077/15', N'ELECTRICAL WORKS RELATED TO CONSTRUCTION OF CMOH OFFICE BUILDING AT BASIRHAT HEALTH DISTRICT', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (71, 1, N'WBMSC/AAES-380/PYMT/1078/15', N'ELECTRICAL INSTALLATION WORK FOR PROPOSED BLOOD BANK AND PATHOLOGY DEPARTMENT AT EGRA SUB DIVISIONAL HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (72, 1, N'WBMSC/AAES-379/PYMT/1079/15', N'CONSTRUCTION OF BLOOD BANK AND PATHOLOGICAL UNIT AT FIRST FLOOR OF OPD UNIT OF EGRA SUB-DIVISIONAL HOSPITAL AT EGRA', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (73, 1, N'WBMSC/AAES-378/PYMT/1080/15', N'CONSTRUCTION OF MOTHERS(SNCU BABIES MOTHERS)REST ROOM OVER EXISTING KITCHEN BLOCK AT DIMOND HARBOUR DISTRICT HOSPITAL.', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (74, 1, N'WBMSC/AAES-362/PYMT/1081/15', N'CONSTRUCTION OF GNM TRANNING SCHOOL AND HOSTEL BUILDING AT BASIRHAT S.D. HOSPITAL COMPOUND', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (75, 1, N'WBMSC/AAES-373/PYMT/1082/15', N'CIVIL WORKS FOR UPGRADATION OF LABOUR ROOM COMPLEX AT CALCUTTA NATIONAL MEDICAL COLLEGE AND HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (76, 1, N'WBMSC/AAES-358/PYMT/1083/15', N'CONSTRUCTION OF GNM TRANNING SCHOOL AND HOSTEL BUILDING AT JHARGRAM', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (77, 1, N'WBMSC/AAES-385/PYMT/1084/15', N'CIVIL WORK FOR SETTING UP SNCUAT DR. BN BOSE SUB-DIVISIONAL HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (78, 1, N'WBMSC/AAES-384/PYMT/1085/15', N'ELECTRICAL INSTALLATION WORKS FOR THE PROPOSED SNCU AT CHANCHAL SUB DIVISION HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (79, 1, N'WBMSC/AAES-366/PYMT/1086/15', N'CONSTRUCTION OF GNM TRANNING SCHOOL AND HOSTEL BUILDING AT ULUBERIA SUB-DIVISIONAL HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (80, 1, N'WBMSC/AAES-372/PYMT/1087/15', N'ELECTRICAL INSTALLATION WORKS FOR THE UPGRADATION OF LABOUR ROOM COMPLEX AT CALCUTTA NATIONAL MEDICAL COLLEGE AND HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (81, 1, N'WBMSC/AAES-388/PYMT/1088/15', N'ELECTRICAL INSTALLATION WORKS FOR PROPOSED SNCU WARD AT KAKDIP SUB-DIVISIONAL HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (82, 1, N'WBMSC/AAES-389/PYMT/1089/15', N'CIVIL WORK FOR CMOH OFFICE BUILDING OF NEW HEALTH DISTRICT AT RAMPURHAT', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (83, 1, N'WBMSC/AAES-387/PYMT/1090/15', N'CIVIL WORKS FOR CONSTRUCTION OF SNCU WARD AT KAKDWIP SUB-DIVISIONAL HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (84, 1, N'WBMSC/AAES-386/PYMT/1091/15', N'ELECTRICAL INSTALLATION WORKS FOR THE PROPOSED SNCU AT DR. BN BOSE SUB- DIVISIONAL HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (85, 1, N'WBMSC/AAES-401/PYMT/1092/15', N'ELECTRICAL INSTALLATION WORKS FOR SETTING UP 10 BEDED STEP DOWN UNIT ,LAB MEETING HALL ,GNM CHANGE ROOM INCLUDING ALLIED WORKS AT DEBEN MAHATO SADAR HOSPITAL.', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (86, 1, N'WBMSC/AAES-400/PYMT/1093/15', N'ADDITIONAL AMMOUNT OF ELECTRICAL INSTALLATION WORK INCLUDING AIR CONDITIONING OF PROPOSES SNCU BLOCK AT CALCUTTA NATIONAL MEDICAL COLLEGE AND HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (87, 1, N'WBMSC/AAES-399/PYMT/1094/15', N'ADDITIONAL ELECTRICAL WORKS RELETED TO SETTING UP OF NEO NATAL WARD WARD AT MATRISADAN OF MURSHIDABAD MEDICAL COLLEGE AND HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (88, 1, N'WBMSC/AAES-398/PYMT/1095//15', N'EXTENSION OF SNCU AT DISTRICT HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (89, 1, N'WBMSC/AAES-397/PYMT/1096/15', N'ADDITIONAL ELECTRICAL WORKS RELETED TO SETTING UP OF NEONATAL WARD AT KANDI SUB-DIVISIONAL HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (90, 1, N'WBMSC/AAES-396/PYMT/1097/15', N'CIVIL WORK AT MALDA MEDICAL COLLEGE AND HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (91, 1, N'WBMSC/AAES-395/PYMT/1098/15', N'ADDITIONAL ELECTRICAL WORKS AT SNCU AT BASIRHAT SUB-DIVISIONAL HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (92, 1, N'WBMSC/AAES-394/PYMT/1099/15', N'CIVIL WORK TOWARDS SETTING UP OF EXTENDED SNCU AT 1ST FLOOR G&O BUILDING OPPOSITE TO EXISTING SNCU AT R.G KAR MEDICAL COLLEGE  AND HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (93, 1, N'WBMSC/AAES-374//PYMT/1100/15', N'ELECTRICAL INSTALLATION WORKS OF THE  GYANE & OBS O.T. AT CALCUTTA NATIONAL MEDICAL COLLEGE AND HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (94, 1, N'WBMSC/AAES-383/PYMT/1101/15', N'CIVIL WORKS FOR CONSTRUCTION OF SNCU WARD AT CHANCHOL SUB -DIVISIONAL HOSPITAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (95, 1, N'WBMSC/PYMT/INT.SYR.PUMP/1106/15', N'PAYMENT FILE OF INFUSION PUMP AND SYRINGE PUMP B.BRAUN MEDICAL(INDIA) PVT.LTD', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (96, 1, N'WBMSC/SERVICE TAX/1112/15', N'SERVIECE TAXATION', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (97, 1, N'WBMSC/AGREMENT/PART-2/1039/15', N'AGREMENT FILE-2', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (98, 1, N'WBMSC/SCHEME MONITORING/1043/15', N'SCHEME MONITORING SYSTEM', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (99, 2, N'WBMSC/C-ARM/991/15', N'RELOCATION OF C-RAM MACHINE', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (100, 2, N'WBMSC/DIALYSIS & RO/993/15', N'PROCURMENT OF DIALYSIS M/C FOR BANKURA SAMMILANI MCH', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (101, 2, N'WBMSC/C-RAM/HOWRAH/994/15', N'PROCUREMENT OF C-RAM MACHINE FOR HOWRAH DH', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (102, 2, N'WBMSC/PROC/UNDP/RW/CSS/1042/15', N'PROCUREMENT OF RW FOR CSS', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (103, 2, N'WBMSC/PROC/MARKER/PENS/1102/15', N'PROCUREMENT OF MARKER PENS FOR PULSE POLIO PROGRAMME', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (104, 2, N'WBMSC/PROC/MEDINIPUR/GAS PIPELINE/1105/15', N'MEDINIPUR MEDICAL COLLEGE GAS PIPE LINE EXTENSION', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (105, 2, N'WBMSC/PROC/EQUIP/SCHOOL HEALTH/1111/15', N'PROCUREMENT OF EQUIPMENTS FOR SCHOOL HEALTH', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (106, 2, N'WBMSC/PROC/UNDP/REG-CLO/1113/15', N'UNDP REQUISITION CLOSURE', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (107, 2, N'WBMSC/TOUR FILE/1114/15', N'TOUR FILE OF RAJU SARKAR', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (108, 2, N'WBMSC/TOUR FILE/1115/15', N'TOUR FILE OF SAMRAT ROY CHOUDHRAY', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (109, 2, N'WBMSC/TOUR FILE/1116/15', N'TOUR FILE OF SOMA DAS', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (110, 2, N'WBMSC/TOUR FILE/1117/15', N'TOUR FILE OF SOMA DAS', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (111, 2, N'WBMSC/TOUR FILE/1118/15', N'TOUR FILE OF ABIR KUMAR SASMAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (112, 2, N'WBMSC/PN/CMCH/1118/15', N'PROCUREMENT OF EQUIPMENTS FOR SETTING UP PAEDIATIC NEPHROLOGY UNIT IN MEDICAL COLLEGE ,KOLKATA.', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (113, 2, N'WBMSC/PN/BC ROY/1119/15', N'PROCUREMENT OF INSTRUMENTS FOR PAEDIATIC NEPHROLOGY UNIT OF DR BC ROY PGIPS', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (114, 2, N'WBMSC/PN/CSS/1120/15', N'SETTING UP OF PAEDIATIC NEPHROLOGY UNIT AT CSS COLLEGE AND OBSTETRICS', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (115, 2, N'WBMSC/PN/NRS/1021/15', N'PROCUREMENT OF INSTRUMENTS ETC FOR PAEDIATIC NEPHROLOGY UNIT OF NRS MEDICAL COLLLEGE', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (116, 5, N'WBMSC/ORG.PER/1012/15', N'PERSONAL FILE OF AYAN BISWAS,SAE©', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (117, 5, N'WBMSC/ORG.PER/1026/15', N'PERSONAL FILE OF PARTHA CHAKRABORTY', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (118, 5, N'WBMSC/ORG.PER/1038/15', N'PERSONAL FILE OF JOY CHATTERJEE,(AE-CIVIL)', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (119, 5, N'WBMSC/ORG.PER/1040/15', N'PERSONAL FILE OF SOURAV DAS (AE-CIVIL)', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (120, 5, N'WBMSC/ORG.PER/1041/15', N'PERSONAL FILE OF DILIP GHOSH,CONSULTANT ELECTRICAL ENGINEER', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (121, 6, N'WBMSC/AIIMS/NADIA/946/15', N'SETTING UP OF AN AIIMS AT KALYANI,NADIA', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), N'engg', NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (122, 6, N'WBMSC/ELEC MAINTENANCE/972/15', N'ELECTRICAL MAINTENANCE OF 3 MCH', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), N'engg', NULL, NULL, N'engg', CAST(0x0000A4CA00000000 AS DateTime))
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (123, 6, N'WBMSC/CLAIM/HOSPITECH MANAGE/976/15', N'CLAIM OF HOSPITECH MANAGEMENT CONSULTANT PVT.LTD', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (124, 6, N'WBMSC/NON BRGF/DEMOL/WALSH SDH/982/15', N'BUILDING DEMALITION OF AT WALSH HOSP.(SRIRAMPORE)', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (125, 6, N'WBMSC/OXYGEN MINI MANI FOLD/CCU & HDU/987/15', N'ESTABLISHMENT OF OXYGENMINI MANIFOLD AT CCU & HDU IN DHS &SDHS', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (126, 6, N'WBMSC/NON BRGF/KALNA SDH/990/15', N'PERMISSION FOR DEMELITION OF EXISTING 2 STRUCTURES IN PRIMISSES OF KALNA SDH', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (127, 6, N'WBMSC/MCH HUB/DESIGN AND DRAWINGS/992/15', N'MOTHER AND CHILD HUB DRAWING', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (128, 6, N'WBMSC/NON BRGF/PROOF CONST/1011/15', N'ENGASEMENT OF PROOF CONSULTANT', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (129, 6, N'WBMSC/AYUSH HOSP/ALPRDUR/1013/15', N'CONSTRUCTION OF AYUSH HOSPITAL AT TAPSIKATA ALIPURDUAR', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (130, 6, N'WBMSC/BRGF/CES/1044/15', N'PROPOSED SUPER SPECIALITY HOS[ITALS IN BACKWARD DISTRICT IN WESTBENGAL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (131, 6, N'WBMSC/BRGF/DDF/1045/15', N'TERRTIARY HEALTH CARE HOSP. AT ONDA,CHATRA, HATUARA LAY DDF CONSULTANTS', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (132, 6, N'WBMSC/BRGF/V&A/1046/15', N'SUPER MULTI SPECIALITY HOSPITAL VARIATEAS & ADJUSTMENTS', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (133, 6, N'WBMSC/DWG/NON BRGF/HASP/1103/15', N'APPROVAL OF DRAWINGS NON BRGF', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (134, 6, N'WBMSC/ALIPURDUAR/SGH/1107/15', N'CONSTRUCTION WORKS OF ALIPURDUAR DH & BIRPARA SGH', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (135, 6, N'WBMSC/ALIPURDUAR/AYUSH HOSP/1108/15', N'ESTABLISHMENT OF INTEGRATED AYUSH HOSPITAL AT TAPSIKATA ALIPURDUAR', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), N'engg', NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (136, 6, N'WBMSC/MCH/DEIC/1109/15', N'ENGINEERING DRAWING OF MCH WINGS INTEGRATING DEIC', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (137, 6, N'WBMSC/NON BRGF/DEMAL/ASANSOL DH/1104/15', N'BUILDING DEMALITION OF AT  ASANSOL', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (138, 6, N'WBMSC/BIJOTGARH SGH/1110/15', N'INFRASTRUCTURAL MODIFICATION OF BIJOYGARH SGH FOR CREATION OF CRITICAL CARE TACAINING CENTRE', N'2015', NULL, NULL, NULL, NULL, N'Y', NULL, CAST(0x0000A4C700000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (139, 6, N'WBMSC/engg3', N'engg3', N'2015', N'', N'', N'WBMSC/139/2015', N'I', N'N', N'', CAST(0x0000A4C800000000 AS DateTime), N'engg', NULL, NULL, N'santanu@accounts', CAST(0x0000A4CA00000000 AS DateTime))
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (141, 1, N'WBMSC/NewFile20150727', N'WBMSC/NewFile20150727', N'2015', N'Santanu Paul', N'', N'WBMSC/141/2015', N'I', N'N', N'', CAST(0x0000A4E200000000 AS DateTime), N'santanu@accounts', NULL, NULL, N'arnab@hr', CAST(0x0000A4E200000000 AS DateTime))
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (142, 7, N'WBMSC/20150727File1', N'WBMSC/20150727File1', N'2015', N'aaaa', N'', N'WBMSC/142/2015', N'I', N'Y', N'', CAST(0x0000A4E200000000 AS DateTime), N'santanu@accounts', NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (143, 7, N'WBMSC/20150727File2', N'WBMSC/20150727File2', N'2015', N'', N'', N'WBMSC/143/2015', N'I', N'Y', N'', CAST(0x0000A4E200000000 AS DateTime), N'arnab@hr', NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (144, 7, N'WBMSC/100000001', N'WBMSC/100000001', N'2015', N'', N'', N'WBMSC/144/2015', N'I', N'Y', N'', CAST(0x0000A4E200000000 AS DateTime), N'arnab@hr', NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (145, 7, N'WBMSC/15000001', N'WBMSC/15000001', N'2015', N'', N'', N'WBMSC/145/2015', N'I', N'Y', N'', CAST(0x0000A4E200000000 AS DateTime), N'santanu@accounts', NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (146, 5, N'WBMSC/11111111', N'WBMSC/11111111', N'2015', N'', N'', N'WBMSC/146/2015', N'I', N'Y', N'', CAST(0x0000A4E200000000 AS DateTime), N'arnab@hr', NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (147, 5, N'WBMSC/ABCDEF01', N'WBMSC/ABCDEF01', N'2015', N'', N'', N'WBMSC/147/2015', N'I', N'Y', N'', CAST(0x0000A4E200000000 AS DateTime), N'arnab@hr', NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy], [LastFollowupBy], [LastFollowupDt]) VALUES (148, 6, N'WBMSC/20150728', N'WBMSC/20150728 sub', N'2015', N'', N'', N'WBMSC/148/2015', N'I', N'Y', N'', CAST(0x0000A4E300000000 AS DateTime), N'engg', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[FileMaster] OFF
/****** Object:  Table [dbo].[DeptMaster]    Script Date: 09/11/2015 15:40:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DeptMaster](
	[DeptID] [bigint] IDENTITY(1,1) NOT NULL,
	[DeptNm] [varchar](100) NOT NULL,
	[DeptDesc] [varchar](100) NULL,
	[BranchID] [bigint] NOT NULL,
 CONSTRAINT [PK__DeptMast__0148818E09DE7BCC] PRIMARY KEY CLUSTERED 
(
	[DeptID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DeptMaster] ON
INSERT [dbo].[DeptMaster] ([DeptID], [DeptNm], [DeptDesc], [BranchID]) VALUES (1, N'Accounts', N'Accounts of WBMSC', 11)
INSERT [dbo].[DeptMaster] ([DeptID], [DeptNm], [DeptDesc], [BranchID]) VALUES (2, N'Procurement', N'Procurement of WBMSC', 11)
INSERT [dbo].[DeptMaster] ([DeptID], [DeptNm], [DeptDesc], [BranchID]) VALUES (3, N'ITC1', N'', 4)
INSERT [dbo].[DeptMaster] ([DeptID], [DeptNm], [DeptDesc], [BranchID]) VALUES (4, N'ITC2', N'', 4)
INSERT [dbo].[DeptMaster] ([DeptID], [DeptNm], [DeptDesc], [BranchID]) VALUES (5, N'HR', N'', 11)
INSERT [dbo].[DeptMaster] ([DeptID], [DeptNm], [DeptDesc], [BranchID]) VALUES (6, N'Engineering', N'', 11)
INSERT [dbo].[DeptMaster] ([DeptID], [DeptNm], [DeptDesc], [BranchID]) VALUES (7, N'GENERAL', N'General Administration', 11)
SET IDENTITY_INSERT [dbo].[DeptMaster] OFF
/****** Object:  Table [dbo].[BranchMaster]    Script Date: 09/11/2015 15:40:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BranchMaster](
	[BranchID] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchNm] [varchar](100) NOT NULL,
	[BranchDesc] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[BranchMaster] ON
INSERT [dbo].[BranchMaster] ([BranchID], [BranchNm], [BranchDesc]) VALUES (1, N'RSBY', N'')
INSERT [dbo].[BranchMaster] ([BranchID], [BranchNm], [BranchDesc]) VALUES (2, N'MS', N'')
INSERT [dbo].[BranchMaster] ([BranchID], [BranchNm], [BranchDesc]) VALUES (3, N'SPSRC', N'')
INSERT [dbo].[BranchMaster] ([BranchID], [BranchNm], [BranchDesc]) VALUES (4, N'ITC', N'')
INSERT [dbo].[BranchMaster] ([BranchID], [BranchNm], [BranchDesc]) VALUES (5, N'TDE', N'')
INSERT [dbo].[BranchMaster] ([BranchID], [BranchNm], [BranchDesc]) VALUES (6, N'AYUSH', N'')
INSERT [dbo].[BranchMaster] ([BranchID], [BranchNm], [BranchDesc]) VALUES (7, N'P&B', N'')
INSERT [dbo].[BranchMaster] ([BranchID], [BranchNm], [BranchDesc]) VALUES (8, N'GA', N'')
INSERT [dbo].[BranchMaster] ([BranchID], [BranchNm], [BranchDesc]) VALUES (9, N'NRHM', N'')
INSERT [dbo].[BranchMaster] ([BranchID], [BranchNm], [BranchDesc]) VALUES (10, N'PHP', N'')
INSERT [dbo].[BranchMaster] ([BranchID], [BranchNm], [BranchDesc]) VALUES (11, N'WBMSC', NULL)
SET IDENTITY_INSERT [dbo].[BranchMaster] OFF
/****** Object:  Table [dbo].[xx_Sheet3]    Script Date: 09/11/2015 15:40:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[xx_Sheet3](
	[FileNum] [varchar](250) NULL,
	[DeptID] [bigint] NULL,
	[FileOpenYr] [varchar](6) NULL,
	[SubMatter] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-349A/PYMT/995/15', 1, N'2015', N'CIVIL WORKS AT NHM OFFICE BUILDING')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-351/351A/PYMT/996/15', 1, N'2015', N'SANAITARY AND PLUMBING WORK FOR VERTICAL EXTENSION OF STATE PROGRAMME MANAGEMENT  UNIT NHM OFFICE BUILDING (PHASE-2)')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-333/PYMT/997/15', 1, N'2015', N'ELECTRICAL INSTALLATION WORKS AT EXISTING HOMEOPATHY BUILDING FOR SETTING UP OF DISTRICT EARLY INTERVENTION CENTRE')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-439/PYMT/998/15', 1, N'2015', N'ELECTRICAL INSTALLATION WORKS SETTING UP OF BLOOD STROAGE UNIT AT GABBERIA STATE GENERAL HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-440/PYMT/999/15', 1, N'2015', N'MAJOR UPGRADATION OF LABOUR ROOM & MATERNITY WARD AT BASIRHAT DISTRICE HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-441/PYMT/1000/15', 1, N'2015', N'ELECTRICAL INSTALLATION WORKS FOR THE PROPOSED MAJOR UPGRADATION OF LABOUR ROOM & MATERNITY WARD AT BASIRHAT DISTRICE HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-442/PYMT/1001/15', 1, N'2015', N'ELECTRICAL INSTALLATION WORKS REGARDING RENOVATION OF MATERNITY WARD OF VIDYASAGAR STATE GENERAL HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-443/PYMT/1002/15', 1, N'2015', N'CIVIL WORKS RELATED TO RENOVATION OF EXISTING PADIATIC INCENTIVE CARE UNIT (PICU) AT THE FIRST FLOOR OF THE BIDHAN BLOCK OF MIDNAPUR MEDICAL COLLEGE AND HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-444/PYMT/1003/15', 1, N'2015', N'ELECTRICAL WORKS RELATED TO RENOVATION OF EXIXTING PADIATIC INCENTIVE CARE UNIT (PICU) AT THE FIRST FLOOR OF THE BIDHAN BLOCK OF MIDNAPUR MEDICAL COLLEGE AND HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-445/PYMT/1004/15', 1, N'2015', N'CIVIL WORKS RELATED TO CONSTRUCTION OF LIGHT SHED FOR MOTHER REST ROOM INCLUDING RENOVATION OF HOD(PRD) ROOM i.e. VERANDA PORTION OF 2ND FLOOR MIDNAPUR MEDICAL COLLEGE AND HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-446/PYMT/1005/15', 1, N'2015', N'ELECTRICAL WORKS RELATED TO CONSTRUCTION OF LIGHT SHED FOR MOTHER REST ROOM INCLUDING RENOVATION OF HOD(PRD) ROOM i.e. VERANDA PORTION OF 2ND FLOOR MIDNAPUR MEDICAL COLLEGE AND HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-447/PYMT/1006/15', 1, N'2015', N'CIVIL WORKS RELATED TO SETTING UP OF PAEDIARIC INCENTIVE CARE UNIT(PICU) AT CHITTARANJAN SEVA SADAN AND SISU SADAN.')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-448/PYMT/1007/15', 1, N'2015', N'ELECTRICAL WORKS RELATED TO SETTING UP OF PAEDIARIC INCENTIVE CARE UNIT(PICU) AT CHITTARANJAN SEVA SADAN AND SISU SADAN.')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-449/PYMT/1008/15', 1, N'2015', N'CIVIL WORK FOR  SETTING UP OF PAEDIARIC INCENTIVE CARE UNIT(PICU) LABORATORY AND AUTOCLAVE AT SSKM-IPGME&R')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-450/PYMT/1009/15', 1, N'2015', N'ELECTRICAL WORKS FOR  SETTING UP OF PAEDIARIC INCENTIVE CARE UNIT(PICU) LABORATORY AND AUTOCLAVE AT SSKM-IPGME&R')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-451/PYMT/1010/15', 1, N'2015', N'CIVIL WORKS FOR  SETTING UP OF PAEDIARIC INCENTIVE CARE UNIT(PICU) AT CULCATTA NATIONAL MEDICAL COLLEGE AND HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-452/PYMT/1014/15', 1, N'2015', N'ELECTRICAL WORKS FOR  SETTING UP OF PAEDIARIC INCENTIVE CARE UNIT(PICU) AT CULCATTA NATIONAL MEDICAL COLLEGE AND HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-453/PYMT/1015/15', 1, N'2015', N'CIVIL WORKS RELATED TO SETTING TO SETTING UP AND EXPANSION OF PAEDIATRIC INCENTIVE CARE UNIT(PICU) AT NRS MEDICAL COLLEGE AND HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-454/PYMT/1016/15', 1, N'2015', N'ELECTRICAL WORKS RELATED TO SETTING TO SETTING UP AND EXPANSION OF PAEDIATRIC INCENTIVE CARE UNIT(PICU) AT NRS MEDICAL COLLEGE AND HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-455/PYMT/1017/15', 1, N'2015', N'CIVIL WORKS FOR  SETTING UP OF PAEDIARIC INCENTIVE CARE UNIT(PICU)  AT BANKURA SAMMILANI MEDICAL COLLEGE AND HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-456/PYMT/1018/15', 1, N'2015', N'ELECTRICAL WORKS FOR  SETTING UP OF PAEDIARIC INCENTIVE CARE UNIT(PICU)  AT BANKURA SAMMILANI MEDICAL COLLEGE AND HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-457/PYMT/1019/15', 1, N'2015', N'CIVIL WORKS FOR REPAIR AND RENOVATION OF SNCU AT SURI SADAR HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-458/PYMT/1020/15', 1, N'2015', N'ELECTRICAL WORKS FOR REPAIR AND RENOVATION OF SNCU AT SURI SADAR HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-459/PYMT/1021/15', 1, N'2015', N'CIVIL WORKS FOR REPAIR AND RENOVATION OF SNCU AT MJN HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-460/PYMT/1022/15', 1, N'2015', N'ELECTRICAL WORKS FOR REPAIR AND RENOVATION OF SNCU AT MJN HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-461/Pymt/1023/15', 1, N'2015', N'SPACIAL REPAIR TO THE  ACADEMY BUILDING OF THE CULCUTTA HOMEAPATHIC MEDICAL COLLEGE AND HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-462/PYMT/1024/15', 1, N'2015', N'MAJOR UPGRADATION OF LABOUR ROOM & MATERNITY WARD AT TAMLUK DISTRICT HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-463/PYMT/1025/15', 1, N'2015', N'ELECTRICAL INSTALLATION WORKS FOR THE PROPOSED MAJOR UPGRADATION OF LABOUR ROOM & MATERNITY WARD AT TAMLUK DISTRICT HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-464/PYMT/1027/15', 1, N'2015', N'ADDITIONLA ELECTRICAL WORKS FOR THE UPGRADATION OF LABOUR ROOM COMPLEX AT CALCUTTA NATIONAL MEDICAL COLLEGE AND HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-465/PYMT/1028/15', 1, N'2015', N'MAJOR UPGRADATION OF LABOUR ROOM & MATERNITY WARD AT CONTAI SUB DIVISIONAL HOSPITAL.')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-466/PYMT/1029/15', 1, N'2015', N'ELECTRICAL INSTALLATION WORKS FOR THE PROPOSED MAJOR UPGRADATION OF LABOUR ROOM & MATERNITY WARD AT CONTAI SUB DIVISIONAL HOSPITAL.')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-467/PYMT/1030/15', 1, N'2015', N'ROOF TREATMENT WORK OF BLOOD STORAGE UNIT OF UTTARPARA STATE GENERAL HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-468/PYMT/1031/15', 1, N'2015', N'SETTING UP OF SNCU AT LALBAGH SUB-DIVISIONAL HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-469/PYMT/1032/15', 1, N'2015', N'ELECTRICAL INSTALLATION WORKS FOR THE PROPOSED SNCU AT LALBAGH SUB-DIVISIONAL HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-470/PYMT/1033/15', 1, N'2015', N'VERTICAL EXTENSION WITH LIGHT STRUCTURE OF GR.D STAFF QUARTER AT CALCUTTA PAVLAV HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-471/PYMT/1034/15', 1, N'2015', N'ELECTRICAL INSTALLATION WORKS FOR  MAJOR UPGRADATION OF LABOUR ROOM & MATERNITY WARD AT BARASAT DISTRICT HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-472/PYMT/1035/15', 1, N'2015', N'CIVIL WORK FOR NEWLY SETUP DEDICATED DISTRICT FAMILY WELFARE STORES AS WELL AS DISTRICT VACCINE STORES')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-473/PYMT1036/15', 1, N'2015', N'ELECTRICAL WORK FOR NEWLY SETUP DEDICATED DISTRICT FAMILY WELFARE STORES AS WELL AS DISTRICT VACCINE STORES')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-474/PYMT/1037/15', 1, N'2015', N'VERTICAL EXTENSION OF GD.D STAFF QUARTER WITH IN CAMPUS OF CALCUTTA PAVLOV HOSPITAL,ELECTRICAL INSTALLATION AND ADDITIONAL PLUMBING WORK')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-329/PYMT/1047/15', 1, N'2015', N'POWER AUGMENTATION FOR FAIR PRICE DIAGNOSTIC UNIT AT MURSHIDABAD MCH')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-339/PYMT/1048/15', 1, N'2015', N'UPGRADATION WORKS AT JANGIPUR SUB- DIVISION HOSPITAL, MURSHIDABAD DISTRICT.')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-320/PYMT/1049/15', 1, N'2015', N'MAJOR UPGRADATION WORKS AT MATERNITY WARD & LABOUR ROOM OF DEBEN MAHATO HOSPITAL IN THE DISTRICT OF PURULIYA')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-321/PYMT/1050/15', 1, N'2015', N'ELECTRICAL INSTALLATION WORKS FOR UPGRADATION OF MATERNITY WARD & LABOUR ROOM.')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-328/1051/15', 1, N'2015', N'POWER AUGMENTATION FOR FAIR PRICE DIAGNOSTIC UNIT AND CCU')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-337/PYMT/1052/15', 1, N'2015', N'CONSTRUCTION OF NEW HOSTEL BUILDING FOR TRAINNE ANM STUDENTS AT DIMOND HARBOUR SUB-DIVISIONAL HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-345/PYMT/1053/15', 1, N'2015', N'SETTING UP OF DISTRICT EARLY INTERVENTION STORE AT NORTH BENGAL MEDICAL COLLEGE AND HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-341/PYMT/1054/15', 1, N'2015', N'ELECTRICAL INSTALLATION WORKS AT GYNAE OT LABOUR ROOM AND MATERNITY WARD AT MURSHIDABAD MEDICAL COLLEGE AND HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-343/PYMT/1055/15', 1, N'2015', N'ADDITIONAL FUND FOR CONSTRUCTION OF 4-STORIED BUILDING FOR EXTENSION OF LABOUR ROOM AND OT ROOM ADJACENTTO NORTH BLOCK O G&O BUILDING AT RG KAR MEDICAL COLLEGE AND HOSPITAL.')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-346/PYMT/1056/15', 1, N'2015', N'ELECTRICAL INSTALLATION WORKS AT DISTRICT EARLY INTERVETION CENTRE AT NORTH BENGAL MEDICAL COLLEGE AND HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-348/PYMT/1057/15', 1, N'2015', N'ELECTRICAL INSTALLATION WORKS FOR SETTING UP OF DISTRICT EARLY INTERVETION CENTRE AT DEBEN MAHATO HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-350/PYMT/1058/15', 1, N'2015', N'CIVIL WORKS FOR FACE LIFTING WORKS FOR VERTICAL EXTENSION OF STATE PROGRAMME MANAGEMENT UNIT ,NHM OFFICE BUILDING (PHASE-2) LOCATED AT THE SECOND FLOOR OF LIBRARY BUILDING IN THE CAMPUS OF SWASTHYA BHAWAN')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-352/PYMT/1059/15', 1, N'2015', N'ELECTRICAL INSTALLATION WORKS FOR VERTICAL EXTENSION WORKS  OF STATE PROGRAMME MANAGEMENT UNIT ,NHM OFFICE BUILDING (PHASE-2) LOCATED AT THE SECOND FLOOR OF LIBRARY BUILDING IN THE CAMPUS OF SWASTHYA BHAWAN')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-354/PYMT/1060/15', 1, N'2015', N'CIVIL WORKS RELATED TO CONSTRUCTION OF CMOH OFFICE AT BISHNUPUR HEALTH DISTRICT')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-355/PYMT/1061/15', 1, N'2015', N'ELECTRICAL WORKS RELATED TO CONSTRUCTION OF CMOH OFFICE AT BISHNUPUR HEALTH DISTRICT')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-375/PYMT/1062/15', 1, N'2015', N'ELECTRICAL INSTALLATION WORKS FOR PROPOSED DEAD HOUSE IN THE PLACE OF EXISTING DEAD HOUSE WHICH IS TO BE DEMOLISTED TO CLEAR THE LAND FOR THE PROPOSED MOTHER AND CHILD HUB')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-367/PYMT/1063/15', 1, N'2015', N'CONSTRUCTION  OF GNM TRANNING SCHOOL AND HOSTEL BUILDING AT ULUBERIA SUB DIVISIONAL HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-391/PYMT/1064/15', 1, N'2015', N'SUPPELY AND INSTALLATION OF 2 TON CAPACITY SPLIT AC(14 NO)IN NEO NATAL WARD IN MIDNAPUR MEDICAL COLLEGE AND HOSPITAL.')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-363/PYMT/1065/15', 1, N'2015', N'CONSTRUCTION OF GNM TRANING SCHOOL AND HOSTEL BUILDING AT BASIRHAT SD HOSPITAL COMPOUND')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-361/PYMT/1066/15', 1, N'2015', N'CONSTRUCTION OF GNM TRANING SCHOOL AND HOSTEL BUILDING AT COLLEGE OF MEDICINE AND SAGAR DUTTA HOSPITAL,KAMARHATI')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-360/PYMT/1067/15', 1, N'2015', N'CONSTRUCTION OF GNM TRANING SCHOOL AND HOSTEL BUILDING AT COLLEGE OF MEDICINE AND SAGAR DUTTA HOSPITAL,KAMARHATI')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-356/PYMT/1068/15', 1, N'2015', N'ELECTRICAL WORKS OF COLLEGE OF MEDICINE AND SAGAR DUTTA HOSPITAL,KAMARHATI')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-393/PYMT/1069/15', 1, N'2015', N'REPAIR AND RENOVATION CUM MODIFICATION OF THE PASSAGE BETWEEN SNCU AT EYE BUILDING AND G&O BUILDING AT CALCUTTA NATIONAL MEDIACL COLLEGE  & HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-392/PYMT/1070/15', 1, N'2015', N'ELECTRICAL WORKS RELETED TO CONSTRUCTION  OF SNCU  AT IMAMBARA DISTRICT HOSPITAL,CHINSURAH')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-369/PYMT/1071/15', 1, N'2015', N'CONSTRUCTION OF GNM TRANNING SCHOOL AND HOSTEL BUILDING AT GHATAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-364/PYMT/1072/15', 1, N'2015', N'CONSTRUCTION OF GNM TRANNING SCHOOL AND HOSTEL BUILDING AT BARASAT HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-365/PYMT/1073/15', 1, N'2015', N'CONSTRUCTION OF GNM TRANNING SCHOOL AND HOSTEL BUILDING AT BARASAT HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-368/PYMT/1074/15', 1, N'2015', N'CONSTRUCTION OF GNM TRANNING SCHOOL AND HOSTEL BUILDING AT GHATAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-377/PYMT/1075/15', 1, N'2015', N'SETTING UP SNCU AT ALIPURDUAR SUB-DIVISIONAL HOSPITAL,ALIPURDUAR')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-359/PYMT/1076/15', 1, N'2015', N'CONSTRUCTION OF GNM TRANNING SCHOOL AND HOSTEL BUILDING AT JHARGRAM')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-382/PYMT/1077/15', 1, N'2015', N'ELECTRICAL WORKS RELATED TO CONSTRUCTION OF CMOH OFFICE BUILDING AT BASIRHAT HEALTH DISTRICT')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-380/PYMT/1078/15', 1, N'2015', N'ELECTRICAL INSTALLATION WORK FOR PROPOSED BLOOD BANK AND PATHOLOGY DEPARTMENT AT EGRA SUB DIVISIONAL HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-379/PYMT/1079/15', 1, N'2015', N'CONSTRUCTION OF BLOOD BANK AND PATHOLOGICAL UNIT AT FIRST FLOOR OF OPD UNIT OF EGRA SUB-DIVISIONAL HOSPITAL AT EGRA')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-378/PYMT/1080/15', 1, N'2015', N'CONSTRUCTION OF MOTHERS(SNCU BABIES MOTHERS)REST ROOM OVER EXISTING KITCHEN BLOCK AT DIMOND HARBOUR DISTRICT HOSPITAL.')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-362/PYMT/1081/15', 1, N'2015', N'CONSTRUCTION OF GNM TRANNING SCHOOL AND HOSTEL BUILDING AT BASIRHAT S.D. HOSPITAL COMPOUND')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-373/PYMT/1082/15', 1, N'2015', N'CIVIL WORKS FOR UPGRADATION OF LABOUR ROOM COMPLEX AT CALCUTTA NATIONAL MEDICAL COLLEGE AND HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-358/PYMT/1083/15', 1, N'2015', N'CONSTRUCTION OF GNM TRANNING SCHOOL AND HOSTEL BUILDING AT JHARGRAM')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-385/PYMT/1084/15', 1, N'2015', N'CIVIL WORK FOR SETTING UP SNCUAT DR. BN BOSE SUB-DIVISIONAL HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-384/PYMT/1085/15', 1, N'2015', N'ELECTRICAL INSTALLATION WORKS FOR THE PROPOSED SNCU AT CHANCHAL SUB DIVISION HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-366/PYMT/1086/15', 1, N'2015', N'CONSTRUCTION OF GNM TRANNING SCHOOL AND HOSTEL BUILDING AT ULUBERIA SUB-DIVISIONAL HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-372/PYMT/1087/15', 1, N'2015', N'ELECTRICAL INSTALLATION WORKS FOR THE UPGRADATION OF LABOUR ROOM COMPLEX AT CALCUTTA NATIONAL MEDICAL COLLEGE AND HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-388/PYMT/1088/15', 1, N'2015', N'ELECTRICAL INSTALLATION WORKS FOR PROPOSED SNCU WARD AT KAKDIP SUB-DIVISIONAL HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-389/PYMT/1089/15', 1, N'2015', N'CIVIL WORK FOR CMOH OFFICE BUILDING OF NEW HEALTH DISTRICT AT RAMPURHAT')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-387/PYMT/1090/15', 1, N'2015', N'CIVIL WORKS FOR CONSTRUCTION OF SNCU WARD AT KAKDWIP SUB-DIVISIONAL HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-386/PYMT/1091/15', 1, N'2015', N'ELECTRICAL INSTALLATION WORKS FOR THE PROPOSED SNCU AT DR. BN BOSE SUB- DIVISIONAL HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-401/PYMT/1092/15', 1, N'2015', N'ELECTRICAL INSTALLATION WORKS FOR SETTING UP 10 BEDED STEP DOWN UNIT ,LAB MEETING HALL ,GNM CHANGE ROOM INCLUDING ALLIED WORKS AT DEBEN MAHATO SADAR HOSPITAL.')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-400/PYMT/1093/15', 1, N'2015', N'ADDITIONAL AMMOUNT OF ELECTRICAL INSTALLATION WORK INCLUDING AIR CONDITIONING OF PROPOSES SNCU BLOCK AT CALCUTTA NATIONAL MEDICAL COLLEGE AND HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-399/PYMT/1094/15', 1, N'2015', N'ADDITIONAL ELECTRICAL WORKS RELETED TO SETTING UP OF NEO NATAL WARD WARD AT MATRISADAN OF MURSHIDABAD MEDICAL COLLEGE AND HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-398/PYMT/1095//15', 1, N'2015', N'EXTENSION OF SNCU AT DISTRICT HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-397/PYMT/1096/15', 1, N'2015', N'ADDITIONAL ELECTRICAL WORKS RELETED TO SETTING UP OF NEONATAL WARD AT KANDI SUB-DIVISIONAL HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-396/PYMT/1097/15', 1, N'2015', N'CIVIL WORK AT MALDA MEDICAL COLLEGE AND HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-395/PYMT/1098/15', 1, N'2015', N'ADDITIONAL ELECTRICAL WORKS AT SNCU AT BASIRHAT SUB-DIVISIONAL HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-394/PYMT/1099/15', 1, N'2015', N'CIVIL WORK TOWARDS SETTING UP OF EXTENDED SNCU AT 1ST FLOOR G&O BUILDING OPPOSITE TO EXISTING SNCU AT R.G KAR MEDICAL COLLEGE  AND HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-374//PYMT/1100/15', 1, N'2015', N'ELECTRICAL INSTALLATION WORKS OF THE  GYANE & OBS O.T. AT CALCUTTA NATIONAL MEDICAL COLLEGE AND HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AAES-383/PYMT/1101/15', 1, N'2015', N'CIVIL WORKS FOR CONSTRUCTION OF SNCU WARD AT CHANCHOL SUB -DIVISIONAL HOSPITAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/PYMT/INT.SYR.PUMP/1106/15', 1, N'2015', N'PAYMENT FILE OF INFUSION PUMP AND SYRINGE PUMP B.BRAUN MEDICAL(INDIA) PVT.LTD')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/SERVICE TAX/1112/15', 1, N'2015', N'SERVIECE TAXATION')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AGREMENT/PART-2/1039/15', 1, N'2015', N'AGREMENT FILE-2')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/SCHEME MONITORING/1043/15', 1, N'2015', N'SCHEME MONITORING SYSTEM')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/C-ARM/991/15', 2, N'2015', N'RELOCATION OF C-RAM MACHINE')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/DIALYSIS & RO/993/15', 2, N'2015', N'PROCURMENT OF DIALYSIS M/C FOR BANKURA SAMMILANI MCH')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/C-RAM/HOWRAH/994/15', 2, N'2015', N'PROCUREMENT OF C-RAM MACHINE FOR HOWRAH DH')
GO
print 'Processed 100 total records'
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/PROC/UNDP/RW/CSS/1042/15', 2, N'2015', N'PROCUREMENT OF RW FOR CSS')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/PROC/MARKER/PENS/1102/15', 2, N'2015', N'PROCUREMENT OF MARKER PENS FOR PULSE POLIO PROGRAMME')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/PROC/MEDINIPUR/GAS PIPELINE/1105/15', 2, N'2015', N'MEDINIPUR MEDICAL COLLEGE GAS PIPE LINE EXTENSION')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/PROC/EQUIP/SCHOOL HEALTH/1111/15', 2, N'2015', N'PROCUREMENT OF EQUIPMENTS FOR SCHOOL HEALTH')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/PROC/UNDP/REG-CLO/1113/15', 2, N'2015', N'UNDP REQUISITION CLOSURE')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/TOUR FILE/1114/15', 2, N'2015', N'TOUR FILE OF RAJU SARKAR')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/TOUR FILE/1115/15', 2, N'2015', N'TOUR FILE OF SAMRAT ROY CHOUDHRAY')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/TOUR FILE/1116/15', 2, N'2015', N'TOUR FILE OF SOMA DAS')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/TOUR FILE/1117/15', 2, N'2015', N'TOUR FILE OF SOMA DAS')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/TOUR FILE/1118/15', 2, N'2015', N'TOUR FILE OF ABIR KUMAR SASMAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/PN/CMCH/1118/15', 2, N'2015', N'PROCUREMENT OF EQUIPMENTS FOR SETTING UP PAEDIATIC NEPHROLOGY UNIT IN MEDICAL COLLEGE ,KOLKATA.')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/PN/BC ROY/1119/15', 2, N'2015', N'PROCUREMENT OF INSTRUMENTS FOR PAEDIATIC NEPHROLOGY UNIT OF DR BC ROY PGIPS')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/PN/CSS/1120/15', 2, N'2015', N'SETTING UP OF PAEDIATIC NEPHROLOGY UNIT AT CSS COLLEGE AND OBSTETRICS')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/PN/NRS/1021/15', 2, N'2015', N'PROCUREMENT OF INSTRUMENTS ETC FOR PAEDIATIC NEPHROLOGY UNIT OF NRS MEDICAL COLLLEGE')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/ORG.PER/1012/15', 5, N'2015', N'PERSONAL FILE OF AYAN BISWAS,SAE©')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/ORG.PER/1026/15', 5, N'2015', N'PERSONAL FILE OF PARTHA CHAKRABORTY')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/ORG.PER/1038/15', 5, N'2015', N'PERSONAL FILE OF JOY CHATTERJEE,(AE-CIVIL)')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/ORG.PER/1040/15', 5, N'2015', N'PERSONAL FILE OF SOURAV DAS (AE-CIVIL)')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/ORG.PER/1041/15', 5, N'2015', N'PERSONAL FILE OF DILIP GHOSH,CONSULTANT ELECTRICAL ENGINEER')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AIIMS/NADIA/946/15', 6, N'2015', N'SETTING UP OF AN AIIMS AT KALYANI,NADIA')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/ELEC MAINTENANCE/972/15', 6, N'2015', N'ELECTRICAL MAINTENANCE OF 3 MCH')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/CLAIM/HOSPITECH MANAGE/976/15', 6, N'2015', N'CLAIM OF HOSPITECH MANAGEMENT CONSULTANT PVT.LTD')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/NON BRGF/DEMOL/WALSH SDH/982/15', 6, N'2015', N'BUILDING DEMALITION OF AT WALSH HOSP.(SRIRAMPORE)')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/OXYGEN MINI MANI FOLD/CCU & HDU/987/15', 6, N'2015', N'ESTABLISHMENT OF OXYGENMINI MANIFOLD AT CCU & HDU IN DHS &SDHS')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/NON BRGF/KALNA SDH/990/15', 6, N'2015', N'PERMISSION FOR DEMELITION OF EXISTING 2 STRUCTURES IN PRIMISSES OF KALNA SDH')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/MCH HUB/DESIGN AND DRAWINGS/992/15', 6, N'2015', N'MOTHER AND CHILD HUB DRAWING')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/NON BRGF/PROOF CONST/1011/15', 6, N'2015', N'ENGASEMENT OF PROOF CONSULTANT')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/AYUSH HOSP/ALPRDUR/1013/15', 6, N'2015', N'CONSTRUCTION OF AYUSH HOSPITAL AT TAPSIKATA ALIPURDUAR')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/BRGF/CES/1044/15', 6, N'2015', N'PROPOSED SUPER SPECIALITY HOS[ITALS IN BACKWARD DISTRICT IN WESTBENGAL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/BRGF/DDF/1045/15', 6, N'2015', N'TERRTIARY HEALTH CARE HOSP. AT ONDA,CHATRA, HATUARA LAY DDF CONSULTANTS')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/BRGF/V&A/1046/15', 6, N'2015', N'SUPER MULTI SPECIALITY HOSPITAL VARIATEAS & ADJUSTMENTS')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/DWG/NON BRGF/HASP/1103/15', 6, N'2015', N'APPROVAL OF DRAWINGS NON BRGF')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/ALIPURDUAR/SGH/1107/15', 6, N'2015', N'CONSTRUCTION WORKS OF ALIPURDUAR DH & BIRPARA SGH')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/ALIPURDUAR/AYUSH HOSP/1108/15', 6, N'2015', N'ESTABLISHMENT OF INTEGRATED AYUSH HOSPITAL AT TAPSIKATA ALIPURDUAR')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/MCH/DEIC/1109/15', 6, N'2015', N'ENGINEERING DRAWING OF MCH WINGS INTEGRATING DEIC')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/NON BRGF/DEMAL/ASANSOL DH/1104/15', 6, N'2015', N'BUILDING DEMALITION OF AT  ASANSOL')
INSERT [dbo].[xx_Sheet3] ([FileNum], [DeptID], [FileOpenYr], [SubMatter]) VALUES (N'WBMSC/BIJOTGARH SGH/1110/15', 6, N'2015', N'INFRASTRUCTURAL MODIFICATION OF BIJOYGARH SGH FOR CREATION OF CRITICAL CARE TACAINING CENTRE')
/****** Object:  Table [dbo].[xx_Sheet2]    Script Date: 09/11/2015 15:40:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[xx_Sheet2](
	[SL_NO] [float] NULL,
	[FILE_NO] [nvarchar](255) NULL,
	[SECTION] [bigint] NULL,
	[YEAR_OF_OPENING] [float] NULL,
	[FileFollowUp] [char](1) NULL,
	[GenFileNo] [varchar](128) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (1, N'WBMSC/ACCT/PTAX/01/11', 1, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (2, N'WBMSC/ACCT/BID/02/11', 1, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (3, N'WBMSC/ACCT/PAYMENT/03/11', 1, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (4, N'WBMSC/ACCT/SALARY/04/11', 1, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (5, N'WBMSC/ACCT/MISC.PAYMENT/05/11', 1, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (6, N'WBMSC/ACCT/SOE/06/11', 1, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (7, N'WBMSC/FUND-MAYO/07/11', 1, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (8, N'WBMSC/FUND-PMC/08/11', 1, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (9, N'WBMSC/MONITORING PMC/09/2011', 6, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (10, N'WBMSC/WAYBILL/10/2011', 2, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (11, N'WBMSC/FUND-MEDCN/11/2011', 1, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (12, N'WBMSC/ACCT/BoardMeeting/12/2011', 5, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (13, N'WBMSC/ACCT/Proc.Mang/13/2011', 5, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (14, N'WBMSC/ACCT/Monitoring Services/14/2011', 6, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (15, N'WBMSC/PPP Policy/22/11', 5, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (16, N'WBMSC/COM.Act/23/11', 5, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (17, N'WBMSC/LS/Stat.Audit/24/11', 5, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (18, N'WBMSC/Radio-Enh/24/11', 5, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (19, N'WBMSC/Liq-Oxy/30/11', 5, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (20, N'WBMSC/Hiring of space at IHFW/38/11', 5, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (21, N'WBMSC/Mang Fees/3911', 5, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (22, N'WBMSC/PLL/40/11', 5, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (23, N'WBMSC/DSCA/41/11', 5, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (24, N'WBMSC/PWD-Eng/42/11', 5, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (25, N'WBMSC/ACCT/Space Hiring/43/11', 5, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (26, N'WBMSC/CMOH-BANKURA/44/12', 5, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (27, N'WBMSC/Truma Centre Haldia/45/12', 5, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (28, N'WBMSC/PWD-Eng/42/11/2', 5, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (29, N'WBMSC/PPP/SuperSpecialityHospital/49/12', 5, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (30, N'WBMSCL/Transaction Advisor/59/12', 5, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (31, N'WBMSC/Post-GM/75/12', 5, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (32, N'WBMSC/BRGF-Monitoring Committee/82/12', 5, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (33, N'WBMSC/BRGF-Complaint/83/12', 5, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (34, N'WBMSC/MCH-Supervision/85/12', 5, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (35, N'WBMSC/E-Training/101/12', 5, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (36, N'WBMSC/PWD-Video Conference/110/12', 5, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (37, N'WBMSC/Con.Matter/101/11', 5, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (38, N'WBMSC/PPP Frame/102/11', 5, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (39, N'WBMSC/UNOPS Correspondancy/111/12', 5, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (40, N'WBMSC/JOB Distribution/116/12', 5, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (41, N'WBMSC/Org-Per/121/13', 5, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (42, N'WBMSC/Salary-Rev/130/13', 5, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (43, N'WBMSC/Med.Colg Committee/132/13', 5, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (44, N'WBMSC/Asmby.Qsn/135/13', 5, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (45, N'WBMSC/3rd AGM/140/13', 5, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (46, N'WBMSC/Recruitment/154/13', 5, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (47, N'WBMSCL/IDPC/156/2013', 5, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (48, N'WBMSCL/Org-confnl.Rpt/165/2013', 5, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (49, N'WBMSCL/Enhance Fin Power/169/2013', 5, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (50, N'WBMSC/13TH BOD/390/13', 5, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (51, N'WBMSC/BRGF/NIT/391/13', 5, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (52, N'WBMSC/CON/398/13', 5, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (53, N'WBMSC/Org-Setup/Eng/399/13', 5, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (54, N'WBMSC/meeting-PWD/400/13', 5, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (55, N'WBMSC/meeting-SPB/401/13', 5, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (56, N'WBMSC/BRGF Report/402/13', 5, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (57, N'WBMSC/ProjectReport/403/13', 5, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (58, N'WBMSC/Software Dev/409/13', 5, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (59, N'WBMSC/3 NEW MCH-SPL.COM/413/13', 5, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (60, N'WBMSC/Org-Per/414/13', 5, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (61, N'WBMSC/Org-Per/415/13', 5, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (62, N'WBMSC/Org-Per/416/13', 5, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (63, N'WBMSC/Org-Per/417/13', 5, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (64, N'WBMSC/Org-Per/418/13', 5, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (65, N'WBMSC/Org-Per/419/13', 5, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (66, N'WBMSC/Org-Per/423/13', 5, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (67, N'WBMSC/Org-Per/424/13', 5, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (68, N'WBMSC/Org-Per/427/13', 5, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (69, N'WBMSC/Org-Per/431/13', 5, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (70, N'WBMSC/Tour/MD/433/13', 5, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (71, N'WBMSC/Law Firm/454/13', 5, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (72, N'WBMSC/RECRUIT/CONSLT/544/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (73, N'WBMSC/Org.Per/545/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (74, N'WBMSC/Org.Per/561/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (75, N'WBMSC/PE-2014-MCC/564/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (76, N'WBMSC/16th BOD/565/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (77, N'WBMSC/Org.per/568/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (78, N'WBMSC/ORG-PER/569/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (79, N'WBMSC/ORG.PER/638/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (80, N'WBMSC/17TH BOD/642/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (81, N'WBMSC/Rectfctn of web/646/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (82, N'WBMSC/Audit-Committee/648/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (83, N'WBMSC/Org-Per/649/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (84, N'WBMSC/Org-Per/650/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (85, N'WBMSC/RTI/654/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (86, N'WBMSC/Org.Per/664/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (87, N'WBMSC/Org.Per/665/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (88, N'WBMSC/Org.Per/666/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (89, N'WBMSC/BRGF/DEMO/667/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (90, N'WBMSC/Org.Per/669/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (91, N'WBMSC/Org.Per/670/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (92, N'WBMSC/Org.Per/677/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (93, N'WBMSC/Org.Per/678/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (94, N'WBMSC/Org.Per/681/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (95, N'WBMSC/Org.Per/682/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (96, N'WBMSC/Org.Per/683/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (97, N'WBMSC/Org.Per/684/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (98, N'WBMSC/Org.Per/685/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (99, N'WBMSC/Org.Per/686/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (100, N'WBMSC/Org.Per/689/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (101, N'WBMSC/Org.Per/693/14', 5, 2014, N'Y', NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (102, N'WBMSC/Org.Per/698/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (103, N'WBMSC/Org.Per/699/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (104, N'WBMSC/Org.Per/702/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (105, N'WBMSC/Org.Per/703/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (106, N'WBMSC/Org.Per/704/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (107, N'WBMSC/Org.Per/707/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (108, N'WBMSC/18TH BOD/711/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (109, N'WBMSC/Org.Per/712/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (110, N'WBMSC/Org.Per/714/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (111, N'WBMSC/Org.Per/715/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (112, N'WBMSC/Org.Per/727/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (113, N'WBMSC/Org.Per/728/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (114, N'WBMSC/Org.Per/729/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (115, N'WBMSC/TA/744/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (116, N'WBMSC/LEAVE/745/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (117, N'WBMSCL/Con-Exp/746/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (118, N'WBMSC/Org.Per/747/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (119, N'WBMSC/Org.Per/748/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (120, N'WBMSC/Org.Per/749/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (121, N'WBMSC/Org.Per/751/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (122, N'WBMSC/Org.Per/752/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (123, N'WBMSC/Org.Per/753/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (124, N'WBMSC/CS/Audit Charter & Int.Auditor/754/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (125, N'WBMSC/Admn.Calender/756/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (126, N'WBMSC/Org.Per/757/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (127, N'WBMSC/Org.Per/758/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (128, N'WBMSC/Org.Per/759/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (129, N'WBMSC/Org.Per/760/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (130, N'WBMSC/Org.Per/761/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (131, N'WBMSC/Org.Per/763/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (132, N'WBMSC/Org.Per/764/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (133, N'WBMSC/CSR/767/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (134, N'WBMSC/Org.Per/768/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (135, N'WBMSC/EPF/770/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (136, N'WBMSC/Org.Per/787/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (137, N'WBMSC/Org.Per/792/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (138, N'WBMSC/Org.Per/796/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (139, N'WBMSC/Org.Per/799/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (140, N'WBMSC/Org.Per/800/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (141, N'WBMSC/Transfer&Posting/804/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (142, N'WBMSC/Org.Per/813/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (143, N'WBMSC/Org.Per/814/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (144, N'WBMSC/19TH BOD/815/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (145, N'WBMSC/Org.Per/823/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (146, N'WBMSC/Org.Per/824/14', 5, 2014, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (147, N'WBMSC/6th agm/828/15', 5, 2015, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (148, N'WBMSC/19TH BOD/843/15', 5, 2015, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (149, N'WBMSC/legel service/847/15', 5, 2015, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (150, N'WBMSC/Org.Per/871/15', 5, 2015, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (151, N'WBMSC/Org.Per/879/15', 5, 2015, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (152, N'WBMSC/Internal Auditor/885/15', 5, 2015, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (153, N'WBMSC/Budget-Spch/888/15', 5, 2015, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (154, N'WBMSC/Parking Slot/SB/899/15', 5, 2015, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (155, N'WBMSC/Org.Per/944/15', 5, 2015, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (156, N'WBMSC/Org.Per/974/15', 5, 2015, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (157, N'WBMSC/Recruitment/EE/975/15', 5, 2015, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (158, N'WBMSC/Org.Per/978/15', 5, 2015, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (159, N'WBMSC/ACCT/Treasury/15/2011', 1, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (160, N'WBMSC/off.Tour/16/2011', 1, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (161, N'WBMSC/ACCT/Chg.HandOver/17/2011', 1, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (162, N'WBMSC/Formt/19/2011', 1, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (163, N'WBMSC/ACCT/Office Buliding/21/11', 1, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (164, N'WBMSC/Quotation/27/11', 1, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (165, N'WBMSC/RPG/28/11', 1, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (166, N'WBMSC/P.TAX/31/11', 1, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (167, N'WBMSC/Generator Malda/34/11', 1, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (168, N'WBMSC/ACCT/Payment CSS/35/11', 1, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (169, N'WBMSC/Enquiry Committee/36/11', 1, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (170, N'WBMSC/TDS/37/11', 1, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (171, N'WBMSC/STDS/37/11', 1, 2011, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (172, N'WBMSC/Fund BRGF/46/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (173, N'WBMSC/UNOPS-Supply/46/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (174, N'WBMSC/MISC.Payment/47/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (175, N'WBMSC/Salary/57/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (176, N'WBMSC/PettyCashVoucher/52/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (177, N'WBMSC/Deposit Register/53/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (178, N'WBMSC/Proc-Comp/55/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (179, N'WBMSC/Pay & Accounts III/56/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (180, N'WBMSC/GSIS/57/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (181, N'WBMSC/ACCT-13th Fin.Com/64/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (182, N'WBMSC/NRHM-Setting up Neonatalward/66/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (183, N'WBMSC/Payment/Hosp./69/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (184, N'WBMSC/CAG-AUDIT/78/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (185, N'WBMSC/Med.Bill Reimbursement/86/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (186, N'WBMSC/SiteOffice Contingency/88/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (187, N'WBMSC/Payment-Advt./90/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (188, N'WBMSC/Fund-Monitoring/92/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (189, N'WBMSC/Income-AdmnCost/93/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (190, N'WBMSC/AC-Roc/94/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (191, N'WBMSC/NRHM/NADIA/97/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (192, N'WBMSC/Payment-Telephone/99/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (193, N'WBMSC/ACCT/STDS RETURN/102/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (194, N'WBMSC/NRHM/MR BANGUR/103/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (195, N'WBMSC/13TH FIN/WBIIDC/104/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (196, N'WBMSC/13TH FIN.COM/STM/105/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (197, N'WBMSC/NRHM/CSS/106/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (198, N'WBMSC/ACCT/13TH Fin Com/Burdwan/108/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (199, N'WBMSC/13TH FIN.COM/Darjeeling/109/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (200, N'WBMSC/NRHM/MIDNAPORE/110/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (201, N'WBMSC/NRHM/UTTAR 24 PARGANAS/111/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (202, N'WBMSC/NRHM/KOLKATA Cansn-CNMC/112/12', 1, 2012, N'Y', NULL)
GO
print 'Processed 200 total records'
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (203, N'WBMSC/Com.IncomeTax/113/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (204, N'WBMSC/FUNC.COMP./114/12', 1, 2012, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (205, N'WBMSC/ACCT/AAES-PAYMENT/133/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (206, N'WBMSC/ACCT/MED.GAS PIPELINE/136/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (207, N'WBMSC/BRGF/HRBC/137/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (208, N'WBMSC/Payment/H.R.Infracon/139/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (209, N'WBMSC/AAES-Pymt-028/150/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (210, N'WBMSC/BRGF-Payment/151/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (211, N'WBMSC/AAES-PYMT-111/152/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (212, N'WBMSC/AAES-PAY-024/153/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (213, N'WBMSC/AAES-PAY-100/155/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (214, N'WBMSC/ACCT/AG/170/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (215, N'WBMSC/AAES-001-Pymt/171/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (216, N'WBMSC/AAES-003-Pymt/172/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (217, N'WBMSC/AAES-007-Pymt/173/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (218, N'WBMSC/AAES-011-Pymt/174/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (219, N'WBMSC/AAES-013-Pymt/175/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (220, N'WBMSC/AAES-014-Pymt/176/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (221, N'WBMSC/AAES-015-Pymt/177/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (222, N'WBMSC/AAES-016-Pymt/178/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (223, N'WBMSC/AAES-017-Pymt/179/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (224, N'WBMSC/AAES-018-Pymt/180/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (225, N'WBMSC/AAES-020-Pymt/181/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (226, N'WBMSC/AAES-021-Pymt/182/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (227, N'WBMSC/AAES-022-Pymt/183/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (228, N'WBMSC/AAES-024-Pymt/184/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (229, N'WBMSC/AAES-025-Pymt/185/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (230, N'WBMSC/AAES-027-Pymt/186/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (231, N'WBMSC/AAES-028-Pymt/187/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (232, N'WBMSC/AAES-030-Pymt/188/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (233, N'WBMSC/AAES-031-Pymt/189/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (234, N'WBMSC/AAES-032-Pymt/190/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (235, N'WBMSC/AAES-033-Pymt/191/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (236, N'WBMSC/AAES-034-Pymt/192/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (237, N'WBMSC/AAES-035-Pymt/193/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (238, N'WBMSC/AAES-036-Pymt/194/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (239, N'WBMSC/AAES-038-Pymt/195/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (240, N'WBMSC/AAES-037-Pymt/196/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (241, N'WBMSC/AAES-041-Pymt/197/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (242, N'WBMSC/AAES-042-Pymt/198/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (243, N'WBMSC/AAES-044-Pymt/199/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (244, N'WBMSC/AAES-043-Pymt/200/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (245, N'WBMSC/AAES-045-Pymt/201/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (246, N'WBMSC/AAES-046-Pymt/202/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (247, N'WBMSC/AAES-047-Pymt/203/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (248, N'WBMSC/AAES-048-Pymt/204/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (249, N'WBMSC/AAES-049-Pymt/205/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (250, N'WBMSC/AAES-050-Pymt/206/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (251, N'WBMSC/AAES-051-Pymt/207/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (252, N'WBMSC/AAES-052-Pymt/208/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (253, N'WBMSC/AAES-053-Pymt/209/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (254, N'WBMSC/AAES-054-Pymt/210/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (255, N'WBMSC/AAES-055-Pymt/211/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (256, N'WBMSC/AAES-056-Pymt/212/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (257, N'WBMSC/AAES-057-Pymt/213/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (258, N'WBMSC/AAES-058-Pymt/214/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (259, N'WBMSC/AAES-059-Pymt/215/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (260, N'WBMSC/AAES-060-Pymt/216/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (261, N'WBMSC/AAES-061-Pymt/217/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (262, N'WBMSC/AAES-062-Pymt/218/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (263, N'WBMSC/AAES-063-Pymt/219/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (264, N'WBMSC/AAES-064-Pymt/220/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (265, N'WBMSC/AAES-065-Pymt/221/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (266, N'WBMSC/AAES-066-Pymt/222/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (267, N'WBMSC/AAES-067-Pymt/223/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (268, N'WBMSC/AAES-068-Pymt/224/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (269, N'WBMSC/AAES-069-Pymt/225/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (270, N'WBMSC/AAES-070-Pymt/226/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (271, N'WBMSC/AAES-071-Pymt/227/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (272, N'WBMSC/AAES-072-Pymt/228/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (273, N'WBMSC/AAES-073-Pymt/229/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (274, N'WBMSC/AAES-074-Pymt/230/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (275, N'WBMSC/AAES-075-Pymt/231/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (276, N'WBMSC/AAES-076-Pymt/232/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (277, N'WBMSC/AAES-077-Pymt/233/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (278, N'WBMSC/AAES-078-Pymt/234/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (279, N'WBMSC/AAES-079-Pymt/235/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (280, N'WBMSC/AAES-080-Pymt/236/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (281, N'WBMSC/AAES-081-Pymt/237/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (282, N'WBMSC/AAES-082-Pymt/238/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (283, N'WBMSC/AAES-083-Pymt/239/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (284, N'WBMSC/AAES-084-Pymt/240/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (285, N'WBMSC/AAES-085-Pymt/241/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (286, N'WBMSC/AAES-086-Pymt/242/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (287, N'WBMSC/AAES-087-Pymt/243/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (288, N'WBMSC/AAES-088-Pymt/244/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (289, N'WBMSC/AAES-089-Pymt/245/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (290, N'WBMSC/AAES-090-Pymt/246/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (291, N'WBMSC/AAES-091-Pymt/247/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (292, N'WBMSC/AAES-092-Pymt/248/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (293, N'WBMSC/AAES-093-Pymt/249/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (294, N'WBMSC/AAES-094-Pymt/250/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (295, N'WBMSC/AAES-095-Pymt/251/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (296, N'WBMSC/AAES-096-Pymt/252/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (297, N'WBMSC/AAES-097-Pymt/253/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (298, N'WBMSC/AAES-098-Pymt/254/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (299, N'WBMSC/AAES-099-Pymt/255/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (300, N'WBMSC/AAES-100-Pymt/256/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (301, N'WBMSC/AAES-101-Pymt/257/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (302, N'WBMSC/AAES-102-Pymt/258/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (303, N'WBMSC/AAES-103-Pymt/259/13', 1, 2013, N'Y', NULL)
GO
print 'Processed 300 total records'
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (304, N'WBMSC/AAES-104-Pymt/260/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (305, N'WBMSC/AAES-105-Pymt/261/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (306, N'WBMSC/AAES-106-Pymt/262/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (307, N'WBMSC/AAES-107-Pymt/263/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (308, N'WBMSC/AAES-108-Pymt/264/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (309, N'WBMSC/AAES-109-Pymt/265/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (310, N'WBMSC/AAES-110-Pymt/266/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (311, N'WBMSC/AAES-111-Pymt/267/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (312, N'WBMSC/AAES-112-Pymt/268/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (313, N'WBMSC/AAES-113-Pymt/269/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (314, N'WBMSC/AAES-114-Pymt/270/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (315, N'WBMSC/AAES-115-Pymt/271/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (316, N'WBMSC/AAES-116-Pymt/272/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (317, N'WBMSC/AAES-117-Pymt/273/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (318, N'WBMSC/AAES-118-Pymt/274/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (319, N'WBMSC/AAES-119-Pymt/275/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (320, N'WBMSC/AAES-120-Pymt/276/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (321, N'WBMSC/AAES-121-Pymt/277/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (322, N'WBMSC/AAES-122-Pymt/278/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (323, N'WBMSC/AAES-123-Pymt/279/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (324, N'WBMSC/AAES-124-Pymt/280/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (325, N'WBMSC/AAES-125-Pymt/281/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (326, N'WBMSC/AAES-126-Pymt/282/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (327, N'WBMSC/AAES-127-Pymt/283/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (328, N'WBMSC/AAES-128-Pymt/284/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (329, N'WBMSC/AAES-129-Pymt/285/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (330, N'WBMSC/AAES-130-Pymt/286/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (331, N'WBMSC/AAES-131-Pymt/287/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (332, N'WBMSC/AAES-132-Pymt/288/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (333, N'WBMSC/AAES-133-Pymt/289/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (334, N'WBMSC/AAES-134-Pymt/290/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (335, N'WBMSC/AAES-135-Pymt/291/14', 0, 0, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (336, N'WBMSC/AAES-136-Pymt/291/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (337, N'WBMSC/AAES-137-Pymt/292/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (338, N'WBMSC/AAES-138-Pymt/293/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (339, N'WBMSC/AAES-139-Pymt/294/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (340, N'WBMSC/AAES-140-Pymt/295/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (341, N'WBMSC/AAES-142-Pymt/296/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (342, N'WBMSC/AAES-143-Pymt/297/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (343, N'WBMSC/AAES-144-Pymt/298/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (344, N'WBMSC/AAES-145-Pymt/299/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (345, N'WBMSC/AAES-146-Pymt/300/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (346, N'WBMSC/AAES-147-Pymt/301/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (347, N'WBMSC/AAES-148-Pymt/302/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (348, N'WBMSC/AAES-149-Pymt/303/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (349, N'WBMSC/AAES-150-Pymt/304/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (350, N'WBMSC/AAES-151-Pymt/305/13', 1, 2013, N'Y', NULL)
INSERT [dbo].[xx_Sheet2] ([SL_NO], [FILE_NO], [SECTION], [YEAR_OF_OPENING], [FileFollowUp], [GenFileNo]) VALUES (351, N'WBMSC/AAES-152-Pymt/306/13', 1, 2013, N'Y', NULL)
/****** Object:  Table [dbo].[xx_Sheet1]    Script Date: 09/11/2015 15:40:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[xx_Sheet1](
	[FILE_NO] [varchar](250) NOT NULL,
	[SECTION] [bigint] NOT NULL,
	[YEAR_OF_OPENING] [varchar](6) NOT NULL,
	[SUBJECT_IN_GIST] [varchar](500) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-151-Pymt/307/13', 1, N'2013', N'Repair & renovation works at Katwa Sub Divisional Hospital in Burdwan District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-152-Pymt/308/13', 1, N'2013', N'Repair, renovation & construction of different works at Bankura Sammilani Medical College, Bankura.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-153-Pymt/309/13', 1, N'2013', N'Construction of concrete road with installation of MS Grill in the compound of the office of the Principal of Murshidabad Medical College & Hospital, Berhampore.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-154-Pymt/310/13', 1, N'2013', N'Construction of boundary wall and concrete approach road from the office of the Principal to Gents'' Hostel at Murshidabad Medical College & Hospital, Berhampore.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-155-Pymt/311/13', 1, N'2013', N'Repair & Renovation/Restoration work at College of Medicine & Sagore Dutta Hospital, Kolkata-58.  1). Repair & Renovation of Superior Staff quarters,  2). Repair & Renovation of nurses quarter,  3). Repair & Renovation of Medical Officer''s quarter including conversion of two nos. quarters into Guest House')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-156-Pymt/312/13', 1, N'2013', N'Repair & construction of different work at College of Medicine & Sagore Dutta Hospital, Kolkata-58. 1). Construction of approach road in front of proposed Entrance and exit gate, 2). Construction of two nos. of Culvert of B.T. Road side drain at proposed main entrance and exit gate, 3). Construction of main entrance and exit gate')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-157-Pymt/313/13', 1, N'2013', N'Electrical installation works including installation of Air-Conditioning Machine at the existing Labour Room at Tamluk District Hospital, Purba Medinipur.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-158-Pymt/314/13', 1, N'2013', N'Setting up of Mother & Child Hub at District Hospital at Malda Medical College & Hospital of Malda District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-159-Pymt/315/13', 1, N'2013', N'Civil works for setting up of Mother & Child Hub at District Hospital at Burdwan Medical College & Hospital.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-160-Pymt/316/13', 1, N'2013', N'Civil works for setting up of Mother & Child Hub at District Hospital at Medinipur College & Hospital of Paschim Medinipur District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-161-Pymt/317/13', 1, N'2013', N'Civil works for setting up of Mother & Child Hub at District Hospital, Jalpaiguri.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-162-Pymt/318/13', 1, N'2013', N'Civil works for setting up of Mother & Child Hub at District Hospital, Krishnanagar, Nadia District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-163-Pymt/319/13', 1, N'2013', N'Civil works of the scheme ''Setting Up of Mother & Child Hub at District Hospital at Bankura Sammillani Medical College & Hospital of Bankura District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-164-Pymt/320/13', 1, N'2013', N'Civil works of the scheme ''Setting up of Mother & Child Hub at District Hospital at Suri Sadar Hospital of Birbhum.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-165-Pymt/321/13', 1, N'2013', N'Civil works of the scheme ''Setting up of Mother & Child Hub at New General Hospital, Murshidabad MCH of Murshidabad District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-166-Pymt/322/13', 1, N'2013', N'Necessary electrical installation & alteration and additional works at Arambag hSub-Divisional Hospital in Hooghly District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-167-Pymt/323/13', 1, N'2013', N'Necessary rewiring & replacement of damage electrical portion of the Sreerampur (Walsh) Sub-Divisional Hospital in Hooghly District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-168-Pymt/324/13', 1, N'2013', N'Execution of Electrical works in connection of shifting of existing maternity ward, OPD, Pathology etc. for Setting up of Proposed SNCU at Chandannagar SDH of Hooghly District')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-169-Pymt/325/13', 1, N'2013', N'Necessary electrical installation works at Uttarpara State General Hospital in Hooghly District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-170-Pymt/326/13', 1, N'2013', N'Necessary electrical installation works at Imambara Sadar Hospital in Hooghly Disctrict.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-171-Pymt/327/13', 1, N'2013', N'Necessary electrical installation works at M. J. N. District Hospital in Coochbehar District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-172-Pymt/328/13', 1, N'2013', N'Necessary repair & renovation works at Kakdwip Sub-Divisional Hospital in 24 Pgs (S). District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-173-Pymt/329/13', 1, N'2013', N'Necessary repair & renovation works at Chandannagar Sub-Division Hospital in Hooghly District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-174-Pymt/330/13', 1, N'2013', N'Repair & renovation works at Bankura Sammilani Medical College & Hospital of Bankura District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-175-Pymt/331/13', 1, N'2013', N'Civil works at Burdwan Medical College & Hospital in Burdwan District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-176-Pymt/332/13', 1, N'2013', N'Constructrion, Repair & Maintenance works at Belur State General Hospital of Howrah District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-177-Pymt/333/13', 1, N'2013', N'Repair & Renovation works at Ashoknagar State General Hospital of 24 Pgs (N) District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-178-Pymt/334/13', 1, N'2013', N'Construction, Repair & Maintenance works at Fort-Gloster State General Hospital of Howrah District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-179-Pymt/335/13', 1, N'2013', N'Installation & maintenance including special repair of one Bed-Cum-Passenger lift at College of Medicine & Sagore Dutta Hospital, Kolkata - 58')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-180-Pymt/336/13', 1, N'2013', N'Construction of passage & emergency maintenance of College of Medicine & Sagore Dutta Hospital, Kolkata - 58')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-181-Pymt/337/13', 1, N'2013', N'Repair & Renovation works at Bishnupur Sub-Divisional Hospital of Bankura District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-182-Pymt/338/13', 1, N'2013', N'Construction of Gyne Ward & vertical extension of OPD Building in Balurghat District Hospital at Dakshin Dinajpur District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-183-Pymt/339/13', 1, N'2013', N'Civil works fo reaising of the floor level of Main Hospital Building, X-Ray & Auto Clave Room at Kalna Sub-Divisional Hospital of Burdwan District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-184-Pymt/340/13', 1, N'2013', N'Repair & Renovation of Hospital Building of Udaynarayanpur State General Hospital at Howrah District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-185-Pymt/341/13', 1, N'2013', N'Construction of SNCU Toilet Block of Imambara Sadar Hospital, Chinsura of Hooghly District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-186-Pymt/342/13', 1, N'2013', N'Construction of Gangway & external painting of the Khatra Sub-Divisional Hospital at Bankura District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-187-Pymt/343/13', 1, N'2013', N'Repair & renovation of Rogi Sahayata Kendra at Dr. B. N. Bose Sub-Divisional Hospital of North 24 Parganas District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-188-Pymt/344/13', 1, N'2013', N'Construction, repair & renovation works at Jalpaiguri District Hospital.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-189-Pymt/345/13', 1, N'2013', N'Repair & renovation with construction works at Gabberia State General Hospital of Howrah District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-190-Pymt/346/13', 1, N'2013', N'Expenditure for (i) Construction of M. S. Stair & Fencing at 4th floor of Ladies Hospital, (ii) Renovation of ground floor (LHS portion) of Administrative & Academy building & (iii) Repairing & renovation of first floor of Administrative & College Building of D. N. De Homoepathic Medical College & Hospital, Kolkata-46.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-191-Pymt/347/13', 1, N'2013', N'Expenditure for face lifting work of Administrative & College Building of D. N. De Homoepathic Medical College & Hospital, Kolkata - 46.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-192-Pymt/348/13', 1, N'2013', N'Construction of K. B. Ward for extension of Maternity & Padiatric Ward at Sreerampur (Walsh) Sub Divisional Hospital of Hooghly District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-193-Pymt/349/13', 1, N'2013', N'Necessary repair & renovation & upgradation of different wards of Chandannagar Sub Divisional Hospital in Hooghly District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-194-Pymt/350/13', 1, N'2013', N'Electrical installation works at newly Constructed Blood Bank at Canning Sub-Divisional Hospital of South 24 Parganas District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-195-Pymt/351/13', 1, N'2013', N'Electrical installation works at Haldia Sub Divisional Hospital of Purba Medinipur District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-196-Pymt/352/13', 1, N'2013', N'Electrical installation works at South Howrah State General Hospital at Howrah District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-197-Pymt/353/13', 1, N'2013', N'Repair & Renovation works with construction works at South Howrah State General Hospital at Howrah District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-198-Pymt/354/13', 1, N'2013', N'Repair & renovation works at Maternity Ward, P. P. Unit, Female Ward, O. T., N. B. C. C. & Burn Unit of Deben Mahato Sadar Hospital in Purulia District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-199-Pymt/355/13', 1, N'2013', N'Vertical extension of existing District Reserve Store (Family Planning Store) at Jalpaiguri District Hospital in Jalpaiguri District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-200-Pymt/356/13', 1, N'2013', N'Vertical extension of existing District Reserve Store (Family Planning Store) at Jalpaiguri District Hospital in Jalpaiguri District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-201-Pymt/357/13', 1, N'2013', N'Construction of District Family Welfare Stores as well as District Vaccine Stores at District Hospital, Chinsurah in Hooghly District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-202-Pymt/358/13', 1, N'2013', N'Electrical installation works of District Family Welfare Stores as well as District Vaccine Stores at District Hospital, Chinsurah in Hooghly District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-203-Pymt/359/13', 1, N'2013', N'Construction of District Family Welfare Stores as well as District Vaccine Stores at Matrisadan, Krishnanagar in Nadia District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-204-Pymt/360/13', 1, N'2013', N'Electrical installation works of District Family Welfare Stores as well as District Vaccine Stores at Matrisadan, Krishnanagar in Nadia District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-205-Pymt/361/13', 1, N'2013', N'Electrical installation works at Jhargram Sub Divisinal Hospital of Paschim Medinipur District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-206-Pymt/362/13', 1, N'2013', N'Civil works for setting up of SNCU at Bishnupur Sub Divisional  Hospital in Bankura District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-207-Pymt/363/13', 1, N'2013', N'Electrical installation works for setting up of SNCU at Bishnupur Sub Divisional Hospital in Bankura District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-208-Pymt/364/13', 1, N'2013', N'Repair & Renovation works of ASHA-Disha Help Desk at M. R. Bangur Hospital.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-209-Pymt/365/13', 1, N'2013', N'Electrical installation works of ASHA-Disha Help Desk at M. R. Bangur Hospital.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-210-Pymt/366/13', 1, N'2013', N'Civil and sanitary & plumbing works at proposed 2nd floor by Vertical Extension over existing 1st floor at Sadar Hospital Campus, Nadia.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-211-Pymt/367/13', 1, N'2013', N'Electrical installation works for the proposed SNCU at Egra Sub Divisional Hospital in Purba Medinipur District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-212-Pymt/368/13', 1, N'2013', N'Repair & Renovation of proposed expansion and renovation of SNCU at Bankura Sammilani Medical College & Hospital.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-213-Pymt/369/13', 1, N'2013', N'Setting up of PICU (Pediatric Intensive Care Unit) at Burdwan Medical College & Hospital.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-214-Pymt/370/13', 1, N'2013', N'Electrical installation works for setting up of PICU (Pediatric Intensive Care Unit) at Burdwan Medical College & Hospital.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-215-Pymt/371/13', 1, N'2013', N'Repair & renovation works of 6 nos. of Medical Officers Quarters at Bishnupur Sub Divisional Hospital of Bankura District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-216-Pymt/372/13', 1, N'2013', N'Electrical repair & renovation works at Leicester Ward & Dalhousie Ward for accommodation of neonates including Electrical installation & AC installation works at the proposed HDU of Leicester Ward at Eden Hospital under Medical College & Hospital, Kolkata.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-217-Pymt/373/13', 1, N'2013', N'Construction works, repair & renovation works and sanitary & plumbing works at Saktinagar District Hospital of Nadia District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-218-Pymt/374/13', 1, N'2013', N'Repair & renovation works at Leicester Ward & Dalhousie Ward at Eden Hospital under Medical College & Hospital, Kolkata.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-219-Pymt/375/13', 1, N'2013', N'Repair & renovation works at Mal Sub-Divisional Hospital in Jalpaiguri District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-220-Pymt/376/13', 1, N'2013', N'Electrical installation works at the Rest Shed for Patient Parties at Mal Sub Divisional Hospital in Jalpaiguri District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-221-Pymt/377/13', 1, N'2013', N'Construction of Boundary wall around the proposed site for Super-Speciality Hospital at Onda in the District of Bankura.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-222-Pymt/378/13', 1, N'2013', N'Construction of Boundary wall around the proposed site for Super-Speciality Hospital at Chhatna in the District of Bankura.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-223-Pymt/379/13', 1, N'2013', N'Minor alteration works for structural and sanitary & plumbing works at the SNCU of Bongaon Sub-Divisional Hospital of North 24 Parganas District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-224-Pymt/380/13', 1, N'2013', N'Electrical installation works of Labour Room Complex at the 1st floor of Kandi Sub Divisional Hospital at Murshidabad District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-225-Pymt/381/13', 1, N'2013', N'Change of pipeline at Auto-Clave, OT, Labour Room, overhead tank connection of roof at Contai Sub Divisional Hospital of Purba Medinipur District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-226-Pymt/382/13', 1, N'2013', N'Construction of RAMP at Islampur Sub Divisional Hospital of Uttar Dinajpur.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-227-Pymt/383/13', 1, N'2013', N'Repair & renovation works at Imambara Sadar Hospital of Hooghly District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-228-Pymt/384/13', 1, N'2013', N'Repair & renovation works at Uttarpara State General Hospital of Hooghly District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-229-Pymt/385/13', 1, N'2013', N'Construction of Boundary wall around the proposed site for Super-Speciality Hospital at Hatuara in the District of Purulia.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-230-Pymt/386/13', 1, N'2013', N'Construction, repair & renovation works at Asansol Sub Divisional Hospital at Burdwan District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-231-Pymt/387/13', 1, N'2013', N'"Electrical installation works at Blood Bank" under the scheme ''Construction, repair & renovation works at Asansol Sub Divisional Hospital in Burdwan District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/GasPipeLine/Koley/392/13', 1, N'2013', N'PAYMENT OF GAS PINE LINE OF KOLEY MEDICAL AGENCY')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/FIN-397/13', 1, N'2013', N'OPENING OF CURRENT A/C IN SBI ,SWASTHYA BHAWAN BRANCH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/DEC-Payment/404/13', 1, N'2013', N'PAYMENT FILE OF DEC TABLETS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Adv.Tax/411/13', 1, N'2013', N'PAYMENT OF ADVANCE TAX')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Albendazole/412/13', 1, N'2013', N'SUPPLY OF ALBENDAZOLE TAB')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Audit 12-13/420/13', 1, N'2013', N'AUDIT FOR THE FY 12-13')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/DEC-Payment/425/13', 1, N'2013', N'PAYMENT FILE OF DEC TABLET')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Email creation/426/13', 1, N'2013', N'PROPOSAL OF EMAIL CREATION')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/MiscFile/428/13', 1, N'2013', N'MISCELLEANEOUS PAYMENT FILE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Telemidia/429/13', 1, N'2013', N'TELEMEDIA SERVICES')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/IT Statement/430/13', 1, N'2013', N'INCOME TAX STATEMENT')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Fund.Req/432/13', 1, N'2013', N'REQUISION OF FUND EQUITY SHARE CAPITAL AND GRAND IN  AID')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-256/Pymt/434/13', 1, N'2013', N'SPECIAL REPAIR & RENOVATION WORK WITH CONVERSION NURSURY ON TO SNCU')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/SDH-Payment/435/13', 1, N'2013', N'POWER SUPPLY IN CONNECTION WITH SERVICE CONNECTION TO DH/SDH PAYMENT')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-257/Pymt/436/13', 1, N'2013', N'ELECTRICAL INSTALLATION WORKS WITH ALLIED WORKS FOR THE SNCU')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-252/Pymt/437/13', 1, N'2013', N'Construction of Tertiary Healthcare Hospital at Onda in the District of Bankura')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-253/Pymt/438/13', 1, N'2013', N'Construction of Tertiary Healthcare Hospital at Chatna in the District of Bankura')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-269/Pymt/439/13', 1, N'2013', N'Electrical works for setting up of Mother & Child Hub at District Hospital at Burdwan Medical College & Hospital.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-270/Pymt/440/13', 1, N'2013', N'Electrical works for setting up of Mother & Child Hub at District Hospital at Nadia')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-271/Pymt/441/13', 1, N'2013', N'Electrical works for setting up of Mother & Child Hub at Malda Medical College & Hospital.')
GO
print 'Processed 100 total records'
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-272/Pymt/442/13', 1, N'2013', N'Electrical installation for the proposed newly constructed Mother & Child Hub at New General Hospital, Berhampore of Murshidabad District')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-273/Pymt/443/13', 1, N'2013', N'Electrical works for setting up of Mother & Child Hub at Jalpaiguri District Hospital.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-274/Pymt/444/13', 1, N'2013', N'Electrical works for setting up of Mother & Child Hub at Bankura Sammillani Medical College & Hospital.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-275/Pymt/445/13', 1, N'2013', N'Electrical works for setting up of Mother & Child Hub at Medinipur Medical College & Hospital of Paschim Medinipur')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-276/Pymt/446/13', 1, N'2013', N'Electrical works for setting up of Intensive Therapy Unit (ITU) under JE/AES prevention & Control programme at Imambara District Hospital, Hooghly')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-277/Pymt/437/13', 1, N'2013', N'Civil works for setting up of Intensive Therapy Unit (ITU) under JE/AES prevention & Control programme at Imambara District Hospital, Hooghly')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Soil testing/448/13', 1, N'2013', N'CORRESPONDANCE OF SATYA NANDA ASSOCIATOR')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Economic Review/439/13', 1, N'2013', N'PUBLICATION OF ECONOMIC REVIEW OF WEST BENGAL FOR THE YEAR 2013-14')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/vehicle/450/13', 1, N'2013', N'HIRING OF OFFICE VEHICLE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Auitquery/451/13', 1, N'2013', N'AUDIT QUERY')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Supply of DEC Tab/456/13', 1, N'2013', N'SUPPLY OF DEC TABLETS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-258/Pymt/457/13', 1, N'2013', N'SETTING UP OF BLOOD STORAGE UNIT AT BARANAGAR SGH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Fund req/458/13', 1, N'2013', N'REQUISITION OF FUND')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Tab.ACT(SP+AS) ADULT/459/13', 1, N'2013', N'SUPPLY OF TAB. ACT(SP+AS) ADULT UNICARE INDIA LTD')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-021/Pymt/461/13', 1, N'2013', N'A PART FILE OPEN OF AAES-021 AS A PART-II')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-234/Pymt/463/13', 1, N'2013', N'REPAIR & RENOVATION OF TAMLUK DH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-165A/Pymt/464/13', 1, N'2013', N'SETTING UP OF MOTHER AND CHILD HUB AT MURSHIDABAD MCH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-162A/Pymt/465/13', 1, N'2013', N'Civil works for setting up of Mother & Child Hub at District Hospital, Krishnanagar, Nadia District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-163A/Pymt/466/13', 1, N'2013', N'Civil works of the scheme ''Setting Up of Mother & Child Hub at District Hospital at Bankura Sammillani Medical College & Hospital of Bankura District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-160A/Pymt/467/13', 1, N'2013', N'Civil works for setting up of Mother & Child Hub at District Hospital at Medinipur College & Hospital of Paschim Medinipur District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-159A/Pymt/468/13', 1, N'2013', N'Civil works for setting up of Mother & Child Hub at District Hospital at Burdwan Medical College & Hospital.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-246/Pymt/470/13', 1, N'2013', N'Electrical works for setting up of blood storage unit at Chakdaha State General Hospital of Nadia District')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-247/Pymt/471/13', 1, N'2013', N'Civil works for setting up of Blood storage unit at Chakdaha State General Hospital of Nadia District')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-248/Pymt/472/13', 1, N'2013', N'Construction of Mortuary by renovation of Morgue at Khatra Sub-Divisional Hospital, Bankura')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-249/Pymt/473/13', 1, N'2013', N'Setting up of Blood storage unit at Habra State General Hospital of 24 Pgs (N) District')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-250/Pymt/474/13', 1, N'2013', N'Construction of incomplete portion & renovation of the Auditorium at 3rd floor of Administrative Block of the Calcutta Homoeopathic Medical College & Hospital, Kolkata')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-232/Pymt/475/13', 1, N'2013', N'Construction of internal sanitary & plumbing works and external sewerage line of drainage line behind the academic building of the Calcuta Homoeopathic Medical College & Hospital, Kolkata-9.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-233/Pymt/476/13', 1, N'2013', N'REPAIR & RENOVATION WORKS AT VIDYASAGAR SGH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-234/Pymt/477/13', 1, N'2013', N'Repair & renovation of District Hospital, Tamluk, Purba Medinipur.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-235/Pymt/478/13', 1, N'2013', N'Electrical works including installation of the Air Conditioning system at the proposed augmented SNCU at Bankura Sammillani Medical College & Hospital in Bankura district')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-236/Pymt/479/13', 1, N'2013', N'Repair & Renovation works of 3 nos. of Toilet block at M R Bangur Hospital of 24 Pgs (S). District')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-237/Pymt/480/13', 1, N'2013', N'Construction of new office building (Phase I) of CMOH at Diamond Harbour Health district at Diamond Harbour SDH compound, 24 Pgs (S).')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-238/Pymt/481/13', 1, N'2013', N'Electrical installation and allied works for introduction of Dialysis Unit at Suri Sadar Hospital, Birbhum')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-239/Pymt/482/13', 1, N'2013', N'Renovation & Upgradation of Electrical sub-station and allied E.I. works for installation of high end diagnostic facilities at Alipurduar S.D. Hospital, Jalpaiguri')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-240/Pymt/483/13', 1, N'2013', N'Expenditure for site preparation for installation of high end diagnostic equipment / dialysis service at District Hospital, Tamluk, Purba Medinipur')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-161A/Pymt/484/13', 1, N'2013', N'Civil works for setting up of Mother & Child Hub at District Hospital, Jalpaiguri.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-268/Pymt/485/13', 1, N'2013', N'Construction of Mortuarier at Tehatta Sub-divisional Hospital, Nadia')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-241/Pymt/486/13', 1, N'2013', N'Expenditure for supply, installation, testing & commissioning of new sub-station at Asansol S.D. Hospital, Burdwan')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-242/Pymt/487/13', 1, N'2013', N'Augmentation by 500 KVA and site preparation electrical for setting up of high end diagnostic equipment & dialysis service')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-243/Pymt/488/13', 1, N'2013', N'Electrical works of 200 KVA 3 phase generator power backup for installation of CT Scan, dialysis & digital X-Ray Unit')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-244/Pymt/489/13', 1, N'2013', N'Electrical works for setting up of blood storage unit at Santipur State General Hospital of Nadia District')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-245/Pymt/490/13', 1, N'2013', N'Civil works for setting up of Blood storage unit at Santipur State General Hospital of Nadia District')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-251/Pymt/491/13', 1, N'2013', N'Construction of Tertiary Healthcare Hospital at Hatuara in the District of Purulia')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-254/Pymt/492/13', 1, N'2013', N'Construction of Training School for Auxilary Nursing & Midwives (ANM) at Lalgarh within PHC Campus under Binpur-I Block of Paschim Medinipur District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-255/Pymt/493/13', 1, N'2013', N'Electrical works relating to construction of Training School for Auxilary Nursing & Midwives (ANM) at Lalgarh within PHC Campus under Binpur-I Block of Paschim Medinipur District.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-259/Pymt/494/13', 1, N'2013', N'Construction of boundary wall around the proposed site for Super-speciality hospital at Islampur in the district of Uttar dinajpur')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-260/Pymt/495/13', 1, N'2013', N'SITC of Air-Conditioning machine in step down unit at Islampur sub-divisional hospital at Uttar Dinajpur district.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-261/Pymt/496/13', 1, N'2013', N'Repair, renovation & upgradation of main hospital building at Arambagh Sub-division Hospital, Hooghly')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-262/Pymt/497/13', 1, N'2013', N'Repair & renovation of compound roads and drainage at Arambagh Sub-division hospital, Hooghly')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-263/Pymt/498/13', 1, N'2013', N'Expenditure for re-construction of the boundary wall at Arambagh Sub-division hospital, Hooghly')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-264/Pymt/499/13', 1, N'2013', N'Expenditure for re-construction of shed for the Ambulance and second gate at Arambagh Sub-division hospital, Hooghly')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-265/Pymt/500/13', 1, N'2013', N'Construction of Tertiary Healthcare Hospital at Islampur in the District of Uttar Dinajpur')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-266/Pymt/501/13', 1, N'2013', N'Construction of Tertiary Healthcare Hospital at Gangarampur in the District of Dakshin Dinajpur')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-267/Pymt/502/13', 1, N'2013', N'Construction of Tertiary Healthcare Hospital at Falakata in the District of Jalpaiguri')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Meeting/503/13', 1, N'2013', N'APPROVAL OF MEETING EXPENDITURE & APYMENT')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Fox&Mondal Pymt/504/13', 1, N'2013', N'PAYMENT FILE OF FOX & MONDAL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-278/Pymt/515/14', 1, N'2014', N'Supply & installation of Air Conditioner Machine for Cooling system at 2 Nos. of O.T. in reconstructive Surgery unit at 1st floor of R g Kar')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-279/Pymt/516/14', 1, N'2014', N'Civil works of Reconstructive Surgery under department of Plastic Surgery at R.G. Kar Medical College & Hospital, Kolkata')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-280/Pymt/517/14', 1, N'2014', N'Supply & installation of sub-station equipment and allied electrical works at Bishnupur SD Hospital of Bankura District')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-281/Pymt/518/14', 1, N'2014', N'Renovation and upgradation of electrical sub-station and allied E.I. work for installation of High end Dignostic facilities at MJN Hospital, Coochbehar')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-282/Pymt/519/14', 1, N'2014', N'Augmentation of sub-station including SITC of additional 250 KVA. 11KV/400 Volt, 3 Phase, 50 H3 Indore type transformer, 3 panel H.T. Gear within the premises of Gangarampur SD Hospital, Dakshin Dinajpur')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-283/Pymt/520/14', 1, N'2014', N'Supply & installation of 125 KVA Diesel Generator set for the proposed SNCU at Egra Sub-divisional Hospital of Purba Medinipur District')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-284/Pymt/521/14', 1, N'2014', N'Setting up of Intensive Therapy Unit (ITU) under JE/AES prevention & control programme at the Suri Sadar Hospital, Birbhum')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-285/Pymt/522/14', 1, N'2014', N'Setting up of Intensive Therapy Unit (ITU) under JE/AES prevention & control programme at the Suri Sadar Hospital, Birbhum')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-286/Pymt/523/14', 1, N'2014', N'Civil works for Setting up of Mother & Child Hub at Suri Sadar Hospital of Birbhum District')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-287/Pymt/524/14', 1, N'2014', N'Electrical works for Setting up of Mother & Child Hub at Suri Sadar Hospital of Birbhum District')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-288/Pymt/525/14', 1, N'2014', N'Civil works for setting up of skill laboratory, seminar room & office at Dr. B C Roy Post Graduate Institute of Paediatric Science (Beliaghata)')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-289/Pymt/526/14', 1, N'2014', N'Electrical works for setting up of skill laboratory, seminar room & office at Dr. B C Roy Post Graduate Institute of Paediatric Science (Beliaghata)')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-290/Pymt/527/14', 1, N'2014', N'Civil works for setting up of skill laboratory, seminar room & office at the College of Nursing in Burdwan District')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-291/Pymt/528/14', 1, N'2014', N'Electrical works for setting up of skill laboratory, seminar room & office at the College of Nursing in Burdwan District')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Correspondance-Other/529/14', 1, N'2014', N'CORRESPONDENCE FILE WITH OTHERS THAN HEALTH AND FAMILY WELFARE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-292/Pymt/530/14', 1, N'2014', N'Construction of Electrical room on the 2nd & 3rd floor for the proposed Mother & Child Hub at Uluberia SDH of Howarh District')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BG/ACCT/532/14', 1, N'2014', N'ISSUANCE OF BANK GUARANTEES INFAVOUR OF WIPRO GE HEALTHCARE FOR SUPPLY & INSTALLATION OF MRI SCANNER')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/STATIONERY/538/14', 1, N'2014', N'PROCUREMENT OF STATIONERY GOODS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Const.off.cum.God/541/14', 1, N'2014', N'CONTRUCTION OF OFFICE CUM GODOWN,MULTISTORED BUILDING OF WBMSCL AT SWASTHYA BHABHAN')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/ROC/Notice/545/14', 1, N'2014', N'ROC NOTICE AND REPLY CHARGE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'BRGF/ACCTS/Gopibalavpur/547/14', 1, N'2014', N'PLANIMG,DESIGN,CONTRUCTION,FURNITURE ,SUPPLY OF MEDICAL EQUIPMENTS & FUNITURE ON TURNKEY BASIS AT GOPIBALLAVPUR')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'BRGF/ACCTS/Ghatal/548/14', 1, N'2014', N'PLANIMG,DESIGN,CONTRUCTION,FURNITURE ,SUPPLY OF MEDICAL EQUIPMENTS & FUNITURE ON TURNKEY BASIS AT GHATAL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'BRGF/ACCTS/Jalpaiguri/549/14', 1, N'2014', N'PLANIMG,DESIGN,CONTRUCTION,FURNITURE ,SUPPLY OF MEDICAL EQUIPMENTS & FUNITURE ON TURNKEY BASIS AT JALPAIGURI')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'BRGF/ACCTS/Egra/550/14', 1, N'2014', N'PLANIMG,DESIGN,CONTRUCTION,FURNITURE ,SUPPLY OF MEDICAL EQUIPMENTS & FUNITURE ON TURNKEY BASIS AT EGRA')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'BRGF/ACCTS/Paskura/551/14', 1, N'2014', N'PLANIMG,DESIGN,CONTRUCTION,FURNITURE ,SUPPLY OF MEDICAL EQUIPMENTS & FUNITURE ON TURNKEY BASIS ATPASKURA')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'BRGF/ACCTS/Raiganj/552/14', 1, N'2014', N'PLANIMG,DESIGN,CONTRUCTION,FURNITURE ,SUPPLY OF MEDICAL EQUIPMENTS & FUNITURE ON TURNKEY BASIS AT RAIGANJ')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'BRGF/ACCTS/Jangipur/553/14', 1, N'2014', N'PLANIMG,DESIGN,CONTRUCTION,FURNITURE ,SUPPLY OF MEDICAL EQUIPMENTS & FUNITURE ON TURNKEY BASIS AT JANGIPUR')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'BRGF/ACCTS/Chanchal/554/14', 1, N'2014', N'PLANIMG,DESIGN,CONTRUCTION,FURNITURE ,SUPPLY OF MEDICAL EQUIPMENTS & FUNITURE ON TURNKEY BASIS AT CHANCHAL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'BRGF/ACCTS/Balurghat/555/14', 1, N'2014', N'PLANIMG,DESIGN,CONTRUCTION,FURNITURE ,SUPPLY OF MEDICAL EQUIPMENTS & FUNITURE ON TURNKEY BASIS AT BALURGHAT')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'BRGF/ACCTS/Suri/556/14', 1, N'2014', N'PLANIMG,DESIGN,CONTRUCTION,FURNITURE ,SUPPLY OF MEDICAL EQUIPMENTS & FUNITURE ON TURNKEY BASIS AT SURI')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'BRGF/ACCTS/Nayagram/557/14', 1, N'2014', N'PLANIMG,DESIGN,CONTRUCTION,FURNITURE ,SUPPLY OF MEDICAL EQUIPMENTS & FUNITURE ON TURNKEY BASIS AT NAYAGRAM')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'BRGF/ACCTS/Jhargram/558/14', 1, N'2014', N'PLANIMG,DESIGN,CONTRUCTION,FURNITURE ,SUPPLY OF MEDICAL EQUIPMENTS & FUNITURE ON TURNKEY BASIS AT JHARGRM')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'BRGF/ACCTS/Baruipur/559/14', 1, N'2014', N'PLANIMG,DESIGN,CONTRUCTION,FURNITURE ,SUPPLY OF MEDICAL EQUIPMENTS & FUNITURE ON TURNKEY BASIS AT BARUIPUR')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'BRGF/ACCTS/Bongaon/560/14', 1, N'2014', N'PLANIMG,DESIGN,CONTRUCTION,FURNITURE ,SUPPLY OF MEDICAL EQUIPMENTS & FUNITURE ON TURNKEY BASIS AT BONGAON')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-293/Pymt/575/14', 1, N'2014', N'Electrical installation works at the newly setup dedicated District Family Welfare stores as District Vaccine Stores in the district of Murshidabad')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-294/Pymt/576/14', 1, N'2014', N'Civil Construction for setting up RO Plant for Dialysis Unit at Howrah District Hospital in the District of Howrah')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-295/Pymt/577/14', 1, N'2014', N'Renovation of Existing Isolation Ward for CT Scan Unit at Raiganj District Hospital, Uttar Dinajpur')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-296/Pymt/579/14', 1, N'2014', N'Installation of Water Tank / RO System for Dialysis Unit at Raiganj District Hospital, Uttar Dinajpur')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-297/Pymt/580/14', 1, N'2014', N'Civil Works for Dialysis Unit at Deban Mahato Hospital in the District of Purulia')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-298/Pymt/582/14', 1, N'2014', N'Power Augmentation for High End Diagnostic Unit at Deban Mahato Hospital in the District of Purulia')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-299/Pymt/583/14', 1, N'2014', N'Electrical Works for setting up Dialysis Unit & Digital X-Ray at Balurghat District Hospital in the District of Dakshin Dinajpur')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-021/Pymt/461/14/PART III', 1, N'2014', N'Electrical works for Mother & Child Hub unit by vertical extension of another two floor of Newly constructed SNCU building & another one floor of existing child ward of old hospital building.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Payment Adv./600/14', 1, N'2014', N'PAYMENT OF ADVERTISEMENT BILL FOR THE YEAR 2014-15')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/Payment-Adv/601/14', 1, N'2014', N'PAYMENT OF BRGF ADVERTISEMENT BILL FOR THE YEAR 2014-15')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Confm/B.G/603/14', 1, N'2014', N'CONFIRMATION OF BANK GUARANTEE')
GO
print 'Processed 200 total records'
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-152/Pymt/308/13/PART-V', 1, N'2014', N'Repair, renovation & construction of different works at Bankura Sammilani Medical College, Bankura.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/ACCT/Salary/51/14/PART-III', 1, N'2014', N'SALARY/CONTRACTUAL REMUNERATION OF ALL EMPLOYEES FOR THE FY 2014-15')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-309/Pymt/623/14', 1, N'2014', N'Repair & Renovation works at Durgapur Sub-Divisional Hospital of Burdwan District (inclusive Contingency @ 2.5%)')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-317/Pymt/629/14', 1, N'2014', N'Electrical works for construction of Mother''s Rest Room at the Hospital Building at Burdwan Medical College & Hospital')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/IT Statement/643/14', 1, N'2014', N'INCOME TAX STATEMENT FOR FY 2014-15')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Audit13-14/644/14', 1, N'2014', N'AUDIT FOR THE FY 13-14')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-152/Pymt/647/14/PART-VI', 1, N'2014', N'Repair, renovation & construction of different works at Bankura Sammilani Medical College, Bankura.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Termination/PLL/668/2014', 1, N'2014', N'PAYMENT FOR TERMINATION PROCUDURE OF CONTACT WITH M/S PUNJ LLOYD LTD RELEATING TO CONTRUCTION OF 3 NOS MEDICAL COLLEGES')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-307/Pymt/687/14', 1, N'2014', N'Repair and Renovation of District Early Intervention Centre at Burdwan Medical College & Hospital')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-311/Pymt/688/14', 1, N'2014', N'Civil works for construction of Mother''s Rest Room at the Hospital Building at Burdwan Medical College & Hospital')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Rearrangement Sitting Arrangement/690/2014', 1, N'2014', N'REARRANGEMENT OF SITTING ARRANGEMENT')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/13th fin.com-PHI/696/14', 1, N'2014', N'13TH FIN.COM. STRENGTHNING OF PUBLIC HEALTH INFRATRUCTURE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-315/Pymt/697/14', 1, N'2014', N'Construction of Transformer room & Panel room for the proposed Sub-station for the proposed Mother & Child Hub at District Hospital, Krishnanagar in Nadia District')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-326/Pymt/700/14', 1, N'2014', N'Power Augmentation for Fair Price Diagnosric Centre at Diamond Harbour District Hospital, South 24 Pgs.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Sec.Adv/B&R/718/14', 1, N'2014', N'SECURED ADVANCE TO BRIDGE & ROOF CO (INDIA) LTD')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Proc/HospFund/720/14', 1, N'2014', N'PAYMENT FILE OF GODREJ & BOYCE CO LTD FOR SUPPLY OF FUNITURE AT 3 MCH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Agreement/Furniture/726/14', 1, N'2014', N'AGREEMENT WITH CONTRACTOR REGRADING FURNITURE SUPPLIER')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Pmt./DRMachine/750/14', 1, N'2014', N'PAYMENT FILE OF DR MACHINE TO DIFFERENT FACILITIES IN THE STATE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-331/Pymt/766/14', 1, N'2014', N'Replacement of damaged tank, repair & renovation of store room, roof of Maternity Ward & Paediatric at Kandi Sub-Divisional Hospital of Murshidabad District')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-324/Pymt/772/14', 1, N'2014', N'Electrical works for setting up Fair Price Diagnostic (Dialysis Unit) at Rampurhat Sub-Divisional Hospital, Birbhum')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-314/Pymt/776/14', 1, N'2014', N'Major upgradation works at Meternity Ward & Labour room of Krishnanagar District Hospital in Nadia District')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-312/Pymt/774/14', 1, N'2014', N'Supply & Installation of 1 (One) SITC 415 v 3PH of Canopy type silent 500 KVA DG Set at Burdwan Medical College & Hospital')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/books pymt/778/14', 1, N'2014', N'COST OF BOOKS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/ACCT/Pymt/Telephone/782/14', 1, N'2014', N'TELEPHONE & CONTINGENCY PAYMENT /REIMBURSEMENT')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-335/Pymt/788/14', 1, N'2014', N'Setting up of SNCU & Neo-natal ward at Katwa Sub-Divisional Hospital in the District in Burdwan 1). Civil Works & 2). Sanitary and Plumbing Works')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-336/Pymt/789/14', 1, N'2014', N'Setting up of SNCU & Neo-natal ward at Kalna Sub-Divisional Hospital in the District in Burdwan 1). Civil Works & 2). Sanitary and Plumbing Works')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-334/Pymt/801/14', 1, N'2014', N'Necessary Repair & Renovation cum Construction works at Chakdaha State General Hospital of Nadia District')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Medicaman/827/15', 1, N'2015', N'WBMSCL STAFF MEDICAL INSURANCE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/ReimbursementofMD/830/15', 1, N'2015', N'PAYMENT FILE OF REIMBUREMENT CLAIM OF MANAGING DIRECTOR')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Site Contingency/831/15', 1, N'2015', N'PAYMENT OF CONTINGENCY BILL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-353/Pymt/833/15', 1, N'2015', N'Sanitary & plumbing works of SNCU & Neo-natal Ward at Deben Mahato Hospital in the District of Purulia')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/DailyAllowance&others/Pymt/841/15', 1, N'2015', N'PAYMENT FILE FOR DAILY ALLAWANCE TO STAFF OF WBMSCL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Audit 14-15/846/15', 1, N'2015', N'AUDIT FOR 2014-15')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-340/Pymt/848/15', 1, N'2015', N'CIVIL WORKS AT MURSHIDABAD MCH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-330/Pymt/849/15', 1, N'2015', N'Power Augmentation for Fair Price Diagnosric Unit at Raiganj District Hospital, Uttar Dinajpur')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/OP.bank/850/15', 1, N'2015', N'OPENING OF BANK ACCOUNT')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/CompanyEfilling ROC/Pymt/849/15', 1, N'2015', N'PAYMENT FILE OF COMPANY E-FILING TO ROC')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/DPR/Pymt/855/15', 1, N'2015', N'PAYMENT PAYMENT FILE OF PREPARATIN OF DPR FOR SETTING UP OF 5 NEW MCH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-310/Pymt/856/15', 1, N'2015', N'Electrical works for construction of Mother''s Rest Room at the Hospital Building at Burdwan Medical College & Hospital')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-370/Pymt/857/15', 1, N'2015', N'Construction  of Gang-way connecting  the existing  Labour Room in the 2nd  floor  of the Eden Hospital  Building  with  the upcoming MCH Hub')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-381/Pymt/861/15', 1, N'2015', N'Civil Works related to construction of CMOH Office at Basirhat Health District, North 24 Parganas')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Reimbusement-Travel Exp/862/15', 1, N'2015', N'REIMBURSEMENT OF TRAVELLING EXPENDITURE & OTHERS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-325/Pymt/863/15', 1, N'2015', N'Construction of Sub Station Building in connection with Power Augmentation for Fair Price Diagnosric Centre at Gangarampur Sub Divisional Hospital, Dakshin Dinajpur')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-344/Pymt/864/15', 1, N'2015', N'Supply & Installation of 2 KVA Servo Controlled Voltage Stabiliser for SNCU at MJN District Hospital in the District of Coochbehar.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-414/Pymt/865/15', 1, N'2015', N'Setting up of SNCU at Bolpur Sub-Divisional Hospital, District Birbhum')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-303/Pymt/867/15', 1, N'2015', N'Repair and Renovation of District Early Intervention Centre at S.S.K.M. (I.P.G.M.E.R) Hospital')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-322/Pymt/868/15', 1, N'2015', N'ELECTRICAL INSTALLATION WORKS FOR UPGRADATION OF MATERNITY WARD & LABOUR OF BANKURA MCH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Payment Binocular/869/15', 1, N'2015', N'PAYMENT FILE OF BINOCULAR COMPOUND MICROSCOPE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Tiffin-Allowance/882/15', 1, N'2015', N'PAYMENT FILE OF TIFFIN ALLOWANCE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-319/Pymt/883/15', 1, N'2015', N'Electrical works for setting up of Mother & Child Hub at M.J.N. Hospital of Coochbehar District')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-327/Pymt/886/15', 1, N'2015', N'Civil works for setting up Fair Price Diagnostic (Dialysis Unit) at Diamond Harbour District Hospital, South 24 Pgs.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Micro BEN-Smart/Payment/890/15', 1, N'2015', N'PAYMENT FILE OF MICRO BEN-SMART/TCP IP WITH 4 4 HOURS BACKUP(BIOMETRIC EUIPMENT)')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Blood Bank Payment Ref./891/15', 1, N'2015', N'PAYMENT FILE OF BLOOD BANK REFRIGETOR')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/OFFICIAL-TOUR-AGM/893/15', 1, N'2015', N'OFFICIAL TOUR FILE OF AGM,WBMSCL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Professional-service/902/15', 1, N'2015', N'PAYMENT FEES AGAINST PROFESSIONAL SERVICES FEE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-402/Pymt/903/15', 1, N'2015', N'Expenditure in connection with additional electrical works related to construction of SNCU at Tamluk District Hospital, Purba Medinipur')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-403/Pymt/904/15', 1, N'2015', N'Setting up to extended SNCU at 1st floor G&O building opposite to existing SNCU at R. G. Kar Medical College & Hospital, Kolkata')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-405/Pymt/905/15', 1, N'2015', N'Extension of SNCU-NG campus at Murshidabad Medical College & Hospital, Murshidabad')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-422/Pymt/906/1', 1, N'2015', N'Supply and installation of additional A.C. machine controlled by sequence timer & setting up of fire & smoke detection system at the SNCU in Kandi Sub-Divisional Hospital, Murshidabad')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PF Remit/907/15', 1, N'2015', N'PROVIDENT FUND')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-404/Pymt/909/15', 1, N'2015', N'Replacement of existing AC machine at the SNCU of District Hospital Sadar Campus of Nadia')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-406/Pymt/910/15', 1, N'2015', N'Expenditure in connection with additional electrical works related to setting up of Neo-natal ward at Kandi Sub-Divisional Hospital, Murshidabad')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-407/Pymt/911/15', 1, N'2015', N'Expenditure in connection with additional electrical works related to construction of SNCU at Arambagh Sub-Divisional Hospital, Hooghly')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-408/Pymt/912/15', 1, N'2015', N'Expenditure in connection with essential repair & renovation of SNCU (step down) at Calcutta National Medical College & Hospital')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-409/Pymt/913/15', 1, N'2015', N'Renovation work of waiting room of mother (whose babies are admitted in SNCU) at 1st floor of Balurghat District Hospital, Dakshin Dinajpur')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-410/Pymt/914/15', 1, N'2015', N'Additional electrical works at SNCU, Bongaon District Hospital, North 24 Parganas')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-411/Pymt/915/15', 1, N'2015', N'Expenditure in connection with augmentation of power supply required for installation of High End Diagonostic Equipments at the Asansol District Hospital, Burdwan')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-412/Pymt/916/15', 1, N'2015', N'Construction of Bed cum Passenger Lift at North East Portion of main hospital Building within the compound of Lady Dufferin Victoria Hospital - [inclusive of Contingency @ 2.5%]')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-413/Pymt/917/15', 1, N'2015', N'Electrical installation work for the proposed SNCU & Neo-natal ward at Katwa Sub-Divisional Hospital in Burdwan - [inclusive of Contingency @ 2.5%]')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-415/Pymt/918/15', 1, N'2015', N'Electrical installation work for the proposed SNCU & Neo-natal ward at Kalna Sub-Divisional Hospital in Burdwan')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-416/Pymt/919/15', 1, N'2015', N'Augmentation of service connection with allied cable connection with existing system at Egra Sub-Divisional Hospital, Purba Medinipur')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-417/Pymt/920/15', 1, N'2015', N'Civil works related to augmentation of the existing sub-station capacity from 1000 KVA to 1500 KVA within the campus of Murshidabad Medical College & Hospital, Berhampore')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-418/Pymt/921/15', 1, N'2015', N'Electrical installation works related to augmentation of the existing sub-station capacity from 1000 KVA to 1500 KVA within the campus of Murshidabad Medical College & Hospital, Berhampore')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-419/Pymt/922/15', 1, N'2015', N'Electrical installation work related to setting up of SNCU at Tehatta Sub-Divisional Hospital, Nadia')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-420/Pymt/923/15', 1, N'2015', N'Electrical installation works for the proposed Blood Storage unit at Mekhliganj Sub-Divisional Hospital of Coochbehar District')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-421/Pymt/924/15', 1, N'2015', N'Setting up of Blood Storage unit at Mekhliganj Sub-Divisional Hospital of Coochbehar District')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-423/Pymt/925/15', 1, N'2015', N'Special water proofing treatment with concreting on the roof of SNCU ward at Kandi Sub-Divisional Hospital, Murshidabad')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-424/Pymt/926/15', 1, N'2015', N'Extension of SNCU at Asansol District Hospital, Burdwan')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-425/Pymt/927/15', 1, N'2015', N'Setting up of District Early Intervention Centre at North Bengal Medical College & Hospital at Darjeeling (SMP)')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-426/Pymt/928/15', 1, N'2015', N'Construction of Patient Party Waiting Shed at Haldibari Rural Hospital of Coochbehar District')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-427/Pymt/929/15', 1, N'2015', N'Civil works for major upgradation of labour room & maternity ward at Barasat District Hospital of North 24 Parganas')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-428/Pymt/930/15', 1, N'2015', N'Electrical works related to construction of a new morgue at Serampore (Walsh) Sub-Divisional Hospital, Hooghly')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-429/Pymt/931/15', 1, N'2015', N'Civil works related to construction of a new morgue at Serampore (Walsh) Sub-Divisional Hospital, Hooghly')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-430/Pymt/932/15', 1, N'2015', N'Construction of a single storied building for the extension of labour ward at Udaynarayanpur State General Hospital at Howrah District')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-431/Pymt/933/15', 1, N'2015', N'Construction & extension of Maternity Ward, Labour Room & Observation Ward of Kaliaganj State General Hospital at Uttar Dinajpur')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-432/Pymt/934/15', 1, N'2015', N'Electrical installation works for proposed construction & extension of Maternity Ward, Labour Room & Observation Ward of Kaliaganj State General Hospital at Uttar Dinajpur')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-433/Pymt/935/15', 1, N'2015', N'Civil repair & renovation work of the Nurses Hostel at Islampur Sub-Divisional Hospital of Uttar Dinajpur District')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-434/Pymt/936/15', 1, N'2015', N'Electrical installation works for the proposed repair & renovation work of the Nurses Hostel at Islampur Sub-Divisional Hospital of Uttar Dinajpur District')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-435/Pymt/937/15', 1, N'2015', N'Special renovation cum repairing of existing labour room, observation room, sister-in-charge room (labour room) at Baghajatin State General Hospital of South 24 Parganas')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-436/Pymt/938/15', 1, N'2015', N'Electrical installation works for the special renovation cum repairing of existing labour room, observation room, sister-in-charge room (labour room) at Baghajatin State General Hospital of South 24 Parganas')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-437/Pymt/939/15', 1, N'2015', N'Electrical installation works setting up of Blood Storage Unit at Gabberia State General Hospital at Howrah District')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-438/Pymt/940/15', 1, N'2015', N'Major upgradation of labour room & maternity ward at Basirhat District Hospital')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-300/Pymt/941/15', 1, N'2015', N'Power Augmentation for High End Diagnostic Unit at Vidyasagar State General Hospital in the District South 24 Pgs.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-301/Pymt/942/15', 1, N'2015', N'Repair and Renovation of District Early Intervention Centre at Bankura Sammillani Medical College & Hospital')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-338/Pymt/943/15', 1, N'2015', N'Construction of 4-storied building for horizontal extension of State Institute of Health & Family Welfare in the campus of Swasthya Bhaban')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Pymt/RCH-Register & oths/945/15', 1, N'2015', N'PAYMENT FILE OF RCH REGISTER & OTHERS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-461/Pymt/947/15', 1, N'2015', N'Special repair to the Academy Building of the Calcutta Homoeopathic Medical College & Hospital, Kolkata')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-332/Pymt/948/15', 1, N'2015', N'Electrical installation works for proposed construction & extension of Maternity Ward, Labour Room & Observation Ward of Kaliaganj State General Hospital at Uttar Dinajpur')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-302/Pymt/950/15', 1, N'2015', N'Electrical Installation works of District Early Intervention Centre at Bankura Sammillani Medical College & Hospital')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-305/Pymt/951/15', 1, N'2015', N'Repair and Renovation of District Early Intervention Centre at Alipurduar Sub-Divisional Hospital')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-306/Pymt/952/15', 1, N'2015', N'Electrical Installation works of District Early Intervention Centre at Alipurduar Sub-Divisional Hospital')
GO
print 'Processed 300 total records'
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-308/Pymt/953/15', 1, N'2015', N'Electrical Installation works of District Early Intervention Centre at Burdwan Medical College & Hospital')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-312/Pymt/954/15', 1, N'2015', N'Supply & Installation of 1 (One) SITC 415 v 3PH of Canopy type silent 500 KVA DG Set at Burdwan Medical College & Hospital (inclusive Contingency @ 2.5%)')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-313/Pymt/955/15', 1, N'2015', N'Electrical Installation works for upgradation of Meternity Ward & Labour room of Krishnanagar District Hospital in Nadia District')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-316/Pymt/956/15', 1, N'2015', N'Major Upgradation works of the Labour room complex at 1st floor of Centenary building with the compound of Nilratan Sarkar Medical College & Hospital, Kolkata')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Misc.Corrsp/Accts/963/15', 1, N'2015', N'MISCELLEANEOUS CORRESPONDANCE PAYMENT FILE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-357/Pymt/964/15', 1, N'2015', N'Civil works of College of Medicine and Sagore Dutta Hospital, Kamarhati')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-344/Pymt/965/15', 1, N'2015', N'Supply & Installation of 2 KVA Servo Controlled Voltage Stabiliser for SNCU at MJN District Hospital in the District of Coochbehar.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-353/Pymt/966/15', 1, N'2015', N'Sanitary & plumbing works of SNCU & Neo-natal Ward at Deben Mahato Hospital in the District of Purulia')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-370/Pymt/967/15', 1, N'2015', N'Construction  of Gang-way connecting  the existing  Labour Room in the 2nd  floor  of the Eden Hospital  Building  with  the upcoming MCH Hub')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-371/Pymt/970/15', 1, N'2015', N'Augmentation of power, electrical  installation work, digital X-Ray unit at Diamond Harbour District Hospital, South 24 Pgs.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-376/Pymt/971/15', 1, N'2015', N'Civil works for the proposed Dead House in place of the existing dead house which is to be demolished to clear the land for the proposed Mother & Child Hub at Nadia District Hospital')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-347/Pymt/977/15', 1, N'2015', N'Civil works for setting up of District Early Intervention store at Deben Mahato (Sadar) Hospital at Purulia')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-342/Pymt/979/15', 1, N'2015', N'Upgradation of Hospital Building, Wards at Ground floor, 1st Floor, 2nd Floor & Labour Room at Mathabhanga Sub-divisional Hospital of Coochbehar District [inclusion of Contingency @ 2.5%]')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AAES-390/Pymt/980/15', 1, N'2015', N'Construction of GNM Training School & Hostel  Building at Jangipur Sub Divisional Hospital, Murshidabad (Civil Works)')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/ACCT/Outsourcing Staff/981/15', 1, N'2015', N'PAYMENT OF AGENCY FOR OUTSOURCING STAFF OF WBMSCL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/ACCT/Salary/983/15', 1, N'2015', N'SALARY/CONTRACTUAL REMUNERATION OF ALL EMPLOYEES FOR THE FY 2015-16')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/ACCT/Pymt/Tel&Contingency/984/15/782/14', 1, N'2015', N'TELEPHONE & CONTINGENCY PAYMENT /REIMBURSEMENT')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/ACCT/Pymt/Advertisement/985/15', 1, N'2015', N'PAYMENT FILE FOR ADVERTISEMENT')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/ACCT/Loan&CSR/988/15', 1, N'2015', N'LOAN & CSR OF WBMSCL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/ST.MedEquip/20/2011', 2, N'2011', N'STOCK OF MEDICAL EQUIPMENT')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Drug Test/32/11', 2, N'2011', N'QUALITY TESTING OF DRUGS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/NCU-SSKM/54/12', 2, N'2012', N'PROCUREMENT OF NEONATAL CARE UNIT AT SSKM HOSPITAL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Proc-Equipment/58/12', 2, N'2012', N'PROCUREMENT & INSTALLATION OF HIGH END DIAGNOSTIC EQUIPMENT AND DIALYSIS SERVICES')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Proc-BCROY/62/12', 2, N'2012', N'PROCUREMENT FOR BC ROY,PGIPS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Proc-SNCU/63/12', 2, N'2012', N'REQUISITION FOR SUPPLY OF MEDICAL EQUIPMENTS TO 18 SNCU''S')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Proc-OT Light/65/12', 2, N'2012', N'PROCUREMENT OF OT LIGHT FOR KARSEOUNG SDH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Pro-Burdwan&NRS/68/12', 2, N'2012', N'PROCUREMENT FOR BURDWAN & NRS MEDICAL COLLEGE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/NRS-PipeLine/70/12', 2, N'2012', N'MEDICAL GAS PIPE LINE AT PAEDIATRIC SURGERY DEPARTMENT OF NRS MCH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Equipment BRGF Fund/71/12', 2, N'2012', N'PROCUMENT OF HIGH END DIAGNOSTIC EQUIPMENT AND DIALYSIS SERVICES THROUGH UTILISATION OF BRGF FUND')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/E-Procurement/72/12', 2, N'2012', N'E-PROCUREMENT')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Pro-Equipment proposal/73/12', 2, N'2012', N'PROPOSAL OF THE ELECTRO MEDICAL & ALLIED INUSTRIES LTD.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Pro-calcutta School of Tropical Medicine/79/12', 2, N'2012', N'PROCUREMENT OF EQUIPMENT FOR CALCUTTA SCHOOL OF TROPICAL MEDICINE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/off-communication-Proc/89/12', 2, N'2012', N'OFFICIAL COMMUNICATION FROM PROCUREMENT SECTION')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WMSC/Proc.IT/91/12', 2, N'2012', N'WBMSC IT')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Furntr.(Proc.)/48/11/Pt.2', 2, N'2011', N'CORRESPONDENCE OF FURNITURE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Pro-DEC Tab/107/12', 2, N'2012', N'PROCUREMENT OF DEC TAB 100MG')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC-IFA&ALBENDAZOLE/111/12', 2, N'2012', N'PROCUREMENT OF IFA & ALBANDAZOLE 2012')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Proc/UNOPS/Agreemt/112/12', 2, N'2012', N'AGREEMENT WITH UNOPS FOR PROCUREMENT & OTHER RELATED SERVICES')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Proc/Laptop Comp./120/13', 2, N'2013', N'PROCUREMENT OF LAPTOP COMPUTER')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Proc./ITU Equip/124/13', 2, N'2013', N'PROCUREMENT OF ITU EQUIPMENTS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Subserp-Magazine/129/13', 2, N'2013', N'SUBSCRIPTION FOR MAGAZINE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Other-MSC/131/13', 2, N'2013', N'OTHERS MEDICAL SERVICES CORPORATION')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Proc-Anti Malarial Drugs/142/13', 2, N'2013', N'PROCUREMENT OF ANTIMALARIAL DRUGS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Proc of Refrigerator/143/13', 2, N'2013', N'PROCUREMENT OF REFRIGERETOR')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Proc-Cap.Miltefosine/144/13', 2, N'2013', N'PROCUREMENT OF CAPSULE MILTEFOSINE(10/50 mg)')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Proc-Dipstick Kit/145/13', 2, N'2013', N'PROCUREMENT OF RAPID IMMUNOCHROMATOGRAPIC DIPSTICK KIT')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Proc-RTI/STI Kit/146/13', 2, N'2013', N'PROCUREMENT OF STI/RTI KIT & RPR KITS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Proc-RTI/STI/ICTC Equip/147/13', 2, N'2013', N'PROCUREMENT OF EQUIPMENT FOR STRENGTHENING RTI/STI/ICTC SERVICES')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Proc-Snellen/148/13', 2, N'2013', N'PROCUREMENT OF SNELLEN''S CHART')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/InhouseTenderCommittee/149/13', 2, N'2013', N'IN HOUSE TENDER COMMITTEE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/UNDP/157/2013', 2, N'2013', N'PROCUREMENT OF ECHO MACHINE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/UNDP/158/2013', 2, N'2013', N'PROCUREMENT OF NEONATAL VENTILATOR,IP,SP,RW,CENTRALIZED COMPRESSOR')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/UNDP/159/2013', 2, N'2013', N'PROCUREMENT OF AUTOMATED CELL COUNTER')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/UNDP/160/2013', 2, N'2013', N'PROCUREMENT OF CCU EQUIPMENTS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/UNDP/161/2013', 2, N'2013', N'PROCUREMENT OF DENGUE SARVEILLANCE EQUIPMENT')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/UNDP/162/2013', 2, N'2013', N'PROCUREMENT OF ADULT CCU')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/UNDP/163/2013', 2, N'2013', N'PROCUREMENT OF PICU')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/UNDP/164/2013', 2, N'2013', N'PROCUREMENT OF SNCU EQUIPMENTS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/UNDP/166/2013', 2, N'2013', N'PROCUREMENT OF BSU EQUIPMENT,CENTRIFUGE,MICROSCOPE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/UNDP/167/2013', 2, N'2013', N'RTI/STI/ICTC SERVICES,REFRIGETOR')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/BIN/168/2013', 2, N'2013', N'PROCUREMENT OF EQUIPMENT FOR BIN(BANGUR INSTITUTE OF NEOROLOGY)')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/REFR/169/2013', 2, N'2013', N'PROCUREMENT OF REFRIGERETOR')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/EMDrelease/388/2013', 2, N'2013', N'EMD RELEASE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Marker Pens/395/2013', 2, N'2013', N'PROCUREMENT OF MARKER PENS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Tour/Procurement/421/13', 2, N'2013', N'OFFICIAL TOUR (PROCUREMENT SECTION)')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/FUR/PROC/422/13', 2, N'2013', N'PROCUREMENT OF FURNITURE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Radiography/PROC/460/13', 2, N'2013', N'PROCUREMENT OF DIGITAL RADIOGRAPHY')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/HDSNPH/Proc/505/14', 2, N'2014', N'PROCUREMENT OF HAEMO DIALYSIS MACHINES FOR SAMBHUNATH PANDIT HOSPITAL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/X-ray/Burdwan/Proc/506/14', 2, N'2014', N'PROCUREMENT OF X-RAY MACHINE FOR BURDWAN')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Dialysis/IPGME&R/Proc/508/14', 2, N'2014', N'PROCUREMENT OF DIALYSIS MACHINE FOR IPGME&R')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Misc/NRS/PROC/509/14', 2, N'2014', N'NRS PURCHASE ORDER AND MISC.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Bicycle/PROC/510/14', 2, N'2014', N'PROCUREMENT OF BICYCLE FOR ASHA''S FOR FY 13-14')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Breakdown/NRS+R.G.KAR+BURDWAN MCH/PROC/511/14', 2, N'2014', N'COMPLAINT MANAGENT FILE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Hosp.Equip/513/14', 2, N'2014', N'NEW CCU PROJECT FOR THE YEAR OF 2013-14')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/MR BANGUR/Pulsegen/Proc/514/14', 2, N'2014', N'PROCUREMENT OF PULSE GENERATOR FOR M.R.BANGUR HOSPITAL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/ESTIMATE/JAL/531/14', 2, N'2014', N'ROUGH COST ESTIMATE FOR DEVELOPMENT OF SUBSTATION BUILDING AT JALPAIGURI DH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/UNDP/534/2014', 2, N'2014', N'PROCUREMENT OF SNCU EQUIPMENTS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Proc/UNDP/Angio/535/2014', 2, N'2014', N'PROCUREMENT OF CINE ANGIOGRAPHY MACHINE OF GANDHI MEMORIAL HOSPITAL,KALYANI')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/KORES Pen/540/14', 2, N'2014', N'PROCUREMENT OF MARKER PENS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/Cooler/570/14', 2, N'2014', N'PROCUREMENT OF WALK-IN-COOLER')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/CT Scan/Payment/574/14', 2, N'2014', N'CT SCAN PAYMENT FILE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/MRI/Payment/581/14', 2, N'2014', N'MRI PAYMENT FILE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/3MCH/MBL/585/14', 2, N'2014', N'CONTRACT WITH MBL FOR CONTRUCTION OF BALANCE WORK OF 3 MCH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/IFA Cap./586/14', 2, N'2014', N'PAYMENT FILE FOR IFA CAPSULE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/Carestream/Court/587/14', 2, N'2014', N'CARESTREAM COURT CASE FILE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Proc/Allengers/Court/588/14', 2, N'2014', N'ALLENGERS COURT CASE FILE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/Payment/Equip/589/14', 2, N'2014', N'PAYMENT RELATED WITH DIFFERENT EQUIPMENT OF SNCUs/SNSUs/FBNC')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/Dialysis-Payment/590/14', 2, N'2014', N'PAYMENT FILE OF 5 BEDDED DIALYSIS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/CMC Equip/591/14', 2, N'2014', N'CMC FOR NEONATAL CARE EQUIPMENTS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/Photocopy machn./592/14', 2, N'2014', N'PHOTOCOPY MACHINE FOR 2ND FLOOR')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/FBNC/594/14', 2, N'2014', N'FBNC MONITORNING & GENERAL CORRESPONDING')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/OXY.Pipeline/596/14', 2, N'2014', N'QUALITY CERTIFICATION FOR OXYGEN PIPELINE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/HighEndGen.Corres/602/14', 2, N'2014', N'HIGH END GENERAL COMMUNICATION FILE/ CORRESPONDANCE FILE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/DEC Tab/604/14', 2, N'2014', N'PROCUREMENT OF DEC TABLET FINANCIAL YEAR 2014-15')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/SNCU Equip/606/14', 2, N'2014', N'PROCUREMENT OF SNCU EQUIPMENTS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/Equip/ARSH/School/607/14', 2, N'2014', N'PROCUREMENT OF EQUIPMENTS FOR ARSH/SCHOOLHEALTH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC-AntiKala-azarDrugs/616/14', 2, N'2014', N'PROCUREMENT OF ANTIKALAAZER MEDICINE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC-AntiMalariaDrugs/617/14', 2, N'2014', N'PROCUREMENT OF ANTIMALARIAL DRUGS FY 2014-15')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/CPAP/UNOPS/621/14', 2, N'2014', N'PROCUREMENT OF C-PAP THROUGH UNDP')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/RW&PTX/UNOPS/622/14', 2, N'2014', N'PROCUREMENT OF RW & PTX THROUGH UNOPS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/BG/Equip Supply/624/14', 2, N'2014', N'BANK GUARANTEE TO THE SUPPLIER FOR HIGH END EQUIPMENTS')
GO
print 'Processed 400 total records'
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Proc/Mammography/SagoreDutta/620/14', 2, N'2014', N'PROCUREMENT OF MAMMOGRAPHY MACHINE OF COLLEGE OF MADICINE & SAGORE DUTTA HOSPITAL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/SNCU Equip/X-Ray & CR/627/14', 2, N'2014', N'PROCUREMENT OF SNCU EQUIPMENTS X-RAY MACHINES WITH COMPUTERISED RADIOGRAPHY SYSTEM')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/SNCU Equip/Ultrasound/628/14', 2, N'2014', N'SNCU EQUIPMENTS NEONATAL ULTRASOUND WITH MULTI MODALITY PROBE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Proc/CCU Equip/NPCDCS/631/14', 2, N'2014', N'PROCUREMENT OF CCU EQUIPMENTS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Proc/CCU Equip/NVBDCP/632/14', 2, N'2014', N'PROCUREMENT OF CCU EQUIPMENTS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Proc/CCU Equip/MERT/632/14', 2, N'2014', N'PROCUREMENT OF CCU EQUIPMENTS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PPROC/SNCU/MultichannelMonitor/634/14', 2, N'2014', N'SNCU EQUIPMENTS NMULTICHANNEL MONITOR FOR SNCU,NICU & PHOTOTHERAPY UNITS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/SNCU/ABG/Semi-Auto/635/14', 2, N'2014', N'SNCU EQUIPMENTS ABG MACHINE, SEMIAUTOMATED BIOCHEMISTRY ANALYZER AND ELECTROLYTE ANALYSER')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/SMS Pack/637/14', 2, N'2014', N'SMS PACK FOR WBMSCL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/Blood Bank/639/14', 2, N'2014', N'PROCUREMENT OF BLOOD BANK EQUIPMENT')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/Medicine thru.MSC/640/14', 2, N'2014', N'REPORT ON PROCUREMENT OF MACHINE THROUGH WBMSCL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Proc/Labour Table/609/14', 2, N'2014', N'PROCUREMENT OF 1053  LABOUR TABLE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PreCar/UNDP/651/2014', 2, N'2014', N'PROCUREMENT OF PAEDIATRIC CARDIOLOGY EQUIPMENT FOR IPGME&R')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Proc/X-ray/mmc/652/2014', 2, N'2014', N'PROCUREMENT OF X-RAY MACHINE FOR MALDA MCH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Proc/X-ray& usg RG KAR/653/2014', 2, N'2014', N'PROCUREMENT OF X-RAY MACHINE & HIGHEND COLOR DOPPLER USG MACHINE FOR RG KAR MCH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Add Esti/Dar-Kalimang/655/2014', 2, N'2014', N'ADDITIONAL ESTIMATE FOR POWER AUGMENTION AT DARJEELING / KALIMPONG SDH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/UNDP/USG Machine/REQ-28/656/14', 2, N'2014', N'PROCUREMENT OF USG MACHINE WITH COLOUR DOPPLER FOR WALSH SDH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PeadiatricNephology/MCH/657/14', 2, N'2014', N'PROCUREMENT OF EQUIPMENTS OF PEADIATRIC NEPHROLOGY AT MCH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC-IUCD&PPIUCD/659/14', 2, N'2014', N'PROCUREMENT OF FAMILY PLANING EQUIPMENT(IUCD KIT & PPIUCD FORCEPS)')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/MED.GAS.PIPELINE/660/14', 2, N'2014', N'MEDICAL GAS PIPELINE SYSTEM')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/Utlstn.of Fund/NBDD/661/14', 2, N'2014', N'UTILISATION OF FUND RECEIVED FROM NORTH BENGAL DEVELOPMENT DEPARTMENT')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/FBNC/-Equip/662/14', 2, N'2014', N'PROCUREMENT OF DIFFERENT EQUIPMENT FOR MANAGEMENT OF FBNC')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/Agrmt/AGFA/663/14', 2, N'2014', N'AGREEMENT WITH AGFA HEALTHCARE INDIA PVT. LTD.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/RW/2014/671/14', 2, N'2014', N'PROCUREMENT OF RADIENT WARMER WITH BASSINET')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/IP/2014/672/14', 2, N'2014', N'PROCUREMENT OF INFUSION PUMP')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/PO/2014/673/14', 2, N'2014', N'PROCUREMENT OF PULSE OXYMETER')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/SP/2014/674/14', 2, N'2014', N'PROCUREMENT OF SYRINGE PUMP')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/PTX/2014/675/14', 2, N'2014', N'PROCUREMENT OF PHOTOTHERAPY')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/Skill Lab/2014/658/14', 2, N'2014', N'PROCUREMENT OF EQUIPMENT FOR SKILL LAB IN WEST BENGAL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/Equip/GandhiHospital/2014/676/14', 2, N'2014', N'PROCUREMENT OF HEART LUNG MACHINE ,HEATER COOLER UNIT')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSCL/ID/680/14', 2, N'2014', N'IDENTITY CARD')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/DG Set/695/14', 2, N'2014', N'PROCUREMENT OF DG SET')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/Estimate Fair Price Diagnte.Serve/701/14', 2, N'2014', N'SANCTION OF ESTIMATE FOR PREPARATION OF SITE FOR FAIR PRICE DIGNOSTIC SERVICES')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/HighEndDiag.Equip/site/706/14', 2, N'2014', N'SITE PREPARATION FOR HIGH END DIAGNOSTIC EQUIPMENTS & DIALYSIS SERVICES')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/RTI/708/14', 2, N'2014', N'PROCUREMENT OF RTI APPLICATION')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Adv.Pub/713/14', 2, N'2014', N'PUBLICATION OF ADVERTISEMENT OF WBMSCL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/C-ARM OT TABLE/719/REQ-30/14', 2, N'2014', N'PROCUREMENT OF C-ARM COMPATIBLE OT TABLE REQ-30')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/GASPIPELINE/731/14', 2, N'2014', N'MEDICAL GAS PIPELINE SYSTEM IN SECONDARY TIES HOSPITALS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/DR Payment/732/14', 2, N'2014', N'DR PAYMENT')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC-MANNEQUINS/733/14', 2, N'2014', N'PROCUREMENT OF MANNEQUINS FOR SKILL LAB')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/DEC-Payment/735/14', 2, N'2014', N'PAYMENT OF DEC TABLETS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/highend/Jalpaiguri and Gangarampur/736/14', 2, N'2014', N'Civil and Electrical works for Jalpaiguri DH & Gangarampur DH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/highend/Bishnupur DH/737/14', 2, N'2014', N'ELECTRICAL WORKS AT BISHUPUR DH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/highend/Asansol DH/738/14', 2, N'2014', N'ADDITIONAL ESTIMATE FOR ASANSOL DH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/highend/Nadia DH/739/14', 2, N'2014', N'ESTIMATE FOR CIVIL WORKS AT NADIA DH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/highend/DebenMahato and Arambagh SDH/740/14', 2, N'2014', N'ESTIMATE FOR DEBEN MAHATO DH AND ARAMBAGH SDH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AGMTourFile/741/14', 2, N'2014', N'AGM TOUR FILE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/Payment dialysis unit/742/14', 2, N'2014', N'20% payment to be added dialysis unit.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/Anti Matarial Drugs/617/14/754', 2, N'2014', N'Payment of TAB.ACT (Adult)-(sp+Artesunate)')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/-cheque print software/769/14', 2, N'2014', N'Cheque print software')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/CCU & HDU/UNDP/Req-31/779/14', 2, N'2014', N'Procurement of CCU & HDU equipment under 13 FC')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/CCU/UNDP/Req-32/780/14', 2, N'2014', N'Procurement of CCU equipment under NPCDCS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/Logtic.supt/Trng.Mgt./786/14', 2, N'2014', N'Logistic support for workshop/tranning management')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/2014/802', 2, N'2014', N'Approv of medical equiments and clarification of design besis')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/-Hemoglobin/805/14', 2, N'2014', N'Procurement of hemoglobin colour scale with strip and refil kit')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC-NSSK Mannequirs/806/14', 2, N'2014', N'Procurement of NSSK Mannequirs')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC-Tab ACT/807/14', 2, N'2014', N'Procurement of Tab.ACT (Adult) SP+ Artesunate')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Com.Proc/808/14', 2, N'2014', N'Computer Procurement')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Pediatric vent/809/14', 2, N'2014', N'Pediatric ventilator for NRR medical college')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/-IODISED KIT/812/14', 2, N'2014', N'Procurement of iodised salt testing kit')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Equip-BRGF/816/14', 2, N'2014', N'Fund of equiments for BRGF Hospital')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/NBMCH-XRAY/817/14', 2, N'2014', N'Repair and renovation of existing Grage Block for installation DR at NBMCH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Darjeeling DH-overhead Tank/818/14', 2, N'2014', N'Estimate for construction of over head tank at Darjeeling DH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/819/14', 2, N'2014', N'BRGF')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/C-PAP/UNDP/822/14', 2, N'2014', N'Procurement of C-PAP machine for Howrah DH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/BBES/826/14', 2, N'2014', N'Comprehensive maintanance contract of Blood bank Equipments')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/TTE/2015/832', 2, N'2015', N'Procurement of TTE probe in CARDIO THORACICOT at IPGME & R')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/VENTILATOR/NRS/835/2015', 2, N'2015', N'Procurement of ventilator for NRS medical college and hospital')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/DEC TAB/837/2015', 2, N'2015', N'Procurement of DEC Tablet')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/MUAC TAPE/838/2015', 2, N'2015', N'Procurement of MUAC TAPE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/CCU EQUIP/842/15', 2, N'2015', N'Procurement of CCU Equipment under NVBDCP')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/PPP MONITORING/844/15', 2, N'2015', N'PPP MONITORING')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/PROJECTOR/845/15', 2, N'2015', N'Procurement of PROJECTOR')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/X-RAY/852/15', 2, N'2015', N'Procurement of x ray machine for CCUS and Burdwan District')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Agreement/858/15', 2, N'2015', N'Agreement of Blood bank equipment')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/X-RAY/payment/859/15', 2, N'2015', N'Payment file X-RAY machine for CCUS Skanray Technologies Pvt.Ltd')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Blood bank/payment/860/15', 2, N'2015', N'Payment file Blood bank equipments')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/UNDP/870/15', 2, N'2015', N'Procurements of medical equipments for Bankura NCH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/VENTILATOR/NRS/872/2015', 2, N'2015', N'Procurements of ventilation for NRC medical college and hospital')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/CCU & HDU/873/15', 2, N'2015', N'Procurements of CCU & HDU equipments')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/DEC-TAB/874/15', 2, N'2015', N'Implementation of board Discissions DEC Tablet')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/Conslt.Firm/875/15', 2, N'2015', N'Implementation of board Discissions Engagement ofconsultant firm for BRGF hospital')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/Transc.Advisor/876/15', 2, N'2015', N'Implementation of board Discissions Engagement of Transaction Advisor for BRGF hospital')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/UNDP/REQ-33/877/15', 2, N'2015', N'Procurement of equip Bankura sammilani medical college and hospital (C-ARR,C-ARN OT TABLE+PHA CO machine)')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Highend/status/880/15', 2, N'2015', N'Status report of highland Diagnostic and dialysis services')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/Laptop/Sch.Hlth/881/15', 2, N'2015', N'Procurement of Laptop for school health')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/Router/887/15', 2, N'2015', N'Procurement of router')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/coolers/889/15', 2, N'2015', N'Procurement of walk in coolers')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Payment/Advocate/894/15', 2, N'2015', N'Payment of Advocate for court case')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/Carestream/Court/896/15', 2, N'2015', N'CARESTREAM COURT CASE -BLACK LISTING')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/CARESTREAM/COURT/MONEY SUIT/897/15', 2, N'2015', N'CARESTREAM COURT CASE -MONEY SUIT-MS NO 104 OF 2015')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/PICU/EQUIP/898/15', 2, N'2015', N'PROCUREMENT OF PICE EQUIPMENT')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/UNOPS/PROC/DFA/900/15', 2, N'2015', N'PROCUREMENT OF DISITAL FUNDUS ANGEOGRAPHY FOR SN PANDIT')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/DEC TAB/837/2015/949', 2, N'2015', N'PAYMENT OF DEC TABLET')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/USG CLINICS/2015/981', 2, N'2015', N'MAPPING OF USG CLINICS AND IMPLEMENTATION OF PCPNDT ACT IN WESTBENDAL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/C-PAP/962/15', 2, N'2015', N'PROCUREMENT OF C-PAP FOR HOWRAH DH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/C-ARM & C-ARM OT TABLE/968/15', 2, N'2015', N'PROCUREMENT OF C-ARM & C-ARM OT TABLE FOR MCH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/CHILD HEALTH/969/15', 2, N'2015', N'PROCUREMENT OF CHILD HEALTH EQUIPMENT')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/COMP.MGMT.HIGHEND/986/15', 2, N'2015', N'COMPLAIN MANAGENT OF HIGHEND EQUIPMENTS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROC/NPPCD/989/15', 2, N'2015', N'NPPCD EQUIPMENTS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/C-ARM/991/15', 2, N'2015', N'RELOCATION OF C-ARM MACHINE')
GO
print 'Processed 500 total records'
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/DIALYSIS & RO/993/15', 2, N'2015', N'PROCUREMENT OF DIALYSIS M/C FOR BANKURA SAMMILANI MCH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/CSS suppl/18/2011', 6, N'2011', N'CHITTARANJAN SEVA SADAN')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Med.Fac/25/11(Pt-II)', 6, N'2011', N'ESTABLISHMENT OF MEDICAL FACILITIES AT 11 BACKWARD DISTRICT IN WEST BENGAL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Generator Malda/26/14', 6, N'2011', N'SUPPLY OF GENERATOR AT MALDA DISTRICT HOSPITAL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Bandipur Wall/33/11', 6, N'2011', N'CONSTRUCTION OF BOUNDARY WALL AT BANDIPUR BPHC , NORTH 24 PARGANAS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Truma Centre Haldia/45/12/2', 6, N'2012', N'TRUMA CENTRE AT HALDIA')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Off.Bldng/48/12', 6, N'2012', N'CONTRUCTION OF MULTISTORIED OFFICE BUILDING AT SWASTHA BHAWAN COMPLEX')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Drug Laboratory/50/12', 6, N'2012', N'DRUG LABORATORY AT SALT LAKE SECTOR-III,BLOCK-1B')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Cons.Med.Collg./60/12', 6, N'2012', N'CONTRUCTION 3 MCH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Eng-BRGF/61/12', 6, N'2012', N'BRGF')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/WBSRDA/2E-12/724/2012', 6, N'2012', N'')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/HFW-GNM/67/12', 6, N'2012', N'CONTRUCTION OF 8 NOS. GNM SCHOLL UNDER GOVT.W.B')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/34 Tertiary Hosp.BRGF/74/12', 6, N'2012', N'34 TERTIARY HEALTHCARE HOSPITAL UNDER BRGF')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF Phase-I/76/12', 6, N'2012', N'PROPOSED SUPERSPECIALITY HOSPITAL IN WB BY BRGF PHASE-I(13NOS)')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/C-ARM/Howrah/994/15', 2, N'2015', N'PROCUREMENT OF C-ARM FOR HOWRAH DH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/Mayo-Basement2nd,3rd,4th Floor/77/12', 6, N'2012', N'REPAIR , RENOVATION & FACE LIFTING AND ELECTRICAL WORK AND ELECTRICAL WORK AT 2ND FLOOR,3RD FLOOR,4TH FLOOR')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/E.I at SagarDutta/80/12', 6, N'2012', N'CONTRUCTION OF MEDICAL COLLEGE AT SAGAR DUTTA HOSPITAL-EI&OTHER FACILITIES')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/WBNHP-PMGSY/81/12', 6, N'2012', N'TIE UP WITH WBNHP & PMGSY AND WBMSC LTD')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF-MAINTANING COM/82/12', 6, N'2012', N'HIGH LEVEL MONITORING COMMITTEE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/CONST-STORE AT SILIGURI/87/12', 6, N'2012', N'CONSTRACTION OF REGIONAL FAMILY WELFARE STORE & REGIONAL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/CONS-STORE AT SILIGURI/87/12', 6, N'2012', N'CONSTRACTION OF REGIONAL FAMILY WELFARE STORE  & REGIONAL VACAINES STORE AT SILIGURI')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/DRUG LABORATORY/50/12/PT.2', 6, N'2012', N'DRUG LABORATORY AT SALTLAKE SECTOR -3,BLOCK 1B,PLOT NO 200/1A')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/MEETING/95/12', 6, N'2012', N'APPROVAL COMMITTEE TO THE LEAD CONSULTANTS FOR BRGF PROJECT')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/NRHM/LADY DUFF-ERINE/96/12', 6, N'2012', N'SPECIAL REPAIR WORKS AND PROVISION OF KITCHEN TO THE QTR.D 30 TO 32 IN THE PRIMISES OF THE LADY DUFFERINE VICTORIA HOSPITAL, KOLKATA')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/BOARD & BOUNDRY WALL/98/12', 6, N'2012', N'DISPLAY BOARD & BOUNDRY WALL AT BRGF PROJECT')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/DDF CONSULTANTS/100/12', 6, N'2012', N'LEAD CONSULTANCY SERVICES FOR BUILDING TERTIARY HEALTH CARE HOSPITAL IN W.B USING BRGF')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/DDF PAYMENT/101/12    (DDF PAYMENT)', 6, N'2012', N'PROPOSED SUPERSPECIALITY HOSPITAL IN 11 BACKWORD DISTRICT OF W.B')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/CES PAYMENT/102/12       (CES PAYMENT)', 6, N'2012', N'PROPOSED SUPERSPECIALITY HOSPITAL(34NOS) IN 11 BACKWORD DISTRICT OF W.B')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/COMPLAINTS/104/12    (MISCELLANEOUS : COMPLAINTS)', 6, N'2012', N'PROPOSED SUPERSPECIALITY HOSPITAL IN 11 BACKWORD DISTRICT OF W.B')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/GEN CORRES/CES/103/12    (CES)', 6, N'2012', N'PROPOSED SUPERSPECIALITY HOSPITAL IN 11 BACKWORD DISTRICT OF W.B')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/LAND RECORDS/105/12    (LAND RECORDS)', 6, N'2012', N'PROPOSED SUPERSPECIALITY HOSPITAL IN 11 BACKWORD DISTRICT OF W.B')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/MCH/DESIGN/106/12', 6, N'2012', N'MCH HUB AT CALCUTTA MEDICAL COLLEGE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PWD/AAES/107/12', 6, N'2012', N'AAES ORDER FILE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PWD/JNM SCHOOL/108/12', 6, N'2012', N'COST ESTIMATE FOR CONSTRUCTION OF JNM SCHOOL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PWD/MCH HUB/115/12', 6, N'2012', N'MCH HUB')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/QPR/117/13', 6, N'2013', N'QUARTERLY PROGRESS REPORT FROM THE EXECUTIVE AGENCIES')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/NRHM/DARJEELING/118/13', 6, N'2013', N'CIVIL WORKS FOR SETTING UP OF SNCU AT NBMCH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF Phase-I/119/13', 6, N'2013', N'BRGF(1ST PHASE) REST-7')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/NRHM/MALDA/122/13', 6, N'2013', N'WORK UNDER NRHM')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/NRHM/MURSHIDABAD/123/13', 6, N'2013', N'WORK UNDER NRHM')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BLOOD BANK/125/13', 6, N'2013', N'BLOOD BANK & MORTUARY')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/FUR.PLL/126/3', 6, N'2013', N'FURNITURE AT 3 MEDICAL COLLEGE(PUNJ LLOYD LTD)')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/FENCING/BALURGHAT/127/13', 6, N'2013', N'FENCING WALL AND DISPLAY BORD(PORT FILE)')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/NRHM/BIRBHUM/128/13', 6, N'2013', N'WORK UNDER NRHM FOR VARIOUS HOSP UNDER BIRBHUM DIST.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/TIME EXTN.PLL/134/13', 6, N'2013', N'TIME EXTENSION TO PLL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PRE-FAB SUB-CENTRE/138/13', 6, N'2013', N'PRE-FABRICATED SUBCENTRE 10 PLACES PASCHIM MEDINIPUR')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/MCH COMPLEX/EE/141/13', 6, N'2013', N'SUPERVISION AND EXECUTION OF MOTHER AND CHILE HUB COMPLEX')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BENFISH BUILDING/389/13', 6, N'2013', N'ELECTRICAL WORK AT BENFISH TOWER FOR THE OFFICE OF THE WBHRB')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/CONSULTANCY SERVIECE/NON-BRGF DIST/393/13', 6, N'2013', N'CONSULTANCY SERVIECE FOR PREPARATION OF DPR FORAUGMENTATION OF TERTIARY HELTH CARE INFRASTRUCTURE IN 4NOS.NO0N BRGF DISTRICT IN W.B')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/MBL/PAYMENT/394/13', 6, N'2013', N'PAYMENT FILE OF MACKINTOSH BURN LTD. FOR CONSTRUCTION OF OFFICE CUM GO DOWN MULTISTORIED BUILDING AT SWASTHYA BHAWAN COMPLEX')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/PROJ.SANCTION/396/13   (PART 1)', 6, N'2013', N'BRGF PROJECTS SANCTION PURULIA,ONDA,CHATNA.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/MCH/CANNING SDH/405/13', 6, N'2013', N'MOTHER AND CHILD HUB CANNING SUB DIVISIONAL HOSPITAL.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/MCH/BASIRHAT SDH/406/13', 6, N'2013', N'MOTHER AND CHILD HUB BASIRHAT SUB DIVISIONAL HOSPITAL.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/MCH/KRISHNANAGAR DH/407/13', 6, N'2013', N'MOTHER AND CHILD HUB  KRISHNANAGAR  DISTRICT HOSPITAL.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/MCH/MEDINIPUR MCH/408/13', 6, N'2013', N'MOTHER AND CHILD HUB MEDINIPUR MEDICAL COLLEGE AND HOSPITAL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/MCH/MAS/410/13', 6, N'2013', N'MOTHER AND CHILD HUB')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/PROJ-SANCTION/396/13   (PART -2)', 6, N'2013', N'BRGF PROJECTS SANCTION')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/LALGRAH/ANM SCHOOL/449/13', 6, N'2013', N'NURSING TRANNING SCHOOL LALGRAH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/MISE/PWD/13/453', 6, N'2013', N'MISE COMMUNICATION FILE(PWD)')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/TENDER COM/SPL/BRGF HOSP/455/13', 6, N'2013', N'TENDER COMMITTEE SPECIAL BRGF HOSPITAL AT PURULIA ONDA AND CHATNA')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/TENDER/462/13', 6, N'2013', N'CONSTRUCTION OF 14 TERTIARY CARE HOSPITALS IN BACKWARD DISTRICTS USING SPECIAL BRGF GRANT')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/NRHM/464/13', 6, N'2013', N'COLLABORATION WITH NRHM')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/NORTH BANGAL/507/14', 6, N'2014', N'CONSTRUCTION OF TERTIARY HEALTHCARE HOSPITAL AT ISLAMPUR  GANGANAGAR AND FALAKATA')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/COUNTER BG/533/14', 6, N'2014', N'COUNTER BANK GUARANTEE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/TENDER EVLUTN/536/14', 6, N'2014', N'EVALUATION OF TENDER IN COMMECTION WITH CONSTRUCTION OF TERTIARY HELTHCARE HOSPITAL UNDER BRGF.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/PROOF CONST/537/14', 6, N'2014', N'ENGAGEMENT OF PROOF CONSULTANT FOR 14 TERTIARY CARE HOSPITAL.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/3NEW MCH-CR/539/14', 6, N'2014', N'CONSTRUCTION OF 3 NEW MEDICAL COLLEGE HOSPITAL: REVIEW OF EXISTING CONTRACT')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/MCH/NILRATAN SANKAR MCH/542/14', 6, N'2014', N'MOTHER AND CHILD HUB AT NILRATAN SANKAR MEDICAL COLLEGE AND HOSPITAL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'BRGF/14-HOSP/TENDER/FIN/543/114', 6, N'2014', N'FINALISATION OF TRUNKEY TENDER FOR  14 HOSPITALS UNDER BRGF SPECIAL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/14 HOSP/PANSKURA/SP/546/14', 6, N'2014', N'PLANNIN, DESIGN AND CONSTRACTION OF 14 TERTIARY HEALTHCARE  HOSPITALS ALONG WITH SUPPLY OF MEDICAL EQUIPMENTS AN HOSPITAL FURNITURE(PACKAGE-73)')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/SNCU/BIRPARA/562/14', 6, N'2014', N'SNCU AT BIRPARA')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/F & M/PLL/563/14', 6, N'2014', N'ENGAGEMENT OF FOX & MANDAL FOR TURNKEY CONTRACT BETWEEN PILL & WBMSC')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/14 HOSP/L & T /566/14', 6, N'2014', N'TERTIARY HELTHCARE HOSPITAL PACKAGE -A AND PACKAGE -B LARSEN & JOUBRO LTD.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/14 HOSP/L & T /DRAWING/567/14', 6, N'2014', N'SUPER SPECIALITY HOSPITAL PACKAGE -A & C-L&T')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/SUB-STATION/571/14', 6, N'2014', N'SUB-STATION OF SWASTHYA BHAWAN')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/SERVER/572/14', 6, N'2014', N'SERVER ROOM OF SWASTHYA BHAWAN')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/ELEC/573/14', 6, N'2014', N'BRGF(ELECTRICAL)')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/TC/PLL/578/14', 6, N'2014', N'TERMINATION OF CONTRACT WITH M/S PLL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/HOUSING/584/14', 6, N'2014', N'RELEAX OF FUND TO HOUSING DEPT. FOR CONSTRUCTION OF HOSPITALS UNDER BRGF SPL.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/L&T/593/14', 6, N'2014', N'BRGF L&T')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/ELEC/597/14', 6, N'2014', N'ELECTRICAL WORK')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/FALAKATA/CONSTRUCTION/598/14', 6, N'2014', N'FALAKATA CONSTRUCTION')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/MOB.ADV./L&T/599/14', 6, N'2014', N'TERTIARY HELTHCARE HOSPITAL (14 NOS) MOBILISION ADVANCE & LABOUR LINCESES')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/LAND/14 TERTIARY HOSP/605/14', 6, N'2014', N'DOCUMENTS RELATED TO IDENTIFIED LAND OF 14- TERTIARY HELTHCARE HOSPITAL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/EI-MALDA/608/14', 6, N'2014', N'MALDA(ELEC)')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/EI-MURSHIDABAD/609/14', 6, N'2014', N'MURSIDABAD(ELEC)')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/MOM/L&T/BRGF/610/14', 6, N'2014', N'MINTUES OF MEETING WITH L&T FOR PACKAGE -A & C')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/GANGARAMPUR/CONSTRUCTION/611/14', 6, N'2014', N'TERTIARY HELTHCARE HOSPITAL AT GANGARAMPUR UNDER BRGF SCHEME')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/ISLAMPUR/CONSTRUCTION/612/14', 6, N'2014', N'TERTIARY HELTHCARE HOSPITAL AT ISLAMPUR UNDER BRGF SCHEME')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/OFFICE WORK/ELEC/613/14', 6, N'2014', N'MISE & OFFICE OF WBMSC REGARDING ELEC')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/TRUNKEY/AC/614/14', 6, N'2014', N'APPRAVAL COMMITTEE FOR CONSTRUCTION OF 14 NOS OF HOSPITALS UNDER BRGF SPECIAL ON TRUNKEY BASIS.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/CONSTN/2ND FLR OFF./615/14', 6, N'2014', N'CONSTRUCTION OF PARTITION WALL & DOORS, 6mm GLASS & ALUMINIUIM FRAME IN CONFARANCE HALL(2ND FLOOR) 0F WBMSCL OFFICE.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/DSGN & DWA/JAD.UNIV/618/14', 6, N'2014', N'TRANSMIT OF ABSTRUCT WALL DESIGN AND DRAWING TO CIVIL ENGG.DEPT JADAVPUR UNIV. AND RECIPT OF CHACKED DESIGN AND DRAWING FROM THEM.')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/MCH/MURSHIDABAD MCH/619/14', 6, N'2014', N'MOTHER AND CHILD HUB MURSHIDABAD MEDICAL COLLEGE AND HOSPITAL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/NEW SWASTHYA BHAWAN/620/14', 6, N'2014', N'ELECTRICAL WORK')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/14-HOSP/EMD/SP/625/14', 6, N'2014', N'RELESE OF EMD,14 HOSPITAL, SP')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/STATRY APRVL/14 TERTIARY HOSP/630/14', 6, N'2014', N'STATUTORY APPROVAL -14 TERTIARY HELTHCARE HOSPITAL AGENCY-L&T LTD & SPCL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/CNCRTE/MIXDSGN/14-TERTIARY HOSP/636/14', 6, N'2014', N'APPROVAL CONCRETE MIX DESIGN OF 14 TERTIARY HELTH CARE HOSPITAL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/MC HUB/641/14', 6, N'2014', N'MOTHER AND CHILD HUB-AREA STATEMENT')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/NON-BRGF HOSP/645/14', 6, N'2014', N'NON BRGF HOSPITAL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/PAYMTS TO GOVT DEPT/691/14', 6, N'2014', N'PAYMENT TO DIFFERENT GOVT. DEPT. GOVT. UNDER TAKING FOR CONSTRUCTION OF 14-TERTIARY HEALTHCARE HOSPITAL')
GO
print 'Processed 600 total records'
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/NON-BRGF/692/14', 6, N'2014', N'GEO TECHNICAL INVESTIGATION OF SOIL FOR 6 NOS NON BRGF HOSPITAL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/3-MCH/MBL/PAYMENT/694/14', 6, N'2014', N'PAYMENT-MBL-3 NEW MEDICAL COLLEGE AND HOSPITALS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/SP/705/14', 6, N'2014', N'BRGF SP')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/5 NEW MCH-DRR/709/14', 6, N'2014', N'5 NEW MEDICAL COLLEGE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AC-BRGF-TK/710/14', 6, N'2014', N'APPROVAL COMMITTEE 14 HOSPITAL UNDER BRGF TRUNKEY PROJECT')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/PAYMENT L&T/BALURGHAR/716/14', 6, N'2014', N'PAYMENT TO L&T FOR BALURGHAT')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/PAYMENT L&T/RAIGUNJ/717/14', 6, N'2014', N'PAYMENT TO L&T FOR RAIGUNJ')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/PAYMENT L&T/SURI/721/14', 6, N'2014', N'PAYMENT TO L&T FOR SURI')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/PAYMENT L&T/BARJONA/722/14', 6, N'2014', N'PAYMENT TO L&T FOR BARJONA')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/PAYMENT L&T/NAYAGRAM/723/14', 6, N'2014', N'PAYMENT TO L&T FOR NAYAGRAM')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/MCH/CALCUTTA NATIONAL MEDICAL COLLEGE & HOSPIAL/724/14', 6, N'2014', N'MOTHER AND CHILD HUB CALCUTTA NATIONAL MEDICAL COLLEGE AND HOSPITAL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF FUR & EQUIP/PH1/730/14', 6, N'2014', N'PROCUREMENT OF FURNITURE AND EQUIPMENT FOR PHASE 1 BRGF HOSPITAL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/CSS/734/14', 6, N'2014', N'PROPOSED AREA CONSTRUCTION OF CHITTARANJAN SEVA SADAN')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BNGH/743/14', 6, N'2014', N'BERHAMPORE NEW GENERAL HOSPITAL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/MID FAC/25/11   (PART 2)', 6, N'2011', N'ESTABLISHMENT OF MEDICAL FACILITIES AT 11 BACKWARD DISTRICT IN WEST BENGAL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BDGT ESTMTES/755/14', 6, N'2014', N'BUDGET ESTIMATES')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/PAYMENT L&T/JANGIPUR/762/14', 6, N'2014', N'PAYMENT TO L&T FOR JANGIPUR')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/VEHICLE/765/14', 6, N'2014', N'VEHICLE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROPSL BDGT.SPCH/771/14', 6, N'2014', N'PROPOSAL FOR BUDGET SPEECH FOR THE YEAR 2015-16')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/CLAIM/PLL/773/14', 6, N'2014', N'COMPATATION OF CLAIMS AGAINST M/S PUNJLLOYD LTD. AFTER TERMINATION')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PWD WORKS/775/14', 6, N'2014', N'WBMSC PWD WORKS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/GOVT.ORDER/777/14', 6, N'2014', N'GOVT. ORDER')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/CS/781/14', 6, N'2014', N'REVIEW OF CHIEF SECRETARY')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/M-MCH/MBL-CONSULTANCY/783/14', 6, N'2014', N'COMPLETION OF UNFINISHED WORK FOR 3 NEW MEDICAL COLLEGE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/SNCU/784/14', 6, N'2014', N'SNCU')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/PAYMENT L&T /JHARGRAM/785/14', 6, N'2014', N'PAYMENT TO L&T FOR JHARGRAM')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/NON-BRGF/6-HOSP/TENDER/FIN/788/14', 6, N'2014', N'CONSTRUCTION OF HOSPITALS IN NON BRGF DISTRICTS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/SNCU WARD/BN BOSE/BARKPR/790/14', 6, N'2014', N'CONSTRUCTION OF SNCU WARD AT 2ND FLR OF MAIN HOSPITAL BUILDING OF DR. BN BOSE SD HOSPITAL AT BARRACKPUR')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/SNCU WARD/KAKDIP SDH/791/14', 6, N'2014', N'CONSTRUCTION OF SNCU WARD  AT KAKDIP SDH,SOUTH 24 PGS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/PAYMENT L&T/CHANCHOL/793/14', 6, N'2014', N'PAYMENT TO DARSEN & TAUBRO LTD FOR CHANCHOL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/FALAKATA/794/14', 6, N'2014', N'CONSTRUCTION OF TERTIARY HELTHCARE HOSPITAL AT FALAKATA UNDER BRGF')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/PAYMENT/SPCL/GOPI/795/14', 6, N'2014', N'PAYMENT TO SPCL FOR GOPIBALLAVPUR')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/PAYMENT/SPCL/GHATAL/797/14', 6, N'2014', N'PAYMENT TO SPCL FOR GHATAL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/ARBIT/PLL/798/14', 6, N'2014', N'ARBITRATION 3 NEW MEDICAL COLLEGES')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/CSR/803/14', 6, N'2014', N'CORPORATE SOCIAL RESPONSIBILITY')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/FURN-EQUIP/810/14', 6, N'2014', N'FURNITURE AND EQUIPMENTS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/PAYMENT SPCL/PANSKURA/811/14', 6, N'2014', N'PAYMENT TO SPCL FOR PANSKURA')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/CSR/820/14', 6, N'2014', N'CORPORATE SOCIAL RESPONSIBILITY')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/PAYMENT SPCL/PANSKURA/821/14', 6, N'2014', N'PAYMENT TO SPCL FOR PANSKURA PACKAGE -B')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PLL/1BG/825/14', 6, N'2014', N'BANK GUARANTEE/PLL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/PAYMENT L&T/BARUIPUR/829/14', 6, N'2014', N'PAYMENT TO L&T FOR BARUIPUR')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/PROG.ASSU/834/15', 6, N'2015', N'PROGRESS IN IMPLEMENTATION OF ASSURANCE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/COURT/PLL/836/15', 6, N'2015', N'COURT MATTERS-M/S PLL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/5NEW MEDICAL COLLEGE/839/15', 6, N'2015', N'5 NEW MEDICAL COLLEGE')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/HL MEETING/BRGF SPL/840/15', 6, N'2015', N'HIGH LEVEL MEETING INCONNECTION WIH 21 MULTY SUPER SPECIALITY HOSPIAL UNDER BRGF SPECIAL')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/MISE/BRGF/851/15', 6, N'2015', N'MISCELLANEOUS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/MAINTENANCE/854/15', 6, N'2015', N'MAINTANANCE SUPRE SPECIALITY HOSPITALS/MEDICAL COLLEGE AND HOSPITALS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/PAYMENT SPCL/JALPAIGURI/866/15', 6, N'2015', N'PAYMENT TO SPCL FOR JALPAIGURI')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/PAYMENT SPCL/EGRA/878/15', 6, N'2015', N'PAYMENT TO SPCL FOR EGRA')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/20TH BOD/884/15', 6, N'2015', N'PROPOSED AGENDA ITEMS FOR 20TH MEETING OF BOARD OF DIRECTORS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF/DELAY-EXTN/892/15', 6, N'2015', N'DELAY OF DRAWING OF CONSTRUCTION')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BIJOYGARH HOSP/895/15', 6, N'2015', N'CONSTRUCTION OF MULTISTORIED BUILDING IN BIJORGARH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/CAR PARKING PLAN/901/15', 6, N'2015', N'CARPARKING PLAN AT SWASTHYA BHAWAN CAMPUS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/BRGF-MED EQUIP/908/15', 6, N'2015', N'PAYMENT FOR REPROCUREMENT MEDICAL EQUIPMENT')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/AIIMS/NADIA/946/15', 6, N'2015', N'SETTING UP FOR AN AIIMS OF KALYANI,NADIA')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/ELEC.MAINTENANCE/972/15', 6, N'2015', N'ELECTRICAL MAINTENANCE OF 3 MCH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/CLAIM/HOSPITAL MANAGE/976/15', 6, N'2015', N'CLAIM OF HOSPITECH MANAGEMENT SONSULTANTS PVT.LTD')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/NON BRGF/DEMOL/WLASH/SDH/982/15', 6, N'2015', N'BUILDING DEMALITION OF AT WALSH HOSP.(SRIRAMPORE)')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/OXYGEN MINI MANI FOLD/CCU & HDU/987/15', 6, N'2015', N'ESTABLISHMENT OF OXIGEN MINI MANIFOLD AT CCU AND HDU IN DHS AND SDHS')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/NON BRGF/DEMOL/KALNA SDH/990/15', 6, N'2015', N'PERMITION FOR DEMELITION OF EXISTING AND STRUCTURES IN PRIMISSES OF KALNA SDH')
INSERT [dbo].[xx_Sheet1] ([FILE_NO], [SECTION], [YEAR_OF_OPENING], [SUBJECT_IN_GIST]) VALUES (N'WBMSC/MCH HUB/DESIGN AND DRAWINGS/992/15', 6, N'2015', N'MOTHER AND CHILD HUB-DRAWINGS')
/****** Object:  Table [dbo].[xx_FileMaster]    Script Date: 09/11/2015 15:40:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[xx_FileMaster](
	[FileID] [bigint] IDENTITY(1,1) NOT NULL,
	[DeptID] [bigint] NOT NULL,
	[FileNum] [varchar](250) NOT NULL,
	[SubMatter] [varchar](500) NULL,
	[FileOpenYr] [varchar](6) NOT NULL,
	[InitialOfficer] [varchar](200) NULL,
	[PhoneNo] [varchar](20) NULL,
	[GenFileNo] [varchar](128) NULL,
	[FileStatus] [varchar](10) NULL,
	[FileFollowUp] [char](1) NOT NULL,
	[Remarks] [varchar](500) NULL,
	[CreatedDt] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[LastModDt] [datetime] NULL,
	[LastModBy] [varchar](50) NULL,
 CONSTRAINT [PK__xx_FileM__6F0F989F5FB337D6] PRIMARY KEY CLUSTERED 
(
	[FileID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[xx_FileMaster] ON
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (1, 1, N'WBMSC/ACCT/PTAX/01/11', NULL, N'2011', NULL, NULL, N'WBMSC/1/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (2, 1, N'WBMSC/ACCT/BID/02/11', NULL, N'2011', NULL, NULL, N'WBMSC/2/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (3, 1, N'WBMSC/ACCT/PAYMENT/03/11', NULL, N'2011', NULL, NULL, N'WBMSC/3/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (4, 1, N'WBMSC/ACCT/SALARY/04/11', NULL, N'2011', NULL, NULL, N'WBMSC/4/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (5, 1, N'WBMSC/ACCT/MISC.PAYMENT/05/11', NULL, N'2011', NULL, NULL, N'WBMSC/5/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (6, 1, N'WBMSC/ACCT/SOE/06/11', NULL, N'2011', NULL, NULL, N'WBMSC/6/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (7, 1, N'WBMSC/FUND-MAYO/07/11', NULL, N'2011', NULL, NULL, N'WBMSC/7/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (8, 1, N'WBMSC/FUND-PMC/08/11', NULL, N'2011', NULL, NULL, N'WBMSC/8/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (9, 6, N'WBMSC/MONITORING PMC/09/2011', NULL, N'2011', NULL, NULL, N'WBMSC/9/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'engg', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (10, 2, N'WBMSC/WAYBILL/10/2011', NULL, N'2011', NULL, NULL, N'WBMSC/10/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'procure', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (11, 1, N'WBMSC/FUND-MEDCN/11/2011', NULL, N'2011', NULL, NULL, N'WBMSC/11/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (12, 5, N'WBMSC/ACCT/BoardMeeting/12/2011', NULL, N'2011', NULL, NULL, N'WBMSC/12/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (13, 5, N'WBMSC/ACCT/Proc.Mang/13/2011', NULL, N'2011', NULL, NULL, N'WBMSC/13/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (14, 6, N'WBMSC/ACCT/Monitoring Services/14/2011', NULL, N'2011', NULL, NULL, N'WBMSC/14/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'engg', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (15, 5, N'WBMSC/PPP Policy/22/11', NULL, N'2011', NULL, NULL, N'WBMSC/15/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (16, 5, N'WBMSC/COM.Act/23/11', NULL, N'2011', NULL, NULL, N'WBMSC/16/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (17, 5, N'WBMSC/LS/Stat.Audit/24/11', NULL, N'2011', NULL, NULL, N'WBMSC/17/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (18, 5, N'WBMSC/Radio-Enh/24/11', NULL, N'2011', NULL, NULL, N'WBMSC/18/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (19, 5, N'WBMSC/Liq-Oxy/30/11', NULL, N'2011', NULL, NULL, N'WBMSC/19/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (20, 5, N'WBMSC/Hiring of space at IHFW/38/11', NULL, N'2011', NULL, NULL, N'WBMSC/20/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (21, 5, N'WBMSC/Mang Fees/3911', NULL, N'2011', NULL, NULL, N'WBMSC/21/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (22, 5, N'WBMSC/PLL/40/11', NULL, N'2011', NULL, NULL, N'WBMSC/22/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (23, 5, N'WBMSC/DSCA/41/11', NULL, N'2011', NULL, NULL, N'WBMSC/23/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (24, 5, N'WBMSC/PWD-Eng/42/11', NULL, N'2011', NULL, NULL, N'WBMSC/24/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (25, 5, N'WBMSC/ACCT/Space Hiring/43/11', NULL, N'2011', NULL, NULL, N'WBMSC/25/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (26, 5, N'WBMSC/CMOH-BANKURA/44/12', NULL, N'2012', NULL, NULL, N'WBMSC/26/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (27, 5, N'WBMSC/Truma Centre Haldia/45/12', NULL, N'2012', NULL, NULL, N'WBMSC/27/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (28, 5, N'WBMSC/PWD-Eng/42/11/2', NULL, N'2012', NULL, NULL, N'WBMSC/28/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (29, 5, N'WBMSC/PPP/SuperSpecialityHospital/49/12', NULL, N'2012', NULL, NULL, N'WBMSC/29/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (30, 5, N'WBMSCL/Transaction Advisor/59/12', NULL, N'2012', NULL, NULL, N'WBMSC/30/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (31, 5, N'WBMSC/Post-GM/75/12', NULL, N'2012', NULL, NULL, N'WBMSC/31/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (32, 5, N'WBMSC/BRGF-Monitoring Committee/82/12', NULL, N'2012', NULL, NULL, N'WBMSC/32/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (33, 5, N'WBMSC/BRGF-Complaint/83/12', NULL, N'2012', NULL, NULL, N'WBMSC/33/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (34, 5, N'WBMSC/MCH-Supervision/85/12', NULL, N'2012', NULL, NULL, N'WBMSC/34/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (35, 5, N'WBMSC/E-Training/101/12', NULL, N'2012', NULL, NULL, N'WBMSC/35/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (36, 5, N'WBMSC/PWD-Video Conference/110/12', NULL, N'2012', NULL, NULL, N'WBMSC/36/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (37, 5, N'WBMSC/Con.Matter/101/11', NULL, N'2011', NULL, NULL, N'WBMSC/37/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (38, 5, N'WBMSC/PPP Frame/102/11', NULL, N'2011', NULL, NULL, N'WBMSC/38/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (39, 5, N'WBMSC/UNOPS Correspondancy/111/12', NULL, N'2012', NULL, NULL, N'WBMSC/39/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (40, 5, N'WBMSC/JOB Distribution/116/12', NULL, N'2012', NULL, NULL, N'WBMSC/40/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (41, 5, N'WBMSC/Org-Per/121/13', NULL, N'2013', NULL, NULL, N'WBMSC/41/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (42, 5, N'WBMSC/Salary-Rev/130/13', NULL, N'2013', NULL, NULL, N'WBMSC/42/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (43, 5, N'WBMSC/Med.Colg Committee/132/13', NULL, N'2013', NULL, NULL, N'WBMSC/43/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (44, 5, N'WBMSC/Asmby.Qsn/135/13', NULL, N'2013', NULL, NULL, N'WBMSC/44/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (45, 5, N'WBMSC/3rd AGM/140/13', NULL, N'2013', NULL, NULL, N'WBMSC/45/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (46, 5, N'WBMSC/Recruitment/154/13', NULL, N'2013', NULL, NULL, N'WBMSC/46/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (47, 5, N'WBMSCL/IDPC/156/2013', NULL, N'2013', NULL, NULL, N'WBMSC/47/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (48, 5, N'WBMSCL/Org-confnl.Rpt/165/2013', NULL, N'2013', NULL, NULL, N'WBMSC/48/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (49, 5, N'WBMSCL/Enhance Fin Power/169/2013', NULL, N'2013', NULL, NULL, N'WBMSC/49/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (50, 5, N'WBMSC/13TH BOD/390/13', NULL, N'2013', NULL, NULL, N'WBMSC/50/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (51, 5, N'WBMSC/BRGF/NIT/391/13', NULL, N'2013', NULL, NULL, N'WBMSC/51/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (52, 5, N'WBMSC/CON/398/13', NULL, N'2013', NULL, NULL, N'WBMSC/52/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (53, 5, N'WBMSC/Org-Setup/Eng/399/13', NULL, N'2013', NULL, NULL, N'WBMSC/53/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (54, 5, N'WBMSC/meeting-PWD/400/13', NULL, N'2013', NULL, NULL, N'WBMSC/54/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (55, 5, N'WBMSC/meeting-SPB/401/13', NULL, N'2013', NULL, NULL, N'WBMSC/55/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (56, 5, N'WBMSC/BRGF Report/402/13', NULL, N'2013', NULL, NULL, N'WBMSC/56/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (57, 5, N'WBMSC/ProjectReport/403/13', NULL, N'2013', NULL, NULL, N'WBMSC/57/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (58, 5, N'WBMSC/Software Dev/409/13', NULL, N'2013', NULL, NULL, N'WBMSC/58/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (59, 5, N'WBMSC/3 NEW MCH-SPL.COM/413/13', NULL, N'2013', NULL, NULL, N'WBMSC/59/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (60, 5, N'WBMSC/Org-Per/414/13', NULL, N'2013', NULL, NULL, N'WBMSC/60/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (61, 5, N'WBMSC/Org-Per/415/13', NULL, N'2013', NULL, NULL, N'WBMSC/61/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (62, 5, N'WBMSC/Org-Per/416/13', NULL, N'2013', NULL, NULL, N'WBMSC/62/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (63, 5, N'WBMSC/Org-Per/417/13', NULL, N'2013', NULL, NULL, N'WBMSC/63/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (64, 5, N'WBMSC/Org-Per/418/13', NULL, N'2013', NULL, NULL, N'WBMSC/64/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (65, 5, N'WBMSC/Org-Per/419/13', NULL, N'2013', NULL, NULL, N'WBMSC/65/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (66, 5, N'WBMSC/Org-Per/423/13', NULL, N'2013', NULL, NULL, N'WBMSC/66/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (67, 5, N'WBMSC/Org-Per/424/13', NULL, N'2013', NULL, NULL, N'WBMSC/67/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (68, 5, N'WBMSC/Org-Per/427/13', NULL, N'2013', NULL, NULL, N'WBMSC/68/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (69, 5, N'WBMSC/Org-Per/431/13', NULL, N'2013', NULL, NULL, N'WBMSC/69/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (70, 5, N'WBMSC/Tour/MD/433/13', NULL, N'2013', NULL, NULL, N'WBMSC/70/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (71, 5, N'WBMSC/Law Firm/454/13', NULL, N'2013', NULL, NULL, N'WBMSC/71/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (72, 5, N'WBMSC/RECRUIT/CONSLT/544/14', NULL, N'2014', NULL, NULL, N'WBMSC/72/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (73, 5, N'WBMSC/Org.Per/545/14', NULL, N'2014', NULL, NULL, N'WBMSC/73/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (74, 5, N'WBMSC/Org.Per/561/14', NULL, N'2014', NULL, NULL, N'WBMSC/74/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (75, 5, N'WBMSC/PE-2014-MCC/564/14', NULL, N'2014', NULL, NULL, N'WBMSC/75/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (76, 5, N'WBMSC/16th BOD/565/14', NULL, N'2014', NULL, NULL, N'WBMSC/76/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (77, 5, N'WBMSC/Org.per/568/14', NULL, N'2014', NULL, NULL, N'WBMSC/77/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (78, 5, N'WBMSC/ORG-PER/569/14', NULL, N'2014', NULL, NULL, N'WBMSC/78/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (79, 5, N'WBMSC/ORG.PER/638/14', NULL, N'2014', NULL, NULL, N'WBMSC/79/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (80, 5, N'WBMSC/17TH BOD/642/14', NULL, N'2014', NULL, NULL, N'WBMSC/80/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (81, 5, N'WBMSC/Rectfctn of web/646/14', NULL, N'2014', NULL, NULL, N'WBMSC/81/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (82, 5, N'WBMSC/Audit-Committee/648/14', NULL, N'2014', NULL, NULL, N'WBMSC/82/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (83, 5, N'WBMSC/Org-Per/649/14', NULL, N'2014', NULL, NULL, N'WBMSC/83/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (84, 5, N'WBMSC/Org-Per/650/14', NULL, N'2014', NULL, NULL, N'WBMSC/84/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (85, 5, N'WBMSC/RTI/654/14', NULL, N'2014', NULL, NULL, N'WBMSC/85/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (86, 5, N'WBMSC/Org.Per/664/14', NULL, N'2014', NULL, NULL, N'WBMSC/86/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (87, 5, N'WBMSC/Org.Per/665/14', NULL, N'2014', NULL, NULL, N'WBMSC/87/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (88, 5, N'WBMSC/Org.Per/666/14', NULL, N'2014', NULL, NULL, N'WBMSC/88/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (89, 5, N'WBMSC/BRGF/DEMO/667/14', NULL, N'2014', NULL, NULL, N'WBMSC/89/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (90, 5, N'WBMSC/Org.Per/669/14', NULL, N'2014', NULL, NULL, N'WBMSC/90/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (91, 5, N'WBMSC/Org.Per/670/14', NULL, N'2014', NULL, NULL, N'WBMSC/91/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (92, 5, N'WBMSC/Org.Per/677/14', NULL, N'2014', NULL, NULL, N'WBMSC/92/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (93, 5, N'WBMSC/Org.Per/678/14', NULL, N'2014', NULL, NULL, N'WBMSC/93/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (94, 5, N'WBMSC/Org.Per/681/14', NULL, N'2014', NULL, NULL, N'WBMSC/94/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (95, 5, N'WBMSC/Org.Per/682/14', NULL, N'2014', NULL, NULL, N'WBMSC/95/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (96, 5, N'WBMSC/Org.Per/683/14', NULL, N'2014', NULL, NULL, N'WBMSC/96/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (97, 5, N'WBMSC/Org.Per/684/14', NULL, N'2014', NULL, NULL, N'WBMSC/97/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (98, 5, N'WBMSC/Org.Per/685/14', NULL, N'2014', NULL, NULL, N'WBMSC/98/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (99, 5, N'WBMSC/Org.Per/686/14', NULL, N'2014', NULL, NULL, N'WBMSC/99/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (100, 5, N'WBMSC/Org.Per/689/14', NULL, N'2014', NULL, NULL, N'WBMSC/100/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (101, 5, N'WBMSC/Org.Per/693/14', NULL, N'2014', NULL, NULL, N'WBMSC/101/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (102, 5, N'WBMSC/Org.Per/698/14', NULL, N'2014', NULL, NULL, N'WBMSC/102/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (103, 5, N'WBMSC/Org.Per/699/14', NULL, N'2014', NULL, NULL, N'WBMSC/103/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (104, 5, N'WBMSC/Org.Per/702/14', NULL, N'2014', NULL, NULL, N'WBMSC/104/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (105, 5, N'WBMSC/Org.Per/703/14', NULL, N'2014', NULL, NULL, N'WBMSC/105/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (106, 5, N'WBMSC/Org.Per/704/14', NULL, N'2014', NULL, NULL, N'WBMSC/106/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (107, 5, N'WBMSC/Org.Per/707/14', NULL, N'2014', NULL, NULL, N'WBMSC/107/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (108, 5, N'WBMSC/18TH BOD/711/14', NULL, N'2014', NULL, NULL, N'WBMSC/108/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (109, 5, N'WBMSC/Org.Per/712/14', NULL, N'2014', NULL, NULL, N'WBMSC/109/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (110, 5, N'WBMSC/Org.Per/714/14', NULL, N'2014', NULL, NULL, N'WBMSC/110/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (111, 5, N'WBMSC/Org.Per/715/14', NULL, N'2014', NULL, NULL, N'WBMSC/111/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (112, 5, N'WBMSC/Org.Per/727/14', NULL, N'2014', NULL, NULL, N'WBMSC/112/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (113, 5, N'WBMSC/Org.Per/728/14', NULL, N'2014', NULL, NULL, N'WBMSC/113/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (114, 5, N'WBMSC/Org.Per/729/14', NULL, N'2014', NULL, NULL, N'WBMSC/114/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (115, 5, N'WBMSC/TA/744/14', NULL, N'2014', NULL, NULL, N'WBMSC/115/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (116, 5, N'WBMSC/LEAVE/745/14', NULL, N'2014', NULL, NULL, N'WBMSC/116/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (117, 5, N'WBMSCL/Con-Exp/746/14', NULL, N'2014', NULL, NULL, N'WBMSC/117/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (118, 5, N'WBMSC/Org.Per/747/14', NULL, N'2014', NULL, NULL, N'WBMSC/118/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (119, 5, N'WBMSC/Org.Per/748/14', NULL, N'2014', NULL, NULL, N'WBMSC/119/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (120, 5, N'WBMSC/Org.Per/749/14', NULL, N'2014', NULL, NULL, N'WBMSC/120/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (121, 5, N'WBMSC/Org.Per/751/14', NULL, N'2014', NULL, NULL, N'WBMSC/121/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (122, 5, N'WBMSC/Org.Per/752/14', NULL, N'2014', NULL, NULL, N'WBMSC/122/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (123, 5, N'WBMSC/Org.Per/753/14', NULL, N'2014', NULL, NULL, N'WBMSC/123/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (124, 5, N'WBMSC/CS/Audit Charter & Int.Auditor/754/14', NULL, N'2014', NULL, NULL, N'WBMSC/124/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (125, 5, N'WBMSC/Admn.Calender/756/14', NULL, N'2014', NULL, NULL, N'WBMSC/125/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (126, 5, N'WBMSC/Org.Per/757/14', NULL, N'2014', NULL, NULL, N'WBMSC/126/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (127, 5, N'WBMSC/Org.Per/758/14', NULL, N'2014', NULL, NULL, N'WBMSC/127/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (128, 5, N'WBMSC/Org.Per/759/14', NULL, N'2014', NULL, NULL, N'WBMSC/128/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (129, 5, N'WBMSC/Org.Per/760/14', NULL, N'2014', NULL, NULL, N'WBMSC/129/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (130, 5, N'WBMSC/Org.Per/761/14', NULL, N'2014', NULL, NULL, N'WBMSC/130/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (131, 5, N'WBMSC/Org.Per/763/14', NULL, N'2014', NULL, NULL, N'WBMSC/131/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (132, 5, N'WBMSC/Org.Per/764/14', NULL, N'2014', NULL, NULL, N'WBMSC/132/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (133, 5, N'WBMSC/CSR/767/14', NULL, N'2014', NULL, NULL, N'WBMSC/133/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (134, 5, N'WBMSC/Org.Per/768/14', NULL, N'2014', NULL, NULL, N'WBMSC/134/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (135, 5, N'WBMSC/EPF/770/14', NULL, N'2014', NULL, NULL, N'WBMSC/135/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (136, 5, N'WBMSC/Org.Per/787/14', NULL, N'2014', NULL, NULL, N'WBMSC/136/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (137, 5, N'WBMSC/Org.Per/792/14', NULL, N'2014', NULL, NULL, N'WBMSC/137/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (138, 5, N'WBMSC/Org.Per/796/14', NULL, N'2014', NULL, NULL, N'WBMSC/138/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (139, 5, N'WBMSC/Org.Per/799/14', NULL, N'2014', NULL, NULL, N'WBMSC/139/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (140, 5, N'WBMSC/Org.Per/800/14', NULL, N'2014', NULL, NULL, N'WBMSC/140/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (141, 5, N'WBMSC/Transfer&Posting/804/14', NULL, N'2014', NULL, NULL, N'WBMSC/141/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (142, 5, N'WBMSC/Org.Per/813/14', NULL, N'2014', NULL, NULL, N'WBMSC/142/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (143, 5, N'WBMSC/Org.Per/814/14', NULL, N'2014', NULL, NULL, N'WBMSC/143/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (144, 5, N'WBMSC/19TH BOD/815/14', NULL, N'2014', NULL, NULL, N'WBMSC/144/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (145, 5, N'WBMSC/Org.Per/823/14', NULL, N'2014', NULL, NULL, N'WBMSC/145/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (146, 5, N'WBMSC/Org.Per/824/14', NULL, N'2014', NULL, NULL, N'WBMSC/146/2014', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (147, 5, N'WBMSC/6th agm/828/15', NULL, N'2015', NULL, NULL, N'WBMSC/147/2015', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (148, 5, N'WBMSC/19TH BOD/843/15', NULL, N'2015', NULL, NULL, N'WBMSC/148/2015', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (149, 5, N'WBMSC/legel service/847/15', NULL, N'2015', NULL, NULL, N'WBMSC/149/2015', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (150, 5, N'WBMSC/Org.Per/871/15', NULL, N'2015', NULL, NULL, N'WBMSC/150/2015', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (151, 5, N'WBMSC/Org.Per/879/15', NULL, N'2015', NULL, NULL, N'WBMSC/151/2015', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (152, 5, N'WBMSC/Internal Auditor/885/15', NULL, N'2015', NULL, NULL, N'WBMSC/152/2015', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (153, 5, N'WBMSC/Budget-Spch/888/15', NULL, N'2015', NULL, NULL, N'WBMSC/153/2015', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (154, 5, N'WBMSC/Parking Slot/SB/899/15', NULL, N'2015', NULL, NULL, N'WBMSC/154/2015', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (155, 5, N'WBMSC/Org.Per/944/15', NULL, N'2015', NULL, NULL, N'WBMSC/155/2015', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (156, 5, N'WBMSC/Org.Per/974/15', NULL, N'2015', NULL, NULL, N'WBMSC/156/2015', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (157, 5, N'WBMSC/Recruitment/EE/975/15', NULL, N'2015', NULL, NULL, N'WBMSC/157/2015', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (158, 5, N'WBMSC/Org.Per/978/15', NULL, N'2015', NULL, NULL, N'WBMSC/158/2015', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'hr', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (159, 1, N'WBMSC/ACCT/Treasury/15/2011', NULL, N'2011', NULL, NULL, N'WBMSC/159/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (160, 1, N'WBMSC/off.Tour/16/2011', NULL, N'2011', NULL, NULL, N'WBMSC/160/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (161, 1, N'WBMSC/ACCT/Chg.HandOver/17/2011', NULL, N'2011', NULL, NULL, N'WBMSC/161/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (162, 1, N'WBMSC/Formt/19/2011', NULL, N'2011', NULL, NULL, N'WBMSC/162/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (163, 1, N'WBMSC/ACCT/Office Buliding/21/11', NULL, N'2011', NULL, NULL, N'WBMSC/163/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (164, 1, N'WBMSC/Quotation/27/11', NULL, N'2011', NULL, NULL, N'WBMSC/164/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (165, 1, N'WBMSC/RPG/28/11', NULL, N'2011', NULL, NULL, N'WBMSC/165/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (166, 1, N'WBMSC/P.TAX/31/11', NULL, N'2011', NULL, NULL, N'WBMSC/166/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (167, 1, N'WBMSC/Generator Malda/34/11', NULL, N'2011', NULL, NULL, N'WBMSC/167/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (168, 1, N'WBMSC/ACCT/Payment CSS/35/11', NULL, N'2011', NULL, NULL, N'WBMSC/168/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (169, 1, N'WBMSC/Enquiry Committee/36/11', NULL, N'2011', NULL, NULL, N'WBMSC/169/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (170, 1, N'WBMSC/TDS/37/11', NULL, N'2011', NULL, NULL, N'WBMSC/170/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (171, 1, N'WBMSC/STDS/37/11', NULL, N'2011', NULL, NULL, N'WBMSC/171/2011', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (172, 1, N'WBMSC/Fund BRGF/46/12', NULL, N'2012', NULL, NULL, N'WBMSC/172/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (173, 1, N'WBMSC/UNOPS-Supply/46/12', NULL, N'2012', NULL, NULL, N'WBMSC/173/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (174, 1, N'WBMSC/MISC.Payment/47/12', NULL, N'2012', NULL, NULL, N'WBMSC/174/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (175, 1, N'WBMSC/Salary/57/12', NULL, N'2012', NULL, NULL, N'WBMSC/175/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (176, 1, N'WBMSC/PettyCashVoucher/52/12', NULL, N'2012', NULL, NULL, N'WBMSC/176/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (177, 1, N'WBMSC/Deposit Register/53/12', NULL, N'2012', NULL, NULL, N'WBMSC/177/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (178, 1, N'WBMSC/Proc-Comp/55/12', NULL, N'2012', NULL, NULL, N'WBMSC/178/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (179, 1, N'WBMSC/Pay & Accounts III/56/12', NULL, N'2012', NULL, NULL, N'WBMSC/179/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (180, 1, N'WBMSC/GSIS/57/12', NULL, N'2012', NULL, NULL, N'WBMSC/180/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (181, 1, N'WBMSC/ACCT-13th Fin.Com/64/12', NULL, N'2012', NULL, NULL, N'WBMSC/181/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (182, 1, N'WBMSC/NRHM-Setting up Neonatalward/66/12', NULL, N'2012', NULL, NULL, N'WBMSC/182/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (183, 1, N'WBMSC/Payment/Hosp./69/12', NULL, N'2012', NULL, NULL, N'WBMSC/183/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (184, 1, N'WBMSC/CAG-AUDIT/78/12', NULL, N'2012', NULL, NULL, N'WBMSC/184/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (185, 1, N'WBMSC/Med.Bill Reimbursement/86/12', NULL, N'2012', NULL, NULL, N'WBMSC/185/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (186, 1, N'WBMSC/SiteOffice Contingency/88/12', NULL, N'2012', NULL, NULL, N'WBMSC/186/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (187, 1, N'WBMSC/Payment-Advt./90/12', NULL, N'2012', NULL, NULL, N'WBMSC/187/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (188, 1, N'WBMSC/Fund-Monitoring/92/12', NULL, N'2012', NULL, NULL, N'WBMSC/188/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (189, 1, N'WBMSC/Income-AdmnCost/93/12', NULL, N'2012', NULL, NULL, N'WBMSC/189/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (190, 1, N'WBMSC/AC-Roc/94/12', NULL, N'2012', NULL, NULL, N'WBMSC/190/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (191, 1, N'WBMSC/NRHM/NADIA/97/12', NULL, N'2012', NULL, NULL, N'WBMSC/191/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (192, 1, N'WBMSC/Payment-Telephone/99/12', NULL, N'2012', NULL, NULL, N'WBMSC/192/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (193, 1, N'WBMSC/ACCT/STDS RETURN/102/12', NULL, N'2012', NULL, NULL, N'WBMSC/193/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (194, 1, N'WBMSC/NRHM/MR BANGUR/103/12', NULL, N'2012', NULL, NULL, N'WBMSC/194/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (195, 1, N'WBMSC/13TH FIN/WBIIDC/104/12', NULL, N'2012', NULL, NULL, N'WBMSC/195/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (196, 1, N'WBMSC/13TH FIN.COM/STM/105/12', NULL, N'2012', NULL, NULL, N'WBMSC/196/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (197, 1, N'WBMSC/NRHM/CSS/106/12', NULL, N'2012', NULL, NULL, N'WBMSC/197/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (198, 1, N'WBMSC/ACCT/13TH Fin Com/Burdwan/108/12', NULL, N'2012', NULL, NULL, N'WBMSC/198/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (199, 1, N'WBMSC/13TH FIN.COM/Darjeeling/109/12', NULL, N'2012', NULL, NULL, N'WBMSC/199/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (200, 1, N'WBMSC/NRHM/MIDNAPORE/110/12', NULL, N'2012', NULL, NULL, N'WBMSC/200/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (201, 1, N'WBMSC/NRHM/UTTAR 24 PARGANAS/111/12', NULL, N'2012', NULL, NULL, N'WBMSC/201/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
GO
print 'Processed 200 total records'
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (202, 1, N'WBMSC/NRHM/KOLKATA Cansn-CNMC/112/12', NULL, N'2012', NULL, NULL, N'WBMSC/202/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (203, 1, N'WBMSC/Com.IncomeTax/113/12', NULL, N'2012', NULL, NULL, N'WBMSC/203/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (204, 1, N'WBMSC/FUNC.COMP./114/12', NULL, N'2012', NULL, NULL, N'WBMSC/204/2012', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (205, 1, N'WBMSC/ACCT/AAES-PAYMENT/133/13', NULL, N'2013', NULL, NULL, N'WBMSC/205/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (206, 1, N'WBMSC/ACCT/MED.GAS PIPELINE/136/13', NULL, N'2013', NULL, NULL, N'WBMSC/206/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (207, 1, N'WBMSC/BRGF/HRBC/137/13', NULL, N'2013', NULL, NULL, N'WBMSC/207/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (208, 1, N'WBMSC/Payment/H.R.Infracon/139/13', NULL, N'2013', NULL, NULL, N'WBMSC/208/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (209, 1, N'WBMSC/AAES-Pymt-028/150/13', NULL, N'2013', NULL, NULL, N'WBMSC/209/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (210, 1, N'WBMSC/BRGF-Payment/151/13', NULL, N'2013', NULL, NULL, N'WBMSC/210/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (211, 1, N'WBMSC/AAES-PYMT-111/152/13', NULL, N'2013', NULL, NULL, N'WBMSC/211/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (212, 1, N'WBMSC/AAES-PAY-024/153/13', NULL, N'2013', NULL, NULL, N'WBMSC/212/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (213, 1, N'WBMSC/AAES-PAY-100/155/13', NULL, N'2013', NULL, NULL, N'WBMSC/213/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (214, 1, N'WBMSC/ACCT/AG/170/13', NULL, N'2013', NULL, NULL, N'WBMSC/214/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (215, 1, N'WBMSC/AAES-001-Pymt/171/13', NULL, N'2013', NULL, NULL, N'WBMSC/215/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (216, 1, N'WBMSC/AAES-003-Pymt/172/13', NULL, N'2013', NULL, NULL, N'WBMSC/216/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (217, 1, N'WBMSC/AAES-007-Pymt/173/13', NULL, N'2013', NULL, NULL, N'WBMSC/217/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (218, 1, N'WBMSC/AAES-011-Pymt/174/13', NULL, N'2013', NULL, NULL, N'WBMSC/218/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (219, 1, N'WBMSC/AAES-013-Pymt/175/13', NULL, N'2013', NULL, NULL, N'WBMSC/219/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (220, 1, N'WBMSC/AAES-014-Pymt/176/13', NULL, N'2013', NULL, NULL, N'WBMSC/220/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (221, 1, N'WBMSC/AAES-015-Pymt/177/13', NULL, N'2013', NULL, NULL, N'WBMSC/221/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (222, 1, N'WBMSC/AAES-016-Pymt/178/13', NULL, N'2013', NULL, NULL, N'WBMSC/222/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (223, 1, N'WBMSC/AAES-017-Pymt/179/13', NULL, N'2013', NULL, NULL, N'WBMSC/223/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (224, 1, N'WBMSC/AAES-018-Pymt/180/13', NULL, N'2013', NULL, NULL, N'WBMSC/224/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (225, 1, N'WBMSC/AAES-020-Pymt/181/13', NULL, N'2013', NULL, NULL, N'WBMSC/225/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (226, 1, N'WBMSC/AAES-021-Pymt/182/13', NULL, N'2013', NULL, NULL, N'WBMSC/226/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (227, 1, N'WBMSC/AAES-022-Pymt/183/13', NULL, N'2013', NULL, NULL, N'WBMSC/227/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (228, 1, N'WBMSC/AAES-024-Pymt/184/13', NULL, N'2013', NULL, NULL, N'WBMSC/228/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (229, 1, N'WBMSC/AAES-025-Pymt/185/13', NULL, N'2013', NULL, NULL, N'WBMSC/229/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (230, 1, N'WBMSC/AAES-027-Pymt/186/13', NULL, N'2013', NULL, NULL, N'WBMSC/230/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (231, 1, N'WBMSC/AAES-028-Pymt/187/13', NULL, N'2013', NULL, NULL, N'WBMSC/231/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (232, 1, N'WBMSC/AAES-030-Pymt/188/13', NULL, N'2013', NULL, NULL, N'WBMSC/232/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (233, 1, N'WBMSC/AAES-031-Pymt/189/13', NULL, N'2013', NULL, NULL, N'WBMSC/233/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (234, 1, N'WBMSC/AAES-032-Pymt/190/13', NULL, N'2013', NULL, NULL, N'WBMSC/234/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (235, 1, N'WBMSC/AAES-033-Pymt/191/13', NULL, N'2013', NULL, NULL, N'WBMSC/235/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (236, 1, N'WBMSC/AAES-034-Pymt/192/13', NULL, N'2013', NULL, NULL, N'WBMSC/236/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (237, 1, N'WBMSC/AAES-035-Pymt/193/13', NULL, N'2013', NULL, NULL, N'WBMSC/237/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (238, 1, N'WBMSC/AAES-036-Pymt/194/13', NULL, N'2013', NULL, NULL, N'WBMSC/238/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (239, 1, N'WBMSC/AAES-038-Pymt/195/13', NULL, N'2013', NULL, NULL, N'WBMSC/239/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (240, 1, N'WBMSC/AAES-037-Pymt/196/13', NULL, N'2013', NULL, NULL, N'WBMSC/240/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (241, 1, N'WBMSC/AAES-041-Pymt/197/13', NULL, N'2013', NULL, NULL, N'WBMSC/241/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (242, 1, N'WBMSC/AAES-042-Pymt/198/13', NULL, N'2013', NULL, NULL, N'WBMSC/242/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (243, 1, N'WBMSC/AAES-044-Pymt/199/13', NULL, N'2013', NULL, NULL, N'WBMSC/243/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (244, 1, N'WBMSC/AAES-043-Pymt/200/13', NULL, N'2013', NULL, NULL, N'WBMSC/244/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (245, 1, N'WBMSC/AAES-045-Pymt/201/13', NULL, N'2013', NULL, NULL, N'WBMSC/245/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (246, 1, N'WBMSC/AAES-046-Pymt/202/13', NULL, N'2013', NULL, NULL, N'WBMSC/246/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (247, 1, N'WBMSC/AAES-047-Pymt/203/13', NULL, N'2013', NULL, NULL, N'WBMSC/247/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (248, 1, N'WBMSC/AAES-048-Pymt/204/13', NULL, N'2013', NULL, NULL, N'WBMSC/248/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (249, 1, N'WBMSC/AAES-049-Pymt/205/13', NULL, N'2013', NULL, NULL, N'WBMSC/249/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (250, 1, N'WBMSC/AAES-050-Pymt/206/13', NULL, N'2013', NULL, NULL, N'WBMSC/250/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (251, 1, N'WBMSC/AAES-051-Pymt/207/13', NULL, N'2013', NULL, NULL, N'WBMSC/251/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (252, 1, N'WBMSC/AAES-052-Pymt/208/13', NULL, N'2013', NULL, NULL, N'WBMSC/252/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (253, 1, N'WBMSC/AAES-053-Pymt/209/13', NULL, N'2013', NULL, NULL, N'WBMSC/253/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (254, 1, N'WBMSC/AAES-054-Pymt/210/13', NULL, N'2013', NULL, NULL, N'WBMSC/254/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (255, 1, N'WBMSC/AAES-055-Pymt/211/13', NULL, N'2013', NULL, NULL, N'WBMSC/255/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (256, 1, N'WBMSC/AAES-056-Pymt/212/13', NULL, N'2013', NULL, NULL, N'WBMSC/256/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (257, 1, N'WBMSC/AAES-057-Pymt/213/13', NULL, N'2013', NULL, NULL, N'WBMSC/257/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (258, 1, N'WBMSC/AAES-058-Pymt/214/13', NULL, N'2013', NULL, NULL, N'WBMSC/258/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (259, 1, N'WBMSC/AAES-059-Pymt/215/13', NULL, N'2013', NULL, NULL, N'WBMSC/259/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (260, 1, N'WBMSC/AAES-060-Pymt/216/13', NULL, N'2013', NULL, NULL, N'WBMSC/260/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (261, 1, N'WBMSC/AAES-061-Pymt/217/13', NULL, N'2013', NULL, NULL, N'WBMSC/261/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (262, 1, N'WBMSC/AAES-062-Pymt/218/13', NULL, N'2013', NULL, NULL, N'WBMSC/262/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (263, 1, N'WBMSC/AAES-063-Pymt/219/13', NULL, N'2013', NULL, NULL, N'WBMSC/263/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (264, 1, N'WBMSC/AAES-064-Pymt/220/13', NULL, N'2013', NULL, NULL, N'WBMSC/264/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (265, 1, N'WBMSC/AAES-065-Pymt/221/13', NULL, N'2013', NULL, NULL, N'WBMSC/265/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (266, 1, N'WBMSC/AAES-066-Pymt/222/13', NULL, N'2013', NULL, NULL, N'WBMSC/266/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (267, 1, N'WBMSC/AAES-067-Pymt/223/13', NULL, N'2013', NULL, NULL, N'WBMSC/267/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (268, 1, N'WBMSC/AAES-068-Pymt/224/13', NULL, N'2013', NULL, NULL, N'WBMSC/268/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (269, 1, N'WBMSC/AAES-069-Pymt/225/13', NULL, N'2013', NULL, NULL, N'WBMSC/269/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (270, 1, N'WBMSC/AAES-070-Pymt/226/13', NULL, N'2013', NULL, NULL, N'WBMSC/270/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (271, 1, N'WBMSC/AAES-071-Pymt/227/13', NULL, N'2013', NULL, NULL, N'WBMSC/271/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (272, 1, N'WBMSC/AAES-072-Pymt/228/13', NULL, N'2013', NULL, NULL, N'WBMSC/272/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (273, 1, N'WBMSC/AAES-073-Pymt/229/13', NULL, N'2013', NULL, NULL, N'WBMSC/273/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (274, 1, N'WBMSC/AAES-074-Pymt/230/13', NULL, N'2013', NULL, NULL, N'WBMSC/274/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (275, 1, N'WBMSC/AAES-075-Pymt/231/13', NULL, N'2013', NULL, NULL, N'WBMSC/275/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (276, 1, N'WBMSC/AAES-076-Pymt/232/13', NULL, N'2013', NULL, NULL, N'WBMSC/276/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (277, 1, N'WBMSC/AAES-077-Pymt/233/13', NULL, N'2013', NULL, NULL, N'WBMSC/277/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (278, 1, N'WBMSC/AAES-078-Pymt/234/13', NULL, N'2013', NULL, NULL, N'WBMSC/278/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (279, 1, N'WBMSC/AAES-079-Pymt/235/13', NULL, N'2013', NULL, NULL, N'WBMSC/279/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (280, 1, N'WBMSC/AAES-080-Pymt/236/13', NULL, N'2013', NULL, NULL, N'WBMSC/280/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (281, 1, N'WBMSC/AAES-081-Pymt/237/13', NULL, N'2013', NULL, NULL, N'WBMSC/281/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (282, 1, N'WBMSC/AAES-082-Pymt/238/13', NULL, N'2013', NULL, NULL, N'WBMSC/282/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (283, 1, N'WBMSC/AAES-083-Pymt/239/13', NULL, N'2013', NULL, NULL, N'WBMSC/283/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (284, 1, N'WBMSC/AAES-084-Pymt/240/13', NULL, N'2013', NULL, NULL, N'WBMSC/284/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (285, 1, N'WBMSC/AAES-085-Pymt/241/13', NULL, N'2013', NULL, NULL, N'WBMSC/285/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (286, 1, N'WBMSC/AAES-086-Pymt/242/13', NULL, N'2013', NULL, NULL, N'WBMSC/286/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (287, 1, N'WBMSC/AAES-087-Pymt/243/13', NULL, N'2013', NULL, NULL, N'WBMSC/287/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (288, 1, N'WBMSC/AAES-088-Pymt/244/13', NULL, N'2013', NULL, NULL, N'WBMSC/288/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (289, 1, N'WBMSC/AAES-089-Pymt/245/13', NULL, N'2013', NULL, NULL, N'WBMSC/289/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (290, 1, N'WBMSC/AAES-090-Pymt/246/13', NULL, N'2013', NULL, NULL, N'WBMSC/290/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (291, 1, N'WBMSC/AAES-091-Pymt/247/13', NULL, N'2013', NULL, NULL, N'WBMSC/291/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (292, 1, N'WBMSC/AAES-092-Pymt/248/13', NULL, N'2013', NULL, NULL, N'WBMSC/292/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (293, 1, N'WBMSC/AAES-093-Pymt/249/13', NULL, N'2013', NULL, NULL, N'WBMSC/293/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (294, 1, N'WBMSC/AAES-094-Pymt/250/13', NULL, N'2013', NULL, NULL, N'WBMSC/294/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (295, 1, N'WBMSC/AAES-095-Pymt/251/13', NULL, N'2013', NULL, NULL, N'WBMSC/295/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (296, 1, N'WBMSC/AAES-096-Pymt/252/13', NULL, N'2013', NULL, NULL, N'WBMSC/296/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (297, 1, N'WBMSC/AAES-097-Pymt/253/13', NULL, N'2013', NULL, NULL, N'WBMSC/297/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (298, 1, N'WBMSC/AAES-098-Pymt/254/13', NULL, N'2013', NULL, NULL, N'WBMSC/298/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (299, 1, N'WBMSC/AAES-099-Pymt/255/13', NULL, N'2013', NULL, NULL, N'WBMSC/299/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (300, 1, N'WBMSC/AAES-100-Pymt/256/13', NULL, N'2013', NULL, NULL, N'WBMSC/300/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (301, 1, N'WBMSC/AAES-101-Pymt/257/13', NULL, N'2013', NULL, NULL, N'WBMSC/301/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (302, 1, N'WBMSC/AAES-102-Pymt/258/13', NULL, N'2013', NULL, NULL, N'WBMSC/302/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
GO
print 'Processed 300 total records'
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (303, 1, N'WBMSC/AAES-103-Pymt/259/13', NULL, N'2013', NULL, NULL, N'WBMSC/303/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (304, 1, N'WBMSC/AAES-104-Pymt/260/13', NULL, N'2013', NULL, NULL, N'WBMSC/304/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (305, 1, N'WBMSC/AAES-105-Pymt/261/13', NULL, N'2013', NULL, NULL, N'WBMSC/305/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (306, 1, N'WBMSC/AAES-106-Pymt/262/13', NULL, N'2013', NULL, NULL, N'WBMSC/306/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (307, 1, N'WBMSC/AAES-107-Pymt/263/13', NULL, N'2013', NULL, NULL, N'WBMSC/307/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (308, 1, N'WBMSC/AAES-108-Pymt/264/13', NULL, N'2013', NULL, NULL, N'WBMSC/308/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (309, 1, N'WBMSC/AAES-109-Pymt/265/13', NULL, N'2013', NULL, NULL, N'WBMSC/309/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (310, 1, N'WBMSC/AAES-110-Pymt/266/13', NULL, N'2013', NULL, NULL, N'WBMSC/310/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (311, 1, N'WBMSC/AAES-111-Pymt/267/13', NULL, N'2013', NULL, NULL, N'WBMSC/311/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (312, 1, N'WBMSC/AAES-112-Pymt/268/13', NULL, N'2013', NULL, NULL, N'WBMSC/312/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (313, 1, N'WBMSC/AAES-113-Pymt/269/13', NULL, N'2013', NULL, NULL, N'WBMSC/313/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (314, 1, N'WBMSC/AAES-114-Pymt/270/13', NULL, N'2013', NULL, NULL, N'WBMSC/314/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (315, 1, N'WBMSC/AAES-115-Pymt/271/13', NULL, N'2013', NULL, NULL, N'WBMSC/315/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (316, 1, N'WBMSC/AAES-116-Pymt/272/13', NULL, N'2013', NULL, NULL, N'WBMSC/316/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (317, 1, N'WBMSC/AAES-117-Pymt/273/13', NULL, N'2013', NULL, NULL, N'WBMSC/317/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (318, 1, N'WBMSC/AAES-118-Pymt/274/13', NULL, N'2013', NULL, NULL, N'WBMSC/318/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (319, 1, N'WBMSC/AAES-119-Pymt/275/13', NULL, N'2013', NULL, NULL, N'WBMSC/319/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (320, 1, N'WBMSC/AAES-120-Pymt/276/13', NULL, N'2013', NULL, NULL, N'WBMSC/320/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (321, 1, N'WBMSC/AAES-121-Pymt/277/13', NULL, N'2013', NULL, NULL, N'WBMSC/321/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (322, 1, N'WBMSC/AAES-122-Pymt/278/13', NULL, N'2013', NULL, NULL, N'WBMSC/322/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (323, 1, N'WBMSC/AAES-123-Pymt/279/13', NULL, N'2013', NULL, NULL, N'WBMSC/323/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (324, 1, N'WBMSC/AAES-124-Pymt/280/13', NULL, N'2013', NULL, NULL, N'WBMSC/324/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (325, 1, N'WBMSC/AAES-125-Pymt/281/13', NULL, N'2013', NULL, NULL, N'WBMSC/325/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (326, 1, N'WBMSC/AAES-126-Pymt/282/13', NULL, N'2013', NULL, NULL, N'WBMSC/326/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (327, 1, N'WBMSC/AAES-127-Pymt/283/13', NULL, N'2013', NULL, NULL, N'WBMSC/327/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (328, 1, N'WBMSC/AAES-128-Pymt/284/13', NULL, N'2013', NULL, NULL, N'WBMSC/328/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (329, 1, N'WBMSC/AAES-129-Pymt/285/13', NULL, N'2013', NULL, NULL, N'WBMSC/329/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (330, 1, N'WBMSC/AAES-130-Pymt/286/13', NULL, N'2013', NULL, NULL, N'WBMSC/330/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (331, 1, N'WBMSC/AAES-131-Pymt/287/13', NULL, N'2013', NULL, NULL, N'WBMSC/331/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (332, 1, N'WBMSC/AAES-132-Pymt/288/13', NULL, N'2013', NULL, NULL, N'WBMSC/332/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (333, 1, N'WBMSC/AAES-133-Pymt/289/13', NULL, N'2013', NULL, NULL, N'WBMSC/333/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (334, 1, N'WBMSC/AAES-134-Pymt/290/13', NULL, N'2013', NULL, NULL, N'WBMSC/334/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (335, 0, N'WBMSC/AAES-135-Pymt/291/14', NULL, N'0', NULL, NULL, N'WBMSC/335/0', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'wbmsc', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (336, 1, N'WBMSC/AAES-136-Pymt/291/13', NULL, N'2013', NULL, NULL, N'WBMSC/336/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (337, 1, N'WBMSC/AAES-137-Pymt/292/13', NULL, N'2013', NULL, NULL, N'WBMSC/337/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (338, 1, N'WBMSC/AAES-138-Pymt/293/13', NULL, N'2013', NULL, NULL, N'WBMSC/338/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (339, 1, N'WBMSC/AAES-139-Pymt/294/13', NULL, N'2013', NULL, NULL, N'WBMSC/339/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (340, 1, N'WBMSC/AAES-140-Pymt/295/13', NULL, N'2013', NULL, NULL, N'WBMSC/340/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (341, 1, N'WBMSC/AAES-142-Pymt/296/13', NULL, N'2013', NULL, NULL, N'WBMSC/341/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (342, 1, N'WBMSC/AAES-143-Pymt/297/13', NULL, N'2013', NULL, NULL, N'WBMSC/342/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (343, 1, N'WBMSC/AAES-144-Pymt/298/13', NULL, N'2013', NULL, NULL, N'WBMSC/343/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (344, 1, N'WBMSC/AAES-145-Pymt/299/13', NULL, N'2013', NULL, NULL, N'WBMSC/344/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (345, 1, N'WBMSC/AAES-146-Pymt/300/13', NULL, N'2013', NULL, NULL, N'WBMSC/345/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (346, 1, N'WBMSC/AAES-147-Pymt/301/13', NULL, N'2013', NULL, NULL, N'WBMSC/346/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (347, 1, N'WBMSC/AAES-148-Pymt/302/13', NULL, N'2013', NULL, NULL, N'WBMSC/347/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (348, 1, N'WBMSC/AAES-149-Pymt/303/13', NULL, N'2013', NULL, NULL, N'WBMSC/348/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (349, 1, N'WBMSC/AAES-150-Pymt/304/13', NULL, N'2013', NULL, NULL, N'WBMSC/349/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (350, 1, N'WBMSC/AAES-151-Pymt/305/13', NULL, N'2013', NULL, NULL, N'WBMSC/350/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
INSERT [dbo].[xx_FileMaster] ([FileID], [DeptID], [FileNum], [SubMatter], [FileOpenYr], [InitialOfficer], [PhoneNo], [GenFileNo], [FileStatus], [FileFollowUp], [Remarks], [CreatedDt], [CreatedBy], [LastModDt], [LastModBy]) VALUES (351, 1, N'WBMSC/AAES-152-Pymt/306/13', NULL, N'2013', NULL, NULL, N'WBMSC/351/2013', NULL, N'Y', NULL, CAST(0x0000A4B400000000 AS DateTime), N'accounts', NULL, NULL)
SET IDENTITY_INSERT [dbo].[xx_FileMaster] OFF
/****** Object:  StoredProcedure [dbo].[usp_Add_DeptMaster]    Script Date: 09/11/2015 15:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Add_DeptMaster]
(
	@BranchID					bigint,
	@DeptNm						varchar(100),
	@DeptDesc					varchar(100)
)
AS
BEGIN
		IF EXISTS(Select * from DeptMaster Where DeptNm = @DeptNm AND BranchID = @BranchID)
		BEGIN
			raiserror('This Department already exists',16,1)
			return -1
		END
		
		INSERT INTO [DeptMaster]
			(
				[BranchID],
				[DeptNm],
				[DeptDesc]
			)
		VALUES
			(
				@BranchID,
				@DeptNm,
				@DeptDesc
			)
		
		IF (@@ROWCOUNT = 0)
		BEGIN
			RAISERROR('Data Not Added',16,1)
			RETURN -1
		END
RETURN @@IDENTITY
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Add_BranchMaster]    Script Date: 09/11/2015 15:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Add_BranchMaster]
(
	@BranchNm					varchar(100),
	@BranchDesc				varchar(100)
)
AS
BEGIN
		IF EXISTS(Select * from BranchMaster Where BranchNm = @BranchNm)
		BEGIN
			raiserror('This Branch already exists',16,1)
			return -1
		END
		
		INSERT INTO [BranchMaster]
			(
				[BranchNm],
				[BranchDesc]
			)
		VALUES
			(
				@BranchNm,
				@BranchDesc
			)
		
		IF (@@ROWCOUNT = 0)
		BEGIN
			RAISERROR('Data Not Added',16,1)
			RETURN -1
		END
RETURN @@IDENTITY
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Add_ADM_FileMovement]    Script Date: 09/11/2015 15:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Add_ADM_FileMovement]
(
	@FileID						bigint,
	@DeptID						bigint,
	@Remarks					varchar (500),
	@FileMoveTo_UsrID	bigint
)
AS
	DECLARE @CreatedBy		varchar(50)
BEGIN
		IF NOT EXISTS(SELECT * FROM FileMaster WHERE FileID = @FileID)
		BEGIN
			raiserror('This File Information Not Found',16,1)
			return -1
		END
		
		IF EXISTS(SELECT * FROM FileMaster WHERE FileID = @FileID AND FileStatus = 'E')
		BEGIN
			RAISERROR('File is Disposed, Data will not be saved!',16,1)
			RETURN -1
		END
		
		IF EXISTS(SELECT * FROM FileMaster WHERE FileID = @FileID AND FileFollowUp = 'N')
		BEGIN
			RAISERROR('As File is Archived, No movement allowed!',16,1)
			RETURN -1
		END

		
		IF EXISTS(SELECT * FROM Users WHERE UsrID = @FileMoveTo_UsrID)
		BEGIN
				SELECT @CreatedBy = UsrLoginNm 
				FROM Users 
				WHERE UsrID = @FileMoveTo_UsrID
		END


		INSERT INTO [FileMovement]
			(
					FileID,
					FileMoveType,
					DeptID,
					FileMoveTo_UsrID,
					MoveDt,
					Remarks,
					CreatedDt,
					CreatedBy
			)
		VALUES
			(
					@FileID,
					'I',
					@DeptID,
					@FileMoveTo_UsrID,
					CONVERT(DATETIME,CONVERT(VARCHAR(10), GETDATE(), 112)),
					@Remarks,
					CONVERT(DATETIME,CONVERT(VARCHAR(10), GETDATE(), 112)),
					@CreatedBy
			)
		IF (@@ROWCOUNT = 0)
		BEGIN
			RAISERROR('Data Not Added',16,1)
			RETURN -1
		END
		
		UPDATE [FileMaster]
		SET CreatedBy = @CreatedBy
		WHERE FileID = @FileID
		
		if (@@ROWCOUNT = 0)
		BEGIN
			RAISERROR('File Master Not Updated',16,1)
			RETURN -1
		END
RETURN 1
END
GO
/****** Object:  View [dbo].[vw_BranchWiseDept]    Script Date: 09/11/2015 15:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_BranchWiseDept]
AS
SELECT BM.BranchID,BM.BranchNm, DM.DeptID, DM.DeptNm, DM.DeptDesc 
FROM DeptMaster DM
INNER JOIN BranchMaster BM ON BM.BranchID = DM.BranchID
GO
/****** Object:  StoredProcedure [dbo].[usp_Upd_UsrPassword]    Script Date: 09/11/2015 15:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Upd_UsrPassword]
(
@UsrID							[bigint],
@UsrPwd							[varchar](20),
@UsrNewPwd					[varchar](20)
)
AS
BEGIN
		IF NOT EXISTS(SELECT * FROM Users WHERE UsrID = @UsrID)
		BEGIN
			RAISERROR('User Not Valid.',16,1)
			RETURN -1
		END
		
		IF NOT EXISTS(SELECT * FROM Users WHERE UsrID = @UsrID AND UsrPwd = @UsrPwd)
		BEGIN
			RAISERROR('User Password Not Matched.',16,1)
			RETURN -1
		END
		
		UPDATE Users
		SET UsrPwd = @UsrNewPwd
		WHERE UsrID = @UsrID
		
		IF (@@ROWCOUNT = 0)
		BEGIN
			RAISERROR('Password Not Updated!!! Please Try Again.',16,1)
			RETURN -1
		END
RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Upd_FileMovement_FileViewedInfo]    Script Date: 09/11/2015 15:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Upd_FileMovement_FileViewedInfo]
(
	@FileMovementID			[Bigint],
	@FileViewedBy				[varchar](50)
)
AS
BEGIN
		IF EXISTS(SELECT * FROM [FileMovement] WHERE FileMovementID = @FileMovementID)
		BEGIN
				UPDATE [FileMovement]
				SET IsFileViewed = 'Y',
						FileViewedBy = @FileViewedBy,
						FileViewedDt = CONVERT(DATETIME,CONVERT(VARCHAR(10), GETDATE(), 112))
				WHERE FileMovementID = @FileMovementID
				AND FileMoveType = 'O'
				AND IsFileViewed = 'N'
				
				IF (@@ROWCOUNT = 0)
				BEGIN
					RETURN -1
				END
		RETURN 1
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Upd_FileMaster]    Script Date: 09/11/2015 15:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Upd_FileMaster]
(
	@FileID					bigint,
	@SubMatter			varchar (500)= NULL,
	@FileOpenYr			varchar (6),
	@InitialOfficer varchar (200)= NULL,
	@PhoneNo				varchar (20)= NULL,
	@Remarks				varchar (500)=NULL,
	@LastModBy			varchar (50),
	@FileFollowUp		char(1)
)
AS
BEGIN
		IF NOT EXISTS(Select * from FileMaster where FileID = @FileID)
		BEGIN
			RAISERROR('File Not Exists',16,1)
			RETURN -1
		END

		IF EXISTS(Select * from FileMaster where FileID = @FileID AND FileStatus = 'E')
		BEGIN
			RAISERROR('File is Disposed, It is not Editable',16,1)
			RETURN -1
		END

		UPDATE FileMaster
		SET	SubMatter				= @SubMatter,
				FileOpenYr			= @FileOpenYr,
				InitialOfficer	= @InitialOfficer,
				PhoneNo					= @PhoneNo,
				Remarks					= @Remarks,
				LastModBy				= @LastModBy,
				LastModDt				= CONVERT(DATETIME,CONVERT(VARCHAR(10), GETDATE(), 112)),
				FileFollowUp		= @FileFollowUp
		WHERE FileID				=	@FileID		
		if (@@ROWCOUNT=0)
		BEGIN
			RAISERROR('Data Not Updated',16,1)
			RETURN -1
		END
RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Upd_FileArchiveState]    Script Date: 09/11/2015 15:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Upd_FileArchiveState]
(
@FileID							bigint,
@FileFollowUp				char(1),
@LastFollowupBy			varchar(50)
)
AS
BEGIN
		IF EXISTS(SELECT * FROM FileMaster WHERE FileID = @FileID)
		BEGIN
				UPDATE FileMaster
				SET FileFollowUp		= @FileFollowUp,
						LastFollowupBy	= @LastFollowupBy,
						LastFollowupDt	= CONVERT(DATETIME,CONVERT(VARCHAR(10), GETDATE(), 112))
				WHERE FileID				= @FileID
				
				IF (@@ROWCOUNT = 0)
				BEGIN
						RAISERROR('Data not updated',16,1)
						RETURN -1
				END
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Upd_DeptMaster]    Script Date: 09/11/2015 15:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Upd_DeptMaster]
(
	@DeptID			[bigint],
	@DeptNm			[varchar](100),
	@DeptDesc		[varchar](100)
)
AS
BEGIN
		IF NOT EXISTS(Select * FROM DeptMaster WHERE DeptID = @DeptID)
		BEGIN
			RAISERROR('Department Not Exists',16,1)
			RETURN -1
		END
		
		UPDATE	[DeptMaster]
		SET			[DeptNm]			= @DeptNm,
						[DeptDesc]		= @DeptDesc
		WHERE (	[DeptID] = @DeptID)

		IF (@@ROWCOUNT = 0)
		BEGIN
			RAISERROR('Data Not Updated',16,1)
			RETURN -1
		END
RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Upd_BranchMaster]    Script Date: 09/11/2015 15:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Upd_BranchMaster]
(
	@BranchID		[bigint],
	@BranchNm		[varchar](100),
	@BranchDesc	[varchar](100)
)
AS
BEGIN
		IF NOT EXISTS(Select * FROM BranchMaster WHERE BranchID = @BranchID)
		BEGIN
			RAISERROR('Branch Not Exists',16,1)
			RETURN -1
		END
		
		UPDATE [BranchMaster]
		SET [BranchNm]		= @BranchNm,
				[BranchDesc]	= @BranchDesc
		WHERE ([BranchID] = @BranchID)

		IF (@@ROWCOUNT = 0)
		BEGIN
			RAISERROR('Data Not Updated',16,1)
			RETURN -1
		END
RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_FileNumPrefixSetup]    Script Date: 09/11/2015 15:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Save_FileNumPrefixSetup]
(
	@BranchID				bigint,
	@FileNumPrefix	varchar(50),
	@CreatedBy			varchar(50)
)
AS
BEGIN
		IF EXISTS(SELECT * FROM FileNumPrefixSetup WHERE BranchID = @BranchID)
		BEGIN
				UPDATE FileNumPrefixSetup
				SET FileNumPrefix = @FileNumPrefix,
						LastModBy			= @CreatedBy,
						LastModDt			= CONVERT(DATETIME,CONVERT(VARCHAR(10), GETDATE(), 112))
				WHERE BranchID = @BranchID
				IF (@@ROWCOUNT = 0)
				BEGIN
						RAISERROR('File Number Prefix not updated',16,1)
						RETURN -1
				END		
		END
		ELSE
		BEGIN
				INSERT INTO [FileNumPrefixSetup]
								(
								[BranchID],
								[FileNumPrefix],
								[CreatedBy],
								[CreatedDt]
								)
				VALUES
							(
							@BranchID,
							@FileNumPrefix,
							@CreatedBy,
							CONVERT(DATETIME,CONVERT(VARCHAR(10), GETDATE(), 112))
							)

						IF (@@ROWCOUNT = 0)
						BEGIN
								RAISERROR('File Number Prefix not saved.',16,1)
								RETURN -1
						END		
		END	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Save_FileMoveOfficials]    Script Date: 09/11/2015 15:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Save_FileMoveOfficials]
(
@UsrID						bigint,
@CreatedByID			bigint
)
AS
BEGIN
		IF NOT EXISTS(SELECT * FROM FileMoveOfficials WHERE UsrID = @UsrID AND CreatedByID = @CreatedByID)
		BEGIN
				INSERT INTO [FileMoveOfficials]
							(
								UsrID,
								CreatedByID
							)
				VALUES
							(
								@UsrID,
								@CreatedByID
							)
				IF (@@ROWCOUNT = 0)
				BEGIN
						RAISERROR('Data not saved',16,1)
						RETURN -1
				END						
		END
	RETURN @@IDENTITY	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Manage_FileMove_OutIn]    Script Date: 09/11/2015 15:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Manage_FileMove_OutIn]
(
	@FileID							bigint,
	@DeptID							bigint,
	@Remarks						varchar (500),
	@CreatedBy					varchar (50),
	@FileMoveTo_UsrID		bigint
)
AS
BEGIN
		IF NOT EXISTS(SELECT * FROM FileMaster WHERE FileID = @FileID)
		BEGIN
			raiserror('This File Information Not Found',16,1)
			return -1
		END
		
		IF EXISTS(SELECT * FROM FileMaster WHERE FileID = @FileID AND FileStatus = 'E')
		BEGIN
			RAISERROR('File is Disposed, Data will not be saved!',16,1)
			RETURN -1
		END

		IF EXISTS(SELECT * FROM FileMaster WHERE FileID = @FileID AND FileFollowUp = 'N')
		BEGIN
			RAISERROR('As File is Archived, No movement allowed!',16,1)
			RETURN -1
		END
		

		INSERT INTO [FileMovement]
			(
					FileID,
					FileMoveType,
					DeptID,
					FileMoveTo_UsrID,
					MoveDt,
					Remarks,
					CreatedDt,
					CreatedBy
			)
		VALUES
			(
					@FileID,
					'O',
					@DeptID,
					@FileMoveTo_UsrID,
					CONVERT(DATETIME,CONVERT(VARCHAR(10), GETDATE(), 112)),
					@Remarks,
					CONVERT(DATETIME,CONVERT(VARCHAR(10), GETDATE(), 112)),
					@CreatedBy
			)
		IF (@@ROWCOUNT = 0)
		BEGIN
			RAISERROR('File Not Moved Out',16,1)
			RETURN -1
		END

		INSERT INTO [FileMovement]
			(
					FileID,
					FileMoveType,
					DeptID,
					FileMoveTo_UsrID,
					MoveDt,
					Remarks,
					CreatedDt,
					CreatedBy
			)
		VALUES
			(
					@FileID,
					'I',
					@DeptID,
					@FileMoveTo_UsrID,
					CONVERT(DATETIME,CONVERT(VARCHAR(10), GETDATE(), 112)),
					@Remarks,
					CONVERT(DATETIME,CONVERT(VARCHAR(10), GETDATE(), 112)),
					@CreatedBy
			)

			IF (@@ROWCOUNT = 0)
			BEGIN
				RAISERROR('File Not Moved In',16,1)
				RETURN -1
			END
		
RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetFilesInfoDeptWise]    Script Date: 09/11/2015 15:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetFilesInfoDeptWise]
(
	@DeptID						[Bigint],
	@CreatedBy				[Varchar](50)
)
AS
DECLARE @FileID						[Bigint],
				
				@FileNum					[Varchar](250),
				@SubMatter				[Varchar](500),
				@FileOpenYr				[Varchar](6),
				@FileMovementID		[Bigint],
				@FileStatus				[Varchar](10),
				@FileStatusNm			[Varchar](20),
				@DeptNm						[Varchar](100)
					
DECLARE @FILELIST TABLE(
												FileID						[Bigint],
												FileNum						[Varchar](250),
												SubMatter					[Varchar](500),
												FileOpenYr				[Varchar](6),
												DeptID						[Bigint],
												DeptNm						[Varchar](100),
												FileStatus				[Varchar](10),
												FileStatusNm			[Varchar](20),
												FileMovementID		[Bigint]
											)
BEGIN
		DECLARE CUR CURSOR LOCAL FOR
					SELECT FileID,FileNum,SubMatter,FileOpenYr  FROM FileMaster WHERE CreatedBy = @CreatedBy ORDER BY FileID
		OPEN CUR        
		FETCH NEXT FROM CUR INTO @FileID,@FileNum,@SubMatter,@FileOpenYr
	  WHILE @@FETCH_STATUS = 0      
		BEGIN
				IF EXISTS(SELECT * FROM FileMovement WHERE FileID = @FileID AND CreatedBy = @CreatedBy)
				BEGIN
						SELECT @FileMovementID = MAX(FileMovementID) 
						FROM FileMovement 
						WHERE FileID	= @FileID 
						AND CreatedBy = @CreatedBy
						
						IF EXISTS(SELECT * FROM FileMovement WHERE FileMovementID = @FileMovementID AND DeptID = @DeptID)
						BEGIN
								SELECT @FileStatusNm = CASE WHEN FMV.FileMoveType = 'I' THEN 'Moved In'
																						WHEN FMV.FileMoveType = 'O' THEN 'Moved Out'
																		ELSE ''
																		END,			
								@FileStatus = FMV.FileMoveType,
								@DeptNm = DMS.DeptNm
								--@DeptID = DMS.DeptID
								FROM FileMovement FMV
								INNER JOIN DeptMaster DMS	ON DMS.DeptID = FMV.DeptID
								WHERE FMV.FileMovementID = @FileMovementID

								INSERT INTO @FILELIST VALUES(@FileID,@FileNum,@SubMatter,@FileOpenYr,@DeptID,@DeptNm,@FileStatus,@FileStatusNm,@FileMovementID)  
						END
				END
				FETCH NEXT FROM CUR INTO @FileID,@FileNum,@SubMatter,@FileOpenYr
		END
    CLOSE CUR        
    DEALLOCATE CUR        
		SELECT FileID,FileNum,SubMatter,FileOpenYr,DeptID,DeptNm,FileStatus,FileStatusNm FROM @FILELIST ORDER BY FileID
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Del_FileMoveOfficials]    Script Date: 09/11/2015 15:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Del_FileMoveOfficials]
(
	@UsrMappID		bigint
)
AS
BEGIN
		IF NOT EXISTS(SELECT * FROM [FileMoveOfficials] WHERE UsrMappID = @UsrMappID)
		BEGIN
				RAISERROR('Invalid Record',16,1)
				RETURN -1
		END
		
		DELETE FROM [FileMoveOfficials]
		WHERE UsrMappID = @UsrMappID
		
		IF (@@ROWCOUNT = 0)
		BEGIN
				RAISERROR('Data not removed',16,1)
				RETURN -1
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Del_DeptMaster]    Script Date: 09/11/2015 15:40:48 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[usp_Del_DeptMaster]
(
	@DeptID		[bigint]
)
AS
BEGIN
		IF NOT EXISTS(Select * FROM DeptMaster WHERE DeptID = @DeptID)
		BEGIN
			RAISERROR('Department Not Exists',16,1)
			RETURN -1
		END

		IF EXISTS(Select * FROM FileMovement WHERE DeptID = @DeptID)
		BEGIN
			RAISERROR('Department is in use in File Movement',16,1)
			RETURN -1
		END

		DELETE DeptMaster WHERE DeptID = @DeptID
		IF (@@ROWCOUNT = 0)
		BEGIN
			RAISERROR('Data Not Deleted',16,1)
			RETURN -1
		END
RETURN 1		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Del_BranchMaster]    Script Date: 09/11/2015 15:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Del_BranchMaster]
(
	@BranchID		[bigint]
)
AS
BEGIN
		IF NOT EXISTS(Select * FROM BranchMaster WHERE BranchID = @BranchID)
		BEGIN
			RAISERROR('Branch Not Exists',16,1)
			RETURN -1
		END

		IF EXISTS(Select * FROM FileMaster WHERE BranchID = @BranchID)
		BEGIN
			RAISERROR('Branch is in use in File Master',16,1)
			RETURN -1
		END

		DELETE BranchMaster WHERE BranchID = @BranchID
		IF (@@ROWCOUNT = 0)
		BEGIN
			RAISERROR('Data Not Deleted',16,1)
			RETURN -1
		END
RETURN 1		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Add_Users]    Script Date: 09/11/2015 15:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Add_Users]
(
@DeptID					bigint,
@UsrNm					varchar(200),
@UsrLoginNm			varchar(50),
@UsrPwd					varchar(20)
)
AS
BEGIN
		IF EXISTS(SELECT * FROM Users WHERE UsrLoginNm = @UsrLoginNm)
		BEGIN
				RAISERROR('User Already Exists',16,1)
				RETURN -1
		END
		
		INSERT INTO [Users]
				(
					DeptID,
					UsrNm,
					UsrLoginNm,
					UsrPwd,
					UsrType
				)
		VALUES
				(
					@DeptID,
					@UsrNm,
					@UsrLoginNm,
					@UsrPwd,
					'U'
				)
		IF (@@ROWCOUNT = 0)
		BEGIN
				RAISERROR('User not saved',16,1)
				RETURN -1
		END
	RETURN @@IDENTITY		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Add_FileMovement]    Script Date: 09/11/2015 15:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Add_FileMovement]
(
	@FileID						bigint,
	@FileMoveType			varchar (10),
	@DeptID						bigint,
	@MoveDt						datetime,
	@Remarks					varchar (500),
	@CreatedBy				varchar (50),
	@FileMoveTo_UsrID	bigint
)
AS
BEGIN
		IF NOT EXISTS(SELECT * FROM FileMaster WHERE FileID = @FileID)
		BEGIN
			raiserror('This File Information Not Found',16,1)
			return -1
		END
		
		IF EXISTS(SELECT * FROM FileMaster WHERE FileID = @FileID AND FileStatus = 'E')
		BEGIN
			RAISERROR('File is Disposed, Data will not be saved!',16,1)
			RETURN -1
		END

		IF EXISTS(SELECT * FROM FileMaster WHERE FileID = @FileID AND FileFollowUp = 'N')
		BEGIN
			RAISERROR('As File is Archived, No movement allowed!',16,1)
			RETURN -1
		END


		INSERT INTO [FileMovement]
			(
					FileID,
					FileMoveType,
					DeptID,
					FileMoveTo_UsrID,
					MoveDt,
					Remarks,
					CreatedDt,
					CreatedBy
			)
		VALUES
			(
					@FileID,
					@FileMoveType,
					@DeptID,
					@FileMoveTo_UsrID,
					CONVERT(DATETIME,CONVERT(VARCHAR(10), @MoveDt, 112)),
					@Remarks,
					CONVERT(DATETIME,CONVERT(VARCHAR(10), GETDATE(), 112)),
					@CreatedBy
			)
		IF (@@ROWCOUNT = 0)
		BEGIN
			RAISERROR('Data Not Added',16,1)
			RETURN -1
		END
		
		UPDATE [FileMaster]
		SET FileStatus = @FileMoveType
		WHERE FileID = @FileID
		
		if (@@ROWCOUNT = 0)
		BEGIN
			RAISERROR('File Status Not Updated',16,1)
			RETURN -1
		END
RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Add_FileMaster]    Script Date: 09/11/2015 15:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Add_FileMaster]
(
	@DeptID							bigint,
	@FileNum						varchar (250),
	@SubMatter					varchar (500)= NULL,
	@FileOpenYr					varchar (6),
	@InitialOfficer			varchar (200)= NULL,
	@PhoneNo						varchar (20)= NULL,
	@Remarks						varchar (500)= NULL,
	@CreatedBy					varchar (50),
	@FileFollowUp				char(1),
	@UsrID							bigint
)
AS
	DECLARE 	@FileID			bigint,
						@GenFileNo	varchar(128),
						@BranchNm		varchar(50)
BEGIN
		IF EXISTS(Select * from FileMaster Where FileNum = @FileNum)
		BEGIN
			raiserror('File Number already exists',16,1)
			return -1
		END

		Select @BranchNm = BranchNm from [vw_BranchWiseDept] Where DeptID = @DeptID

		INSERT INTO [FileMaster]
				(
					DeptID,
					FileNum,
					SubMatter,
					FileOpenYr,
					InitialOfficer,
					PhoneNo,
					GenFileNo,
					Remarks,
					CreatedDt,
					CreatedBy,
					FileFollowUp
				)
		VALUES
				(
				@DeptID,
				@FileNum,
				@SubMatter,
				@FileOpenYr,
				@InitialOfficer,
				@PhoneNo,
				@GenFileNo,
				@Remarks,
				CONVERT(DATETIME,CONVERT(VARCHAR(10), GETDATE(), 112)),
				@CreatedBy,
				@FileFollowUp
				)

		SET @FileID = @@IDENTITY
		IF ISNULL(@FileID, -1) > 0
		BEGIN
			SET	@GenFileNo = @BranchNm + '/' + convert(varchar,@FileID) + '/' + @FileOpenYr
		END
		
		IF ISNULL(@GenFileNo,'') <> ''
		BEGIN
			UPDATE [FileMaster]
			SET GenFileNo = @GenFileNo
			WHERE FileID = @FileID
		END
				
		if (@@ROWCOUNT=0)
		BEGIN
			raiserror('File Number Not Added',16,1)
			return -1
		END
		
		DECLARE @MoveDt [Datetime]
		SET @MoveDt = GETDATE()
		EXEC [usp_Add_FileMovement] @FileID,'I',@DeptID, @MoveDt, '', @CreatedBy,@UsrID

RETURN @@IDENTITY				
END
GO
/****** Object:  View [dbo].[vw_FileMaster]    Script Date: 09/11/2015 15:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW	[dbo].[vw_FileMaster]
AS
SELECT BD.BranchID, BD.BranchNm, BD.DeptNm, FM.* 
FROM [FileMaster] FM
INNER JOIN  [vw_BranchWiseDept] BD ON FM.DeptID = BD.DeptID
GO
/****** Object:  View [dbo].[vw_Users]    Script Date: 09/11/2015 15:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_Users]
AS
SELECT BD.BranchID, BD.BranchNm, BD.DeptNm, UM.* 
FROM Users UM
LEFT OUTER JOIN [vw_BranchWiseDept] BD ON UM.DeptID = BD.DeptID
GO
/****** Object:  View [dbo].[vw_FileMovement]    Script Date: 09/11/2015 15:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW	[dbo].[vw_FileMovement]
AS
SELECT FMS.BranchID, FMS.BranchNm, FileCreatedDept = FMS.DeptID, FMS.DeptNm, FMS.FileNum, FMS.SubMatter, FMS.FileOpenYr, FMS.FileFollowUp, FMS.LastFollowupBy, FMS.LastFollowupDt, FMV.* FROM [FileMovement] FMV
INNER JOIN [vw_FileMaster] FMS ON FMS.FileID = FMV.FileID
GO
/****** Object:  Default [DF_FileMovement_IsFileViewed]    Script Date: 09/11/2015 15:40:52 ******/
ALTER TABLE [dbo].[FileMovement] ADD  CONSTRAINT [DF_FileMovement_IsFileViewed]  DEFAULT ('N') FOR [IsFileViewed]
GO
/****** Object:  Default [DF__FileNumPr__Creat__1A14E395]    Script Date: 09/11/2015 15:40:52 ******/
ALTER TABLE [dbo].[FileNumPrefixSetup] ADD  DEFAULT (CONVERT([datetime],CONVERT([varchar](10),getdate(),(112)),(0))) FOR [CreatedDt]
GO
