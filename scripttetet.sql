USE [master]
GO
/****** Object:  Database [Imp_PhiltonePrintProof_Dev]    Script Date: 3/28/2018 5:17:58 PM ******/
CREATE DATABASE [Imp_PhiltonePrintProof_Dev]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Imp_Intranet_Dev', FILENAME = N'E:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Imp_PhiltonePrintProof_Dev.mdf' , SIZE = 13568KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'Imp_Intranet_Dev_log', FILENAME = N'E:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Imp_PhiltonePrintProof_Dev_log.ldf' , SIZE = 181184KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Imp_PhiltonePrintProof_Dev] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Imp_PhiltonePrintProof_Dev].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Imp_PhiltonePrintProof_Dev] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Imp_PhiltonePrintProof_Dev] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Imp_PhiltonePrintProof_Dev] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Imp_PhiltonePrintProof_Dev] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Imp_PhiltonePrintProof_Dev] SET ARITHABORT OFF 
GO
ALTER DATABASE [Imp_PhiltonePrintProof_Dev] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Imp_PhiltonePrintProof_Dev] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Imp_PhiltonePrintProof_Dev] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Imp_PhiltonePrintProof_Dev] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Imp_PhiltonePrintProof_Dev] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Imp_PhiltonePrintProof_Dev] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Imp_PhiltonePrintProof_Dev] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Imp_PhiltonePrintProof_Dev] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Imp_PhiltonePrintProof_Dev] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Imp_PhiltonePrintProof_Dev] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Imp_PhiltonePrintProof_Dev] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Imp_PhiltonePrintProof_Dev] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Imp_PhiltonePrintProof_Dev] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Imp_PhiltonePrintProof_Dev] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Imp_PhiltonePrintProof_Dev] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Imp_PhiltonePrintProof_Dev] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Imp_PhiltonePrintProof_Dev] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Imp_PhiltonePrintProof_Dev] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Imp_PhiltonePrintProof_Dev] SET RECOVERY FULL 
GO
ALTER DATABASE [Imp_PhiltonePrintProof_Dev] SET  MULTI_USER 
GO
ALTER DATABASE [Imp_PhiltonePrintProof_Dev] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Imp_PhiltonePrintProof_Dev] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Imp_PhiltonePrintProof_Dev] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Imp_PhiltonePrintProof_Dev] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Imp_PhiltonePrintProof_Dev]
GO
/****** Object:  User [IMPACT-IT\santanu]    Script Date: 3/28/2018 5:17:58 PM ******/
CREATE USER [IMPACT-IT\santanu] FOR LOGIN [IMPACT-IT\santanu] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [IMPACT-IT\Pritam]    Script Date: 3/28/2018 5:17:58 PM ******/
CREATE USER [IMPACT-IT\Pritam] FOR LOGIN [IMPACT-IT\Pritam] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [IMPACT-IT\Debasish]    Script Date: 3/28/2018 5:17:58 PM ******/
CREATE USER [IMPACT-IT\Debasish] FOR LOGIN [IMPACT-IT\Debasish] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [IMPACT-IT\bikash]    Script Date: 3/28/2018 5:17:58 PM ******/
CREATE USER [IMPACT-IT\bikash] FOR LOGIN [IMPACT-IT\bikash] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [bkas]    Script Date: 3/28/2018 5:17:58 PM ******/
CREATE USER [bkas] FOR LOGIN [bkas] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [IMPACT-IT\santanu]
GO
ALTER ROLE [db_owner] ADD MEMBER [IMPACT-IT\Pritam]
GO
ALTER ROLE [db_owner] ADD MEMBER [IMPACT-IT\Debasish]
GO
ALTER ROLE [db_owner] ADD MEMBER [IMPACT-IT\bikash]
GO
ALTER ROLE [db_owner] ADD MEMBER [bkas]
GO
/****** Object:  Schema [Administration]    Script Date: 3/28/2018 5:17:58 PM ******/
CREATE SCHEMA [Administration]
GO
/****** Object:  Schema [Client]    Script Date: 3/28/2018 5:17:58 PM ******/
CREATE SCHEMA [Client]
GO
/****** Object:  Schema [Common]    Script Date: 3/28/2018 5:17:58 PM ******/
CREATE SCHEMA [Common]
GO
/****** Object:  Schema [Customer]    Script Date: 3/28/2018 5:17:58 PM ******/
CREATE SCHEMA [Customer]
GO
/****** Object:  Schema [Intranet]    Script Date: 3/28/2018 5:17:58 PM ******/
CREATE SCHEMA [Intranet]
GO
/****** Object:  Schema [Jobs]    Script Date: 3/28/2018 5:17:58 PM ******/
CREATE SCHEMA [Jobs]
GO
/****** Object:  Schema [Master]    Script Date: 3/28/2018 5:17:58 PM ******/
CREATE SCHEMA [Master]
GO
/****** Object:  Schema [MasterSetup]    Script Date: 3/28/2018 5:17:58 PM ******/
CREATE SCHEMA [MasterSetup]
GO
/****** Object:  Schema [Note]    Script Date: 3/28/2018 5:17:58 PM ******/
CREATE SCHEMA [Note]
GO
/****** Object:  Schema [Project]    Script Date: 3/28/2018 5:17:58 PM ******/
CREATE SCHEMA [Project]
GO
/****** Object:  Schema [TaskManager]    Script Date: 3/28/2018 5:17:58 PM ******/
CREATE SCHEMA [TaskManager]
GO
/****** Object:  Schema [ToDo]    Script Date: 3/28/2018 5:17:58 PM ******/
CREATE SCHEMA [ToDo]
GO
/****** Object:  StoredProcedure [Administration].[usp_GetAllUsersList]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Santanu Paul
-- Create date: 22nd Mar 2018
-- Description:	Get all Users List who are active 
-- =============================================
CREATE PROCEDURE [Administration].[usp_GetAllUsersList]
AS
BEGIN
	SELECT   UserID
			,FirstName
			,LastName	 
			,FullName = ISNULL(FirstName,'') + ' ' + ISNULL(LastName,'')
	FROM [Administration].[User]
	WHERE IsActive = 1
	AND UserID <> 1
END

GO
/****** Object:  StoredProcedure [Administration].[usp_GetCityList]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author:Santanu Paul>
-- Create date: <Create Date : 16th Mar 2018>
-- Description:	<Description :Get CityList based on country id>
-- =============================================
CREATE PROCEDURE [Administration].[usp_GetCityList]
(
	@CountryID INT = 0
)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT	CityId,
			CityName 
	FROM [Administration].[City] 

	WHERE 
		(
			(ISNULL(@CountryID,0) = 0)
			OR
			(CountryID = @CountryID)
		)
		AND CityName IS NOT NULL
	order by CityName 
END

GO
/****** Object:  StoredProcedure [Administration].[usp_GetCountry]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author DEBASISH,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,GETTING Country Name and Id,>
-- =============================================
CREATE PROCEDURE [Administration].[usp_GetCountry]
(
	@CompanyId INT=0
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   SELECT   CountryId,CountryName FROM [Administration].[Country]
END
GO
/****** Object:  StoredProcedure [Administration].[usp_GetPostcodeList]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author:bikash karmkar>
-- Create date: <Create Date : 09th NOV 2017>
-- Description:	<Description :Get PostcodeList based on country id>
-- =============================================
CREATE PROCEDURE [Administration].[usp_GetPostcodeList]
(
	@CountryID INT
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [PostCodeId],[PostCodeNumber] FROM [Administration].[PostalCode] WHERE CountryID=@CountryID order by PostCodeNumber ASC
END
GO
/****** Object:  StoredProcedure [Administration].[usp_GetRoleById]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Administration].[usp_GetRoleById]
(
	@RoleId INT=0
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF(@RoleId>0)
	BEGIN
		 SELECT 0 as RoleID,'Please Select Role' as RoleName,'' as RoleDescription, 0 as DepartmentID
		 UNION ALL
		 SELECT RoleID,RoleName,[Description] AS RoleDescription,DepartmentID FROM [Administration].[Role] WHERE RoleID=@RoleId
	END
	ELSE
	BEGIN
		  SELECT 0 as RoleID,'Please Select Role' as RoleName,'' as RoleDescription, 0 as DepartmentID
		  UNION ALL
		  SELECT RoleID,RoleName,[Description],DepartmentID AS RoleDescription FROM [Administration].[Role]  WHERE RoleID <> 1
	END
END

GO
/****** Object:  StoredProcedure [Administration].[usp_GetRoleDetailByID]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************************************************************************
** Name: [Administration].[usp_GetRoleDetailByID]
** Desc: this procedure is used to get Role information by RoleID
** Auth: Santanu Paul
** Date: Oct-23 2017
**********************************************************************************
** Change History
**********************************************************************************
** PR   Date			 Author				Description 
** --   --------		-------				-------------------------------------
**********************************************************************************/
CREATE PROCEDURE [Administration].[usp_GetRoleDetailByID]
(
	@RoleID			INT		
)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT
		RoleID,
		RoleName,
		[Description] AS RoleDescription,
		DepartmentID
	FROM [Administration].[Role]
	WHERE RoleID = @RoleID
END
GO
/****** Object:  StoredProcedure [Administration].[usp_GetRoleGroupLabel]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Administration].[usp_GetRoleGroupLabel]
AS
BEGIN
	SELECT DepartmentID,DepartmentName FROM [Master].Department WHERE DepartmentID <> 1
END
GO
/****** Object:  StoredProcedure [Administration].[usp_GetRoleList]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Administration].[usp_GetRoleList]
(
   @startRowIndex INT=1,
   @maximumRows INT=20,
   @SearchRoleName VARCHAR(50)=NULL,
   @SortBy		VARCHAR(50) = NULL,
   @IsAscending	BIT = 1
)
AS
BEGIN

	

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	;WITH CTE (RoleID,RoleName,RoleDescription,DepartmentId,DepartmentName,RoleStatus)
	AS
	(
			SELECT R.RoleID,R.RoleName,R.[Description] AS RoleDescription,D.DepartmentId,D.DepartmentName,
			CASE WHEN R.IsActive=1 THEN 'Active' 
				 WHEN R.IsActive=0 THEN 'Deactive' 
			END RoleStatus 
			FROM [Administration].[Role] R
			LEFT OUTER JOIN
			[Master].[Department] D ON  D.DepartmentID=R.DepartmentID

			/* SANTANU 16-08-2017 : WHERE CLAUSE HAS BEEN PARTLY SHIFTED IN CTE */
			WHERE (
					(@SearchRoleName is NULL) 
					OR 
					RoleName LIKE '%'+@SearchRoleName+'%'
				  )
				  AND RoleID<>1
	)

	SELECT RoleID,RoleName,RoleDescription,DepartmentId,DepartmentName,RoleStatus,RowNumber
	FROM
	(
		SELECT RoleID,RoleName,RoleDescription,DepartmentId,DepartmentName,RoleStatus,ROW_NUMBER() OVER (ORDER BY
																					CASE WHEN @SortBy = 'DepartmentName' AND @IsAscending = 1 THEN DepartmentName END ASC,  
																					CASE WHEN @SortBy = 'DepartmentName' AND @IsAscending = 0 then DepartmentName END DESC,
																					CASE WHEN @SortBy = 'RoleName' AND @IsAscending = 1 THEN RoleName END ASC,  
																					CASE WHEN @SortBy = 'RoleName' AND @IsAscending = 0 then RoleName END DESC,
																					CASE WHEN @SortBy = 'Id' AND @IsAscending = 1 THEN RoleID END ASC,    
																					CASE WHEN @SortBy = 'Id' AND @IsAscending = 0 THEN RoleID END DESC    
																						)RowNumber FROM CTE
	) 
	R 
	WHERE RowNumber BETWEEN(@startRowIndex -1) * @maximumRows + 1 AND (((@startRowIndex -1) * @maximumRows + 1) + @maximumRows) - 1
	/* SANTANU 16-08-2017 : THIS BELOW LINE IS COMMENTED AND CLAUSE HAS BEEN PARTLY SHIFTED IN CTE */
	------WHERE RowNumber BETWEEN(@startRowIndex -1) * @maximumRows + 1 AND (((@startRowIndex -1) * @maximumRows + 1) + @maximumRows) - 1 AND ( (@SearchRoleName is NULL ) OR RoleName LIKE '%'+@SearchRoleName+'%')
	UNION ALL
	SELECT 0 RoleID,'' RoleName,'' RoleDescription,''DepartmentId,''DepartmentName,'' RoleStatus,COUNT(RoleID)RowNumber
	FROM CTE
END
GO
/****** Object:  StoredProcedure [Administration].[usp_GetRoleListByDepartmentId]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author: bikash karmakar>
-- Create date: <Create Date: 07th JUNE 2017>
-- Description:	<Description : Get List Of Department>
-- =============================================
-- =============================================
-- Author:		<Author: bikash karmakar>
-- Modifiedby: <Pritam Chakraborty>
-- Modified date: <Create Date: 06th DEC 2017>
-- Description:	<Description : Get List Of Department>
-- =============================================
CREATE PROCEDURE [Administration].[usp_GetRoleListByDepartmentId]
(
	@DepartmentID INT=0
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	IF @DepartmentID<>0
	BEGIN
	SELECT RoleID,RoleName FROM [Administration].[Role] WHERE DepartmentID=@DepartmentID AND IsActive=1
	END
	ELSE
	BEGIN
	SELECT RoleID,RoleName FROM [Administration].[Role] WHERE IsActive=1
	END
END
GO
/****** Object:  StoredProcedure [Administration].[usp_GetRoleMenuList]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Administration].[usp_GetRoleMenuList]
(
	@RoleID INT=NULL
)
AS
BEGIN
	DECLARE @CheckRoleId INT=NULL
    DECLARE @SearchRoleID INT=NULL
	SET @CheckRoleId =(SELECT top 1 ISNULL(RoleID,0) RoleID FROM [Administration].[MapMenuRole]  where RoleID=@RoleID)

	

	IF(@CheckRoleId is null)
	BEGIN
		SET @SearchRoleID=0
	END
	ELSE
	BEGIN
		SET @SearchRoleID=@CheckRoleId
	END

	IF(@SearchRoleID =0)
	BEGIN		
		  SELECT	ROW_NUMBER() OVER(Partition by M.MenuID ORDER BY M.MenuID) RowCounts,
					M.MenuID,
					M.MenuName,
					'False' CanView,
					'False' CanAdd,
					'False' CanEdit,
					'False' CanDelete
			FROM	[Master].Menu M			
			WHERE	ISNULL(M.IsModule,0)=1 AND ISNULL(M.IsActive,0)=1
	
		
		   SELECT	ROW_NUMBER() OVER(Partition by M1.MenuID ORDER BY M1.MenuID) RowCounts,
					M1.MenuID,
					M1.MenuName,
					M1.MenuUrl,			
					M1.ParentMenuID,
					M2.MenuName as ParentMenu,
					M3.MenuName as Module,
					'False' CanView,
					'False' CanAdd,
					'False' CanEdit,
					'False' CanDelete	
			FROM	[Master].Menu M1	
					LEFT OUTER JOIN [Master].Menu M2 ON M1.ParentMenuID=M2.MenuID 
					LEFT OUTER JOIN [Master].Menu M3 ON M2.ParentMenuID=M3.MenuID AND M3.IsModule=1					
			WHERE	ISNULL(M1.IsActive,0)=1 AND ISNULL(M1.IsModule,0)=0
		
	END
	ELSE IF(@SearchRoleID >0)
	BEGIN
		
		SELECT	M.MenuID,
				M.MenuName,
				ISNULL(MM.CanView,'False')CanView,
				ISNULL(MM.CanAdd,'False')CanAdd,
				ISNULL(MM.CanEdit,'False')CanEdit,
				ISNULL(MM.CanDelete,'False')CanDelete
		FROM	[Master].Menu M
				LEFT  OUTER JOIN
				[Administration].[MapMenuRole] MM ON M.MenuID=MM.MenuID AND MM.RoleID=@SearchRoleID
		WHERE	ISNULL(M.IsModule,0)=1 
				AND 
				ISNULL(M.IsActive,0)=1 
				
		
		SELECT	
				M1.MenuID,
				M1.MenuName,
				M1.MenuUrl,			
				M1.ParentMenuID,
				M2.MenuName as ParentMenu,
				M3.MenuName as Module,
				ISNULL(MM.CanView,'False')CanView,
				ISNULL(MM.CanAdd,'False')CanAdd,
				ISNULL(MM.CanEdit,'False')CanEdit,
				ISNULL(MM.CanDelete,'False')CanDelete	
		FROM	[Master].Menu M1	
				LEFT OUTER JOIN [Master].Menu M2 ON M1.ParentMenuID=M2.MenuID 
				LEFT OUTER JOIN [Master].Menu M3 ON M2.ParentMenuID=M3.MenuID AND M3.IsModule=1
				LEFT  OUTER JOIN [Administration].[MapMenuRole] MM ON M1.MenuID=MM.MenuID AND MM.RoleID=@SearchRoleID
		WHERE	ISNULL(M1.IsActive,0)=1 
				AND 
				ISNULL(M1.IsModule,0)=0 
				
		

	END
END
GO
/****** Object:  StoredProcedure [Administration].[usp_GetStateList]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author:bikash karmkar>
-- Create date: <Create Date : 09th NOV 2017>
-- Description:	<Description :Get StateList based on country id>
-- =============================================
CREATE PROCEDURE [Administration].[usp_GetStateList]
(
	@CountryID INT
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT StateId,StateName FROM [Administration].[State] WHERE CountryID=@CountryID order by StateName ASC
END

GO
/****** Object:  StoredProcedure [Administration].[usp_GetUserbyId]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bikash Karmakar
-- Create date: 13th JUNE 2017
-- Description:	Get User detail bsaed on UsedID
-- =============================================
CREATE PROCEDURE [Administration].[usp_GetUserbyId]
(
	@UserID BIGINT=0
)	

AS
BEGIN
	SET NOCOUNT ON;
    BEGIN	TRY		  
	SELECT	ROW_NUMBER() OVER(Partition by U.UserId ORDER BY U.UserId) AS RowCounts,
			U.UserID,			
			U.FirstName,
			U.LastName,
			U.LoginName,
			U.LoginPassword,
			U.EmailAddress,
			U.PhoneNumber,
			ISNULL(R.RoleID,0)RoleID,
			R.RoleName,
			ISNULL(U.[Type],0) AS IsProjectManager,
			ISNULL(D.DepartmentID,0)DepartmentID,
			D.DepartmentName,
			ISNULL(U.CityId,0)CityId,			
			ISNULL(U.CountryId,0)CountryId,
			AC.CountryName,
			U.ProfileImage,
			U.[Address],
			U.Remark,
			U.DOB,
			U.GuardianName,
			U.GuardianContact,
			U.EmergencyContact,
			U.Notes,
			U.PersonalEmail,
			U.PersonalContactNumber,
			U.Skype,
			U.Gender,
			U.SkypePassword,
			AC.CountryName,
			AC1.CityName,
			ISNULL(AS1.StateId,0)StateId,
			AS1.StateName,
			ISNULL(AP.PostCodeId,0)PostCodeId,
			AP.PostCodeNumber,
			ISNULL(U.[Status],0) [Status],
			U.DOJ,
			ISNULL(U.IsActive,0) IsActive
	FROM	[Administration].[User] U
			LEFT OUTER JOIN
			[Master].[Department] D ON  D.DepartmentID=U.DepartmentID
			LEFT OUTER JOIN
			[Administration].[Role] R ON  D.DepartmentID=U.DepartmentID AND R.RoleID=U.RoleId
			LEFT OUTER JOIN
			[Administration].[Country] AC ON U.CountryId=AC.CountryId
			LEFT OUTER JOIN
			[Administration].[City] AC1 ON U.CityId=AC1.CityId
			LEFT OUTER JOIN
			[Administration].[State] AS1 ON U.StateId=AS1.StateId
			LEFT OUTER JOIN
			[Administration].[PostalCode] AP ON U.PostCodeId=AP.PostCodeId
	WHERE	U.UserID=@UserID
	END TRY
	BEGIN CATCH
	SELECT	ERROR_NUMBER() AS ErrorNumber,
				ERROR_SEVERITY() AS ErrorSeverity,
				ERROR_STATE() AS ErrorState,
				ERROR_PROCEDURE() AS ErrorProcedure,
				ERROR_LINE() AS ErrorLine,
				ERROR_MESSAGE() AS ErrorMessage;		
	END CATCH
END


GO
/****** Object:  StoredProcedure [Administration].[usp_GetUserGroupLabel]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Administration].[usp_GetUserGroupLabel]
AS
BEGIN
	SELECT A.RoleID,RoleName
	FROM
	(
	SELECT RoleID FROM [Administration].[User] WHERE RoleId<> 1 GROUP BY [Administration].[User].RoleId
	) A LEFT OUTER JOIN [Administration].[Role] B ON A.RoleId=B.RoleID
END


GO
/****** Object:  StoredProcedure [Administration].[usp_GetUserList]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Bikash Karmakar
-- Create date: 09th June 2017
-- Description:	Get the List of User
-- =============================================
-- Changes
--PR   Date        Author			Description
--1    13/11/2017  Bikash Karmakar  In Select query add column name-'Skype' for user Listing

CREATE PROCEDURE [Administration].[usp_GetUserList]
(
   @startRowIndex INT=1,
   @maximumRows INT=20,
   @SearchUserName VARCHAR(50)=NULL,
   @DepartmentID VARCHAR(50)=NULL,
   @RoleID VARCHAR(50)= NULL,
   @SortBy		VARCHAR(50) = NULL,
   @IsAscending	BIT = 1
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   ;WITH CTE (RowCounts,UserID,LoginName,FullName,EmailAddress,PhoneNumber,RoleID,RoleName,DepartmentID,DepartmentName,UserStatus,Skype,IsActive,[Status])
	AS
	(
		SELECT * FROM 
		(
			SELECT ROW_NUMBER() OVER(Partition by U.UserId ORDER BY U.UserId) AS RowCounts,
				   U.UserID,
				   U.LoginName,
				   [dbo].[GetUserName](U.FirstName,'',U.LastName) AS FullName,
				   U.EmailAddress,
				   U.PhoneNumber,
				   R.RoleID,
				   R.RoleName,
				   D.DepartmentID,
				   D.DepartmentName,
				   CASE WHEN U.IsActive=1 THEN 'Active' 
							WHEN U.IsActive=0 THEN 'Deactive' 
				   END UserStatus,
				   U.Skype,
				   ISNULL(U.IsActive,0) IsActive,
				   ISNULL(U.[Status],0) [Status]
			FROM [Administration].[User] U
			LEFT OUTER JOIN
			[Master].[Department] D ON  D.DepartmentID=U.DepartmentID
			LEFT OUTER JOIN
			[Administration].[Role] R ON  R.DepartmentID=U.DepartmentID and R.RoleID=U.RoleId
		)T
		WHERE T.RowCounts=1	 AND T.UserID<>1
	)

	SELECT RowCounts,UserID,LoginName,FullName,EmailAddress,PhoneNumber,RoleID,RoleName,DepartmentID,DepartmentName,UserStatus,Skype,IsActive,[Status],RowNumber
	FROM
	(
		SELECT RowCounts,UserID,LoginName,FullName,EmailAddress,PhoneNumber,RoleID,RoleName,DepartmentID,DepartmentName
																					,UserStatus,Skype,IsActive,[Status],ROW_NUMBER() OVER 
																				   (ORDER BY
																					CASE WHEN @SortBy = 'LoginName' AND @IsAscending = 1 THEN LoginName END ASC,  
																					CASE WHEN @SortBy = 'LoginName' AND @IsAscending = 0 then LoginName END DESC,
																					CASE WHEN @SortBy = 'FullName' AND @IsAscending = 1 THEN FullName END ASC,  
																					CASE WHEN @SortBy = 'FullName' AND @IsAscending = 0 then FullName END DESC,
																					CASE WHEN @SortBy = 'UserID' AND @IsAscending = 1 THEN UserID END ASC,    
																					CASE WHEN @SortBy = 'UserID' AND @IsAscending = 0 THEN UserID END DESC,  
																					CASE WHEN @SortBy = 'EmailAddress' AND @IsAscending = 1 THEN EmailAddress END ASC,    
																					CASE WHEN @SortBy = 'EmailAddress' AND @IsAscending = 0 THEN EmailAddress END DESC, 
																					CASE WHEN @SortBy = 'RoleName' AND @IsAscending = 1 THEN RoleName END ASC,    
																					CASE WHEN @SortBy = 'RoleName' AND @IsAscending = 0 THEN RoleName END DESC,
																					CASE WHEN @SortBy = 'PhoneNumber' AND @IsAscending = 1 THEN PhoneNumber END ASC,    
																					CASE WHEN @SortBy = 'PhoneNumber' AND @IsAscending = 0 THEN PhoneNumber END DESC,
																					CASE WHEN @SortBy = 'DepartmentName' AND @IsAscending = 1 THEN DepartmentName END ASC,    
																					CASE WHEN @SortBy = 'DepartmentName' AND @IsAscending = 0 THEN DepartmentName END DESC
																					)RowNumber FROM CTE
	)
	R 
	WHERE RowNumber BETWEEN(@startRowIndex -1) * @maximumRows + 1 AND (((@startRowIndex -1) * @maximumRows + 1) + @maximumRows) - 1 
		AND 
			( 
				(@SearchUserName is NULL ) 
				OR 
				LoginName LIKE '%'+@SearchUserName+'%'
			) 
		AND
			(
				(@DepartmentID IS NULL)
				OR
				(DepartmentID LIKE '%'+@DepartmentID+'%')
			)
		AND
			(
				(@RoleID IS NULL)
				OR
				(RoleID LIKE '%'+@RoleID+'%')
			)
	UNION ALL
	SELECT 0 RowCounts,0 UserID,'' LoginName,'' FullName,'' EmailAddress,'' PhoneNumber,0 RoleID,'' RoleName,0 DepartmentID,'' DepartmentName,'' UserStatus,''Skype,0,0,COUNT(UserID)RowNumber
	FROM CTE
END

GO
/****** Object:  StoredProcedure [Administration].[usp_GetUserMenuList]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Administration].[usp_GetUserMenuList]
(
	@UserID INT=0
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @CheckUserId INT=NULL
    DECLARE @SearchUserID INT=NULL
	SET @CheckUserId =(SELECT top 1 ISNULL(UserID,0) UserID FROM [Administration].[MapMenuUser]  where UserID=@UserID)



	IF(@CheckUserId is null)
	BEGIN
		SET @SearchUserID=0
	END
	ELSE
	BEGIN
		SET @SearchUserID=@CheckUserId
	END



  IF(@SearchUserID =0)
	BEGIN
		SELECT MenuID,MenuName,CanView,CanAdd,CanEdit,CanDelete FROM
		(
		  SELECT	ROW_NUMBER() OVER(Partition by M.MenuID ORDER BY M.MenuID) RowCounts,
					M.MenuID,
					M.MenuName,
					'False' CanView,
					'False' CanAdd,
					'False' CanEdit,
					'False' CanDelete
			FROM	[Master].Menu M			
			WHERE	ISNULL(M.IsModule,0)=1 AND ISNULL(M.IsActive,0)=1
	
		) T WHERE T.RowCounts=1

	
		SELECT MenuID,MenuName,MenuUrl,ParentMenuID,ParentMenu,Module,CanView,CanAdd,CanEdit,CanDelete FROM
		(
		   SELECT	ROW_NUMBER() OVER(Partition by M1.MenuID ORDER BY M1.MenuID) RowCounts,
					M1.MenuID,
					M1.MenuName,
					M1.MenuUrl,			
					M1.ParentMenuID,
					M2.MenuName as ParentMenu,
					M3.MenuName as Module,
					'False' CanView,
					'False' CanAdd,
					'False' CanEdit,
					'False' CanDelete	
			FROM	[Master].Menu M1	
					LEFT OUTER JOIN [Master].Menu M2 ON M1.ParentMenuID=M2.MenuID 
					LEFT OUTER JOIN [Master].Menu M3 ON M2.ParentMenuID=M3.MenuID AND M3.IsModule=1					
			WHERE	ISNULL(M1.IsActive,0)=1 AND ISNULL(M1.IsModule,0)=0
		)R WHERE R.RowCounts=1
	END
	ELSE IF(@SearchUserID >0)
	BEGIN
		SELECT * FROM
		(
		SELECT	   ROW_NUMBER() OVER(Partition by M.MenuID ORDER BY M.MenuID) RowCounts,
					M.MenuID,
					M.MenuName,
					ISNULL(MM.CanView,'False')CanView,
					ISNULL(MM.CanAdd,'False')CanAdd,
					ISNULL(MM.CanEdit,'False')CanEdit,
					ISNULL(MM.CanDelete,'False')CanDelete
			FROM	[Master].Menu M
			LEFT  OUTER JOIN
			[Administration].[MapMenuUser] MM ON M.MenuID=MM.MenuID AND MM.UserID=@SearchUserID
			WHERE	ISNULL(M.IsModule,0)=1 
					AND 
					ISNULL(M.IsActive,0)=1 
		)A WHERE A.RowCounts = 1			
	
	
		SELECT * FROM
		(
		   SELECT	ROW_NUMBER() OVER(Partition by M1.MenuID ORDER BY M1.MenuID) RowCounts,	
					M1.MenuID,
					M1.MenuName,
					M1.MenuUrl,			
					M1.ParentMenuID,
					M2.MenuName as ParentMenu,
					M3.MenuName as Module,
					ISNULL(MM.CanView,'False')CanView,
					ISNULL(MM.CanAdd,'False')CanAdd,
					ISNULL(MM.CanEdit,'False')CanEdit,
					ISNULL(MM.CanDelete,'False')CanDelete	
			FROM	[Master].Menu M1	
					LEFT OUTER JOIN [Master].Menu M2 ON M1.ParentMenuID=M2.MenuID 
					LEFT OUTER JOIN [Master].Menu M3 ON M2.ParentMenuID=M3.MenuID AND M3.IsModule=1
					LEFT OUTER JOIN [Administration].[MapMenuUser] MM ON M1.MenuID=MM.MenuID AND MM.UserID=@SearchUserID
			WHERE	ISNULL(M1.IsActive,0)=1 
					AND 
					ISNULL(M1.IsModule,0)=0 
		)B WHERE B.RowCounts = 1		

	END
END

GO
/****** Object:  StoredProcedure [Administration].[usp_InsertRole]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Administration].[usp_InsertRole]
(
	@DepartmentID			INT=0,
	@RoleName				VARCHAR(50)=NULL,
	@RoleDescription		NVARCHAR(500)=NULL,	
	@CreatedBy				INT=0,
	@ReturnValue			INT OUTPUT,
	@ReturnValueMessage		VARCHAR(500) OUTPUT
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

	IF NOT EXISTS (SELECT 1 FROM [Administration].[Role] WHERE  DepartmentID = @DepartmentID AND RoleName = @RoleName)
	BEGIN
		INSERT INTO [Administration].[Role]
		(
			[DepartmentID],
			[RoleName],
			[Description],			
			[IsActive],
			[CreatedBy]
		)
		VALUES
		(
			@DepartmentID,
			@RoleName,
			@RoleDescription,			
			1,
			@CreatedBy
		
		)
		SET @ReturnValue=1;
		SET @ReturnValueMessage='Role insert successful.';
	END
	ELSE
	BEGIN
		SET @ReturnValue=0;
		SET @ReturnValueMessage='Role already exists';
	END
END

GO
/****** Object:  StoredProcedure [Administration].[usp_InsertUpdateRoleMapMenu]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/******************************       
** Name: [Administration].[usp_InsertUpdateRoleMapMenu]
** Desc: This update menu privilege against the role as well as menu privilege against all the user against that role
** Auth: Arunava Mitra
** Date: 13th October 2017
**************************
** Change History
**************************
** PR   Date        Author  Description 
** --   --------   -------   ------------------------------------
** 1    
*******************************/
CREATE PROCEDURE [Administration].[usp_InsertUpdateRoleMapMenu]
(	
	@RoleID INT=NULL,
	@XmlViewDoc NVARCHAR(MAX) =NULL,	
	@ReturnValue INT OUTPUT,
	@ReturnValueMessage VARCHAR(500) OUTPUT
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF(@XmlViewDoc !='')
	BEGIN	
			DECLARE @DocHandle INT;
			EXEC sp_xml_preparedocument @DocHandle OUTPUT, @XmlViewDoc 

			DECLARE @ViewTable TABLE
			(
				ID INT IDENTITY(1, 1),
				MenuID INT,
				RoleID INT,
				CanView BIT				
			)
						
			INSERT INTO @ViewTable
			(   
				MenuID,
				RoleID,
				CanView				
			)
			SELECT
			MenuID,
			@RoleID,
			CanView				
			FROM OPENXML (@DocHandle,'/CanViewLists/CanViewList',2)
			WITH 
			(
				MenuID INT,				
				CanView BIT				
			)			
			
			EXEC sp_xml_removedocument @DocHandle
	END	
		IF((Select Count(*) FROM @ViewTable)>0)
		BEGIN
			UPDATE  [Administration].[MapMenuRole] SET CanView=0 WHERE RoleID=@RoleID
			MERGE [Administration].[MapMenuRole] AS T
			USING @ViewTable AS S
			ON T.MenuID=S.MenuID AND T.RoleID=S.RoleID 
			WHEN MATCHED THEN
			UPDATE SET T.CanView=S.CanView
			WHEN NOT MATCHED THEN
			INSERT 
			(  
				MenuID,
				RoleID,
				CanView
			)
			VALUES
			(
				S.MenuID,
				@RoleID,
				S.CanView
			)			
			OUTPUT $action, Inserted.MenuID, Inserted.RoleID;

			DECLARE @UserID BIGINT=0			
			DECLARE db_cursor CURSOR FOR  
			SELECT	UserID FROM Administration.[User] WHERE RoleId=@RoleID
			OPEN db_cursor  
			FETCH NEXT FROM db_cursor INTO @UserID  
			WHILE @@FETCH_STATUS = 0  
			BEGIN  
				PRINT @UserID

				MERGE [Administration].[MapMenuUser] AS T
				USING (SELECT * FROM [Administration].[MapMenuRole] WHERE RoleID=@RoleID)  AS S
				ON T.MenuID=S.MenuID AND S.RoleID=@RoleID AND T.UserID=@UserID
				WHEN MATCHED THEN
				UPDATE SET T.CanView=S.CanView	
				WHEN NOT MATCHED THEN
				INSERT 
				(  
					MenuID,
					UserID,
					RoleID,
					CanView
				)
				VALUES
				(
					S.MenuID,
					@UserID,
					@RoleID,
					S.CanView
				)			
				OUTPUT $action, Inserted.MenuID,Inserted.UserID, Inserted.RoleID;

				FETCH NEXT FROM db_cursor INTO @UserID
			END 
			CLOSE db_cursor  
			DEALLOCATE db_cursor 
		

			SET @ReturnValue=1;
			SET @ReturnValueMessage='Role privilege save successfully';
		END
		ELSE
		BEGIN
			SELECT ERROR_LINE(),ERROR_NUMBER(),ERROR_PROCEDURE();
			SET @ReturnValue=-1;
			SET @ReturnValueMessage='Some problem in saving. Please Try Again....';
		END
END


GO
/****** Object:  StoredProcedure [Administration].[usp_InsertUpdateUserMapMenu]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Administration].[usp_InsertUpdateUserMapMenu]
(	
	@UserID INT=NULL,
	@XmlViewDoc NVARCHAR(MAX) =NULL,	
	@ReturnValue INT OUTPUT,
	@ReturnValueMessage VARCHAR(500) OUTPUT
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF(@XmlViewDoc !='')
	BEGIN	
			DECLARE @DocHandle INT;
			EXEC sp_xml_preparedocument @DocHandle OUTPUT, @XmlViewDoc 

			DECLARE @ViewTable TABLE
			(
				ID INT IDENTITY(1, 1),
				MenuID INT,
				UserID INT,
				CanView BIT				
			)
						
			INSERT INTO @ViewTable
			(   
				MenuID,
				UserID,
				CanView				
			)
			SELECT
			MenuID,
			@UserID,
			CanView				
			FROM OPENXML (@DocHandle,'/CanViewLists/CanViewList',2)
			WITH 
			(
				MenuID INT,				
				CanView BIT				
			)			
			
			EXEC sp_xml_removedocument @DocHandle
	END	
		IF((Select Count(*) FROM @ViewTable)>0)
		BEGIN
			UPDATE  [Administration].[MapMenuUser] SET CanView=0 WHERE UserID=@UserID
			MERGE [Administration].[MapMenuUser] AS T
			USING @ViewTable AS S
			ON T.MenuID=S.MenuID AND T.UserID=S.UserID 
			WHEN MATCHED THEN
			UPDATE SET T.CanView=S.CanView
			WHEN NOT MATCHED THEN
			INSERT 
			(  
				MenuID,
				UserID,
				CanView
			)
			VALUES
			(
				S.MenuID,
				@UserID,
				S.CanView
			)			
			OUTPUT $action, Inserted.MenuID, Inserted.UserID;

			SET @ReturnValue=1;
			SET @ReturnValueMessage='User privilege save successfully';
		END
		ELSE
		BEGIN
			SELECT ERROR_LINE(),ERROR_NUMBER(),ERROR_PROCEDURE();
			SET @ReturnValue=-1;
			SET @ReturnValueMessage='Some problem in saving. Please Try Again....';
		END
END

GO
/****** Object:  StoredProcedure [Administration].[usp_InsertUser]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Bikash Karmakar
-- Create date: 09th JUne 2017
-- Description:	Insert new user in user table-- 
--=============================================
--** Change History
--**************************
--** PR   Date        Author				Description 
--** --   --------   -------				------------------------------------
--** 1    13/07/2017  Bikash Karmakar		Add new field

CREATE PROCEDURE [Administration].[usp_InsertUser]
(
	@FirstName VARCHAR(50)=NULL,
	@LastName VARCHAR(50)=NULL,
	@LoginName VARCHAR(100)=NULL,
	@LoginPassword VARCHAR(50)=NULL,
	@DepartmentId INT=0,
	@RoleId INT=0,
	@DesignationId INT=0,
	@PhoneNumber VARCHAR(15)=NULL,
	@EmailAddress VARCHAR(50)=NULL,
	@Address VARCHAR(100)=NULL,
	@CityName NVARCHAR(50)=NULL,
	@Gender NVARCHAR(10)=NULL,
	@CountryID INT=NULL,
	@ProfileImage VARCHAR(500)=NULL,		
	@DOB NVARCHAR(50)=NULL,
	@GuardianName NVARCHAR(50)=NULL,
	@GuardianContact NVARCHAR(50)=NULL,
	@EmergencyContact NVARCHAR(50)=NULL,
	@Notes NVARCHAR(500)=NULL,
	@PersonalEmail NVARCHAR(50)=NULL,
	@Skype NVARCHAR(50)=NULL,
	@PersonalContactNumber NVARCHAR(50)=NULL,
	@StateName NVARCHAR(50)=NULL,
	@PostCode NVARCHAR(50)=NULL,
	@SkypePassword NVARCHAR(50)=NULL,	
	@DOJ NVARCHAR(50)=NULL,
	@CompanyId INT=0,
	@Type  INT=0,
	@CreatedBy INT=0,	
	@ReturnValue INT OUTPUT,
	@ReturnValueMessage VARCHAR(500) OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN	TRY		  
	BEGIN TRANSACTION    
	DECLARE @UserID BIGINT; 
	DECLARE @CityID BIGINT;
	DECLARE @StateID BIGINT;
	DECLARE @PostCodeID BIGINT;

	IF NOT EXISTS(SELECT LoginName FROM [Administration].[User] WHERE LoginName = @LoginName)
	BEGIN
		INSERT INTO [Administration].[User]
		(
			 [FirstName]
			,[LastName]
			,[LoginName]
			,[LoginPassword]
			,[Description]
			,[DepartmentId]
			,[RoleId]
			,[DesignationId]
			,[PhoneNumber]
			,[EmailAddress]
			,[Address]
			,[Gender]
			,[CountryId]
			,[ProfileImage]
			,[CompanyId]
			,[Type]
			,[CreatedBy]
			,[CreatedOn]
			,[Remark]
			,[IsActive]
			,[DOB]
			,[GuardianName]
			,[GuardianContact]
			,[EmergencyContact]
			,[Notes]
			,[PersonalEmail]
			,[Skype]
			,[PersonalContactNumber]
			--,[StateId]
			--,[PostCodeId]
			,[SkypePassword]	
			,[DOJ]
			,CasualLeave
			,SickLeave
			,SpecialLeave
			,[Status]

		)
		VALUES
		(
			@FirstName ,
			@LastName ,
			@LoginName ,
			@LoginPassword ,
			NULL ,
			@DepartmentId ,
			@RoleId ,
			@DesignationId ,
			@PhoneNumber,
			@EmailAddress ,
			@Address ,
			@Gender ,
			@CountryID ,
			@ProfileImage,
			@CompanyId ,
			0,
			@CreatedBy ,
			GETDATE() ,			   
			NULL ,
			1,
			@DOB,
			@GuardianName,
			@GuardianContact,
			@EmergencyContact,
			@Notes,
			@PersonalEmail,
			@Skype,
			@PersonalContactNumber,
			--@StateId,
			--@PostCodeId,
			@SkypePassword,
			@DOJ,
			0,
			10,
			0,
			1
		)

		SET @UserID =SCOPE_IDENTITY();

		INSERT INTO [Administration].[MapMenuUser]
        (
			[MenuID]
           ,[UserID]
           ,[RoleID]
           ,[CanAdd]
           ,[CanEdit]
           ,[CanDelete]
           ,[CanView]
           ,[PermissionWeight]
		 )		
		 (
		  SELECT [MenuID]
				, @UserID
				,[RoleID]
				,[CanAdd]
				,[CanEdit]
				,[CanDelete]
				,[CanView]
				,NULL
			FROM [Administration].[MapMenuRole]
			WHERE RoleID=@RoleId		 
		 )

		IF NOT EXISTS (SELECT 1 FROM Administration.City WHERE CityName=@CityName AND CountryID=@CountryID)
		BEGIN
			 INSERT INTO Administration.City(CityName,CountryID) VALUES (@CityName,@CountryID)
			 SET @CityID =SCOPE_IDENTITY();
		END
		ELSE
		BEGIN
			SET @CityID=(SELECT TOP(1) CityId FROM Administration.City WHERE CityName=@CityName AND CountryID=@CountryID)
		END

		IF NOT EXISTS (SELECT 1 FROM Administration.[State] WHERE StateName=@StateName AND CountryID=@CountryID)
		BEGIN
			 INSERT INTO Administration.[State] (StateName,CountryID) VALUES (@StateName,@CountryID)
			 SET @StateID =SCOPE_IDENTITY();
		END
		ELSE
		BEGIN
			SET @StateID=(SELECT TOP(1) StateId FROM Administration.[State] WHERE StateName=@StateName AND CountryID=@CountryID)
		END

		IF NOT EXISTS (SELECT 1 FROM Administration.[PostalCode] WHERE PostCodeNumber=@PostCode AND CountryID=@CountryID)
		BEGIN
			 INSERT INTO Administration.[PostalCode] (PostCodeNumber,CountryID) VALUES (@PostCode,@CountryID)
			 SET @PostCodeID =SCOPE_IDENTITY();
		END
		ELSE
		BEGIN
			SET @PostCodeID=(SELECT TOP(1) PostCodeId FROM Administration.[PostalCode] WHERE PostCodeNumber=@PostCode AND CountryID=@CountryID)
		END

		UPDATE Administration.[User] SET CityId=@CityID,StateId=@StateID,PostCodeId=@PostCodeID WHERE UserID=@UserID

		SET @ReturnValue=1;
		SET @ReturnValueMessage='User insert successful.';
	END
	ELSE
	BEGIN
		SET @ReturnValue=0;
		SET @ReturnValueMessage='Username already exists';
	END
	COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
	SELECT	ERROR_NUMBER() AS ErrorNumber,
				ERROR_SEVERITY() AS ErrorSeverity,
				ERROR_STATE() AS ErrorState,
				ERROR_PROCEDURE() AS ErrorProcedure,
				ERROR_LINE() AS ErrorLine,
				ERROR_MESSAGE() AS ErrorMessage;
				
			IF @@TRANCOUNT > 0
				SET @ReturnValue = -3  
				SET @ReturnValueMessage='Somthing want wrong.'
				ROLLBACK TRANSACTION			
	END CATCH
END


GO
/****** Object:  StoredProcedure [Administration].[usp_IsValidUser]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/******************************       
** Name: [Administration].[usp_IsValidUser]
** Desc: Validate user
** Auth: 
** Date: --
**************************
** Change History
**************************
** PR   Date			Author			Description 
** --   --------		-------			------------------------------------
** 1    30th Jan, 2018	Santanu Paul	Added a new column in the detail i.e RoleID
******************************/
CREATE PROCEDURE [Administration].[usp_IsValidUser]
(
	@LoginName NVARCHAR(100)=NULL,
	@LoginPassowrd NVARCHAR(100)=NULL
)
AS
BEGIN	
	SELECT	UserID,
			LoginName,
			CompanyId,
			ISNULL(IsCompanyAdmin,0) IsAdmin,
			ProfileImage,
			FirstName,
			LastName,
			EmailAddress,
			RoleId
	FROM	Administration.[User] 
	WHERE	LoginName = @LoginName 
	AND [LoginPassword] = @LoginPassowrd
END

GO
/****** Object:  StoredProcedure [Administration].[usp_MenuGetUserList]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Administration].[usp_MenuGetUserList] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


    -- Insert statements for procedure here
	SELECT  0 as UserID, 'Please Select User' as FullName,0 as RoleID
	UNION ALL
	SELECT	UserID,(FirstName +' '+LastName) FullName,B.RoleID
	FROM	[Administration].[User] A LEFT OUTER JOIN [Administration].[Role] B ON A.RoleId=B.RoleID
	WHERE	A.IsActive=1  AND A.UserID<> 1
	
	--AND ISNULL(IsCompanyAdmin,0)!=1

	
END

GO
/****** Object:  StoredProcedure [Administration].[usp_ResetUserPassword]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




/******************************       
** Name: [Administration].[usp_IsValidUser]
** Desc: Validate user
** Auth: 
** Date: --
**************************
** Change History
**************************
** PR   Date			Author			Description 
** --   --------		-------			------------------------------------
** 1    30th Jan, 2018	Santanu Paul	Added a new column in the detail i.e RoleID
******************************/
CREATE PROCEDURE [Administration].[usp_ResetUserPassword]
(
	@EmailAddress NVARCHAR(100)=NULL,
	@EncodedPassword NVARCHAR(100)=NULL,
	@NewPassword NVARCHAR(100)=NULL
)
AS
BEGIN	
	DECLARE @MailBody NVARCHAR(MAX)=NULL;
	DECLARE @LoginName NVARCHAR(100)=NULL;	

	IF EXISTS(SELECT 1 FROM Administration.[User] WHERE EmailAddress=@EmailAddress)
	BEGIN		

		UPDATE	Administration.[User] 
		SET		LoginPassword= @EncodedPassword,
				@LoginName=LoginName
		WHERE	EmailAddress=@EmailAddress

		SET @MailBody='<table style=''font-family:arial''><tr><td><h5>Print proof approval account password changed</h5></td></tr>'
					 +'<tr><td></td></tr>'
					 +'<tr><td><h1>Your Password Changed</h1></td></tr>'
					 +'<tr><td></td></tr>'
					 +'<tr><td>Login Name: '+@LoginName+'</td></tr>'
					 +'<tr><td>New Password: '+@NewPassword+'</td></tr>'
					 +'<tr><td></td></tr></table>'

		SELECT 'Print proof approval account password changed' as [Subject],@MailBody as 'MailBody'
	END
END

GO
/****** Object:  StoredProcedure [Administration].[usp_UpdateProfile]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Bikash Karmakar
-- Create date: 6/13/2017 4:02 PM
-- Description:	Update the user detail based on UserID
-- =============================================
--**************************
--** Change History
--**************************
--** PR   Date         Author			Description 
--** --   --------    -------			------------------------------------
--** 1    08/07/2017  Bikash Karmakar   Add new Field in [Administration].[User]
--** 1    12/01/2018  Arunava Mitra		Update few fields regarding the User Status Perment ON and Active State

CREATE PROCEDURE [Administration].[usp_UpdateProfile]
(
	@UserID INT=0,
	@FirstName NVARCHAR(500)=NULL,
	@LastName NVARCHAR(500)=NULL,
	@PersonalContactNumber NVARCHAR(16)=NULL,	
	@PersonalEmail NVARCHAR(100)=NULL,
	@GuardianName NVARCHAR(50)=NULL,
	@GuardianContact NVARCHAR(50)=NULL,
	@EmergencyContact NVARCHAR(16)=NULL,
	@DOB NVARCHAR(50)=NULL,
	@Address NVARCHAR(500)=NULL,
	@Gender NVARCHAR(10)=NULL,
	@CityId INT=0,
	@CityName NVARCHAR(50)=NULL,
	@StateId INT=0,
	@StateName NVARCHAR(50)=NULL,
	@CountryId INT=0,
	@PostCodeId INT=0,
	@PostCodeNumber NVARCHAR(50)=NULL,
	@DepartmentId INT=0,
	@RoleID INT=0,
	@IsProjectManager BIT=0,
	@DesignationId INT=0,
	@PhoneNumber NVARCHAR(16)=NULL,
	@EmailAddress NVARCHAR(100)=NULL,
	@SkypeId NVARCHAR(50)=NULL,
	@SkypePassword NVARCHAR(50)=NULL,
	@ProfileImage NVARCHAR(500)=NULL,
	@LoginPassword NVARCHAR(500)=NULL,	
	@ModifiedBy INT=0,
	@Notes NVARCHAR(500)=NULL,
	@PType INT=0,
	@DOJ NVARCHAR(50)=NULL,
	@IsActive BIT=0,
	@Status BIT=0,
	@ReturnValue INT OUTPUT,
	@ReturnValueMessage VARCHAR(500) OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON; 
    BEGIN	TRY		
	BEGIN TRANSACTION    
    IF(@UserID>0)
    BEGIN
		
			
			DECLARE @CheckCityID INT=0;
			SET @CheckCityID=(SELECT COUNT(CityId)CityID FROM [Administration].[City] WHERE CountryID=@CountryId AND CityName  = @CityName)
			IF(@CheckCityID=0)
			BEGIN
					INSERT INTO [Administration].City(CountryID,CityName)VALUES(@CountryId,@CityName)
					SET @CityId=SCOPE_IDENTITY();
			END

			IF(@StateName!='')
			BEGIN
				DECLARE @CheckStateID INT=0;
				SET @CheckStateID=(SELECT COUNT(StateId)StateId FROM [Administration].[State] WHERE CountryID=@CountryId AND StateName  = @StateName)			
				IF(@CheckStateID=0)
				BEGIN
						INSERT INTO [Administration].[State](CountryID,StateName)VALUES(@CountryId,@StateName)
						SET @StateId=SCOPE_IDENTITY();
				END
			END

			DECLARE @CheckPostCodeID INT=0;
			SET @CheckPostCodeID=(SELECT COUNT(PostCodeId)PostCodeId FROM [Administration].[PostalCode] WHERE CountryID=@CountryId AND PostCodeNumber = @PostCodeNumber)		
			IF(@CheckPostCodeID=0)
			BEGIN
					INSERT INTO [Administration].[PostalCode](CountryID,PostCodeNumber)VALUES(@CountryId,@PostCodeNumber)
					SET @PostCodeId=SCOPE_IDENTITY();
			END
			--Personal Information	
			UPDATE	[Administration].[User]
		    SET				   [FirstName]				= @FirstName
							  ,[LastName]				= @LastName							  
							  ,[PersonalEmail]			= @PersonalEmail
							  ,[Address]				= @Address
							  ,[Gender]					= @Gender
							  ,[CityId]					= @CityId
							  ,[CountryId]				= @CountryId							 
							  ,[StateId]				= @StateId
							  ,[PostCodeId]				= @PostCodeId
							  ,[PersonalContactNumber]  = @PersonalContactNumber
							  ,[DOB]					= @DOB
							  ,[GuardianName]			= @GuardianName
							  ,[GuardianContact]		= @GuardianContact
							  ,[EmergencyContact]		= @EmergencyContact
							  ,[CompanyId]				= 1										  
							  ,[ModifiedBy]				= @ModifiedBy
							  ,[ModifiedOn]				= GETDATE()
							  ,[Notes]					= @Notes	
							  	  						
				WHERE UserID=@UserID
		
				--SWITCHED OFF FOR PROFILE UPDATE
				----Organization Information	
		
				--DECLARE @PreviousStatus BIT=0;
				--SET @PreviousStatus=(SELECT [Status] FROM Administration.[User] WHERE UserID=@UserID);
				--UPDATE [Administration].[User] 
				--SET			   [EmailAddress]	 =  @EmailAddress
				--			  ,[PhoneNumber]	 =  @PhoneNumber
				--			  ,[DepartmentId]	 =  @DepartmentId
				--			  ,[RoleId]			 =	@RoleID
				--			  ,[Type]			 =	@IsProjectManager
				--			  ,[DesignationId]   =  @DesignationId 
				--			  ,[Skype]			 =  @SkypeId	
				--			  ,[SkypePassword]	 =  @SkypePassword
				--			  ,[DOJ]			 =  @DOJ
				--			  ,[IsActive]		 =  @IsActive
				--			  ,[Status]			 =  @Status		
				--			  ,[ModifiedBy]		 =  @ModifiedBy
				--			  ,[ModifiedOn]		 =  GETDATE()
				--			  ,[PermanentOn]	 =  CASE	WHEN @PreviousStatus=0 
				--											THEN CASE WHEN @Status=1 THEN GETDATE() ELSE NULL END
				--									END
			 --    WHERE UserID=@UserID

				----Password Information	
		
				--UPDATE [Administration].[User] 
				--SET
				--	    [LoginPassword] = @LoginPassword
				--	   ,[ModifiedBy]    = @ModifiedBy
				--	   ,[ModifiedOn]    = GETDATE()
				-- WHERE UserID=@UserID

				SET @ReturnValue=2;
				SET @ReturnValueMessage='Profile update successful.';
		
	END	
	COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
	SELECT	ERROR_NUMBER() AS ErrorNumber,
				ERROR_SEVERITY() AS ErrorSeverity,
				ERROR_STATE() AS ErrorState,
				ERROR_PROCEDURE() AS ErrorProcedure,
				ERROR_LINE() AS ErrorLine,
				ERROR_MESSAGE() AS ErrorMessage;
			IF @@TRANCOUNT > 0
			SET @ReturnValue = -3  
			SET @ReturnValueMessage='Somthing want wrong.'
		ROLLBACK TRANSACTION			
	END CATCH
END
GO
/****** Object:  StoredProcedure [Administration].[usp_UpdateRole]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Administration].[usp_UpdateRole]
(
	@DepartmentID				INT=0,
	@RoleName					VARCHAR(50) = NULL,
	@RoleDescription			VARCHAR(500) = NULL,
	@ModifiedBy					INT=0,
	@RoleId						INT=0,
	@ReturnValue				INT OUTPUT,
	@ReturnValueMessage			VARCHAR(500) OUTPUT
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF NOT EXISTS(SELECT 1 FROM [Administration].[Role] WHERE RoleID = @RoleId)
	BEGIN
		SET @ReturnValue=-2;
		SET @ReturnValueMessage='Role not found.';
		RETURN -1
	END
	
	IF EXISTS (SELECT 1 FROM [Administration].[Role] WHERE RoleName = RoleName AND RoleID <> @RoleId AND IsActive = 1)
	BEGIN
		UPDATE [Administration].[Role]  SET DepartmentID	=	@DepartmentID,
										    RoleName		=	@RoleName,
											[Description]	=	@RoleDescription,										
											ModifiedBy		=	@ModifiedBy,
											ModifiedOn		=	GETDATE()  
									 WHERE  RoleID		=	@RoleId
		SET @ReturnValue=2;
		SET @ReturnValueMessage='Role update successful.';
	END
	ELSE
	BEGIN
		SET @ReturnValue=-2;
		SET @ReturnValueMessage='Role already exists.';
	END
END


GO
/****** Object:  StoredProcedure [Administration].[usp_UpdateUser]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Bikash Karmakar
-- Create date: 6/13/2017 4:02 PM
-- Description:	Update the user detail based on UserID
-- =============================================
--**************************
--** Change History
--**************************
--** PR   Date         Author			Description 
--** --   --------    -------			------------------------------------
--** 1    08/07/2017  Bikash Karmakar   Add new Field in [Administration].[User]
--** 1    12/01/2018  Arunava Mitra		Update few fields regarding the User Status Perment ON and Active State

CREATE PROCEDURE [Administration].[usp_UpdateUser]
(
	@UserID INT=0,
	@FirstName NVARCHAR(500)=NULL,
	@LastName NVARCHAR(500)=NULL,
	@PersonalContactNumber NVARCHAR(16)=NULL,	
	@PersonalEmail NVARCHAR(100)=NULL,
	@GuardianName NVARCHAR(50)=NULL,
	@GuardianContact NVARCHAR(50)=NULL,
	@EmergencyContact NVARCHAR(16)=NULL,
	@DOB NVARCHAR(50)=NULL,
	@Address NVARCHAR(500)=NULL,
	@Gender NVARCHAR(10)=NULL,
	@CityId INT=0,
	@CityName NVARCHAR(50)=NULL,
	@StateId INT=0,
	@StateName NVARCHAR(50)=NULL,
	@CountryId INT=0,
	@PostCodeId INT=0,
	@PostCodeNumber NVARCHAR(50)=NULL,
	@DepartmentId INT=0,
	@RoleID INT=0,
	@IsProjectManager BIT=0,
	@DesignationId INT=0,
	@PhoneNumber NVARCHAR(16)=NULL,
	@EmailAddress NVARCHAR(100)=NULL,
	@SkypeId NVARCHAR(50)=NULL,
	@SkypePassword NVARCHAR(50)=NULL,
	@ProfileImage NVARCHAR(500)=NULL,
	@LoginPassword NVARCHAR(500)=NULL,	
	@ModifiedBy INT=0,
	@Notes NVARCHAR(500)=NULL,
	@PType INT=0,
	@DOJ NVARCHAR(50)=NULL,
	@IsActive BIT=0,
	@Status BIT=0,
	@ReturnValue INT OUTPUT,
	@ReturnValueMessage VARCHAR(500) OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON; 
    BEGIN	TRY		
	BEGIN TRANSACTION    
    IF(@UserID>0)
    BEGIN
		
			
			DECLARE @CheckCityID INT=0;
			SET @CheckCityID=(SELECT COUNT(CityId)CityID FROM [Administration].[City] WHERE CountryID=@CountryId AND CityName  = @CityName)
			IF(@CheckCityID=0)
			BEGIN
					INSERT INTO [Administration].City(CountryID,CityName)VALUES(@CountryId,@CityName)
					SET @CityId=SCOPE_IDENTITY();
			END

			IF(@StateName!='')
			BEGIN
				DECLARE @CheckStateID INT=0;
				SET @CheckStateID=(SELECT COUNT(StateId)StateId FROM [Administration].[State] WHERE CountryID=@CountryId AND StateName  = @StateName)			
				IF(@CheckStateID=0)
				BEGIN
						INSERT INTO [Administration].[State](CountryID,StateName)VALUES(@CountryId,@StateName)
						SET @StateId=SCOPE_IDENTITY();
				END
			END

			DECLARE @CheckPostCodeID INT=0;
			SET @CheckPostCodeID=(SELECT COUNT(PostCodeId)PostCodeId FROM [Administration].[PostalCode] WHERE CountryID=@CountryId AND PostCodeNumber = @PostCodeNumber)		
			IF(@CheckPostCodeID=0)
			BEGIN
					INSERT INTO [Administration].[PostalCode](CountryID,PostCodeNumber)VALUES(@CountryId,@PostCodeNumber)
					SET @PostCodeId=SCOPE_IDENTITY();
			END
			--Personal Information	
			UPDATE	[Administration].[User]
		    SET				   [FirstName]				= @FirstName
							  ,[LastName]				= @LastName							  
							  ,[PersonalEmail]			= @PersonalEmail
							  ,[Address]				= @Address
							  ,[Gender]					= @Gender
							  ,[CityId]					= @CityId
							  ,[CountryId]				= @CountryId							 
							  ,[StateId]				= @StateId
							  ,[PostCodeId]				= @PostCodeId
							  ,[PersonalContactNumber]  = @PersonalContactNumber
							  ,[DOB]					= @DOB
							  ,[GuardianName]			= @GuardianName
							  ,[GuardianContact]		= @GuardianContact
							  ,[EmergencyContact]		= @EmergencyContact
							  ,[CompanyId]				= 1										  
							  ,[ModifiedBy]				= @ModifiedBy
							  ,[ModifiedOn]				= GETDATE()
							  ,[Notes]					= @Notes	
							  	  						
				WHERE UserID=@UserID
		
				
				--Organization Information	
		
				DECLARE @PreviousStatus BIT=0;
				SET @PreviousStatus=(SELECT [Status] FROM Administration.[User] WHERE UserID=@UserID);
				UPDATE [Administration].[User] 
				SET			   [EmailAddress]	 =  @EmailAddress
							  ,[PhoneNumber]	 =  @PhoneNumber
							  ,[DepartmentId]	 =  @DepartmentId
							  ,[RoleId]			 =	@RoleID
							  ,[Type]			 =	@IsProjectManager
							  ,[DesignationId]   =  @DesignationId 
							  ,[Skype]			 =  @SkypeId	
							  ,[SkypePassword]	 =  @SkypePassword
							  ,[DOJ]			 =  @DOJ
							  ,[IsActive]		 =  @IsActive
							  ,[Status]			 =  @Status		
							  ,[ModifiedBy]		 =  @ModifiedBy
							  ,[ModifiedOn]		 =  GETDATE()
							  ,[PermanentOn]	 =  CASE	WHEN @PreviousStatus=0 
															THEN CASE WHEN @Status=1 THEN GETDATE() ELSE NULL END
													END
			     WHERE UserID=@UserID

				--Password Information	
		
				UPDATE [Administration].[User] 
				SET
					    [LoginPassword] = @LoginPassword
					   ,[ModifiedBy]    = @ModifiedBy
					   ,[ModifiedOn]    = GETDATE()
				 WHERE UserID=@UserID

				SET @ReturnValue=2;
				SET @ReturnValueMessage='User update successful.';
		
	END	
	COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
	SELECT	ERROR_NUMBER() AS ErrorNumber,
				ERROR_SEVERITY() AS ErrorSeverity,
				ERROR_STATE() AS ErrorState,
				ERROR_PROCEDURE() AS ErrorProcedure,
				ERROR_LINE() AS ErrorLine,
				ERROR_MESSAGE() AS ErrorMessage;
			IF @@TRANCOUNT > 0
			SET @ReturnValue = -3  
			SET @ReturnValueMessage='Somthing want wrong.'
		ROLLBACK TRANSACTION			
	END CATCH
END
GO
/****** Object:  StoredProcedure [Administration].[usp_UpdateUserPassword]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Administration].[usp_UpdateUserPassword]
(
	@UserID						INT,
	@LoginPassword				VARCHAR(100),
	@ReturnValue				INT OUTPUT,
	@ReturnValueMessage			VARCHAR(500) OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		IF EXISTS(SELECT 1 FROM [Administration].[User] WHERE UserID = @UserID)
		BEGIN
			UPDATE [Administration].[User]
			SET LoginPassword = @LoginPassword
			WHERE UserID = @UserID

			SET @ReturnValue = 1;
			SET @ReturnValueMessage = 'Password updated successfully.';
		END
		ELSE
		BEGIN
			SET @ReturnValue = 0;
			SET @ReturnValueMessage = 'Password not updated. User not matched';
		END
	END TRY
	BEGIN CATCH
		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SET @ReturnValue = 0;
		SET @ReturnValueMessage = ERROR_MESSAGE();

		SELECT @ErrorMessage = ERROR_MESSAGE(),
			   @ErrorSeverity = ERROR_SEVERITY(),
			   @ErrorState = ERROR_STATE();

		RAISERROR (
					@ErrorMessage, 
					@ErrorSeverity, 
					@ErrorState
					);
	END CATCH
END

GO
/****** Object:  StoredProcedure [Common].[GenerateRandomPassword]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Common].[GenerateRandomPassword]
AS
BEGIN
   -- Declare the variables here
	DECLARE @Result VARCHAR(8)
	DECLARE @LENGTH INT,@CharPool varchar(26),@PoolLength varchar(26),@LoopCount  INT  
	DECLARE @RandomString VARCHAR(10),@CHARPOOLINT VARCHAR(9)  
  
    
	SET @CharPool = 'A!B@C!D#E@FG#H$IJ$K%LM%N*PQR%ST&U*V(W)X_YZ'  
	DECLARE @TMPSTR VARCHAR(3)  

	SET @PoolLength = DataLength(@CharPool)  
	SET @LoopCount = 0  
	SET @RandomString = ''  
  
		WHILE (@LoopCount <8)  
		BEGIN  
			SET @TMPSTR =   SUBSTRING(@Charpool, CONVERT(int, RAND() * @PoolLength), 1)           
			SELECT @RandomString  = @RandomString + CONVERT(VARCHAR(5), CONVERT(INT, RAND() * 10))  
			IF(DATALENGTH(@TMPSTR) > 0)  
			BEGIN   
				SELECT @RandomString = @RandomString + @TMPSTR    
				SELECT @LoopCount = @LoopCount + 1  
			END  
		END  
    SET @LOOPCOUNT = 0    
    SET @Result=@RandomString  
   
   -- Return the result of the function
    SELECT @Result
END

GO
/****** Object:  StoredProcedure [Common].[InsertExceptionLogger]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Common].[InsertExceptionLogger]
(
	@ExceptionMessage NVARCHAR(MAX)=NULL,
	@ControllerName VARCHAR(100)=NULL,
	@ActionName VARCHAR(100)=NULL,
	@ExceptionStackTrace NVARCHAR(MAX)=NULL,
	@LogTime DATETIME=NULL
	--,
	--@ReturnValue INT OUTPUT,
	--@ReturnValueMessage VARCHAR(500) OUTPUT
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [Common].[ExceptionLogger]
    (		 
		[ExceptionMessage]
		,[ControllerName]
		,[ActionName]
		,[ExceptionStackTrace]
		,[LogTime]
	)
     VALUES
    (
		@ExceptionMessage
		,@ControllerName
		,@ActionName
		,@ExceptionStackTrace
		,@LogTime
	)
END


GO
/****** Object:  StoredProcedure [Common].[usp_GetUniqueIdentifier]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Arunava Mitra>
-- Create date: <7-March-2018>
-- Description:	<Gets unique identifier from sql server>
-- =============================================
CREATE PROCEDURE [Common].[usp_GetUniqueIdentifier]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT NEWID()
END
GO
/****** Object:  StoredProcedure [Common].[usp_InsertUpdateSessiongLog]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/******************************       
** Name: Common.usp_InsertUpdateSessiongLog
** Desc: Session log is capturing and stored here
** Auth: 
** Date: 
**************************
** Change History
**************************
** PR   Date			Author			Description 
** --   --------		-------			------------------------------------
** 1    Dec 26, 2017	Santanu Paul	capturing user action at the time of Logout and Login and save into [Intranet].[UserFeed] table
******************************/
CREATE PROCEDURE [Common].[usp_InsertUpdateSessiongLog]
(
	@SessionID nvarchar(500) ,
	@UserID int,
	@Type int ---1 Means Insert 2 means Update
)
AS
BEGIN
	IF (@Type = 1)
	BEGIN
		IF NOT EXISTS (SELECT 1 FROM Common.SessionLog WHERE UserID=@UserID AND SessionID=@SessionID)
		BEGIN
			INSERT INTO Common.SessionLog 
			(
				UserID,
				SessionID,
				LoggedOn
			) 
			VALUES 
			(
				@UserID,
				@SessionID,
				GETDATE()
			)

			/* INSERT USER ACTIONS IN USER FEED TABLE */
			IF (ISNULL(@UserID,0) > 0)
			BEGIN
				EXEC [Common].[usp_InsertUserFeed] @UserID, ' Logged In.'
			END
		END		
	END
	ELSE
	BEGIN
		UPDATE	Common.SessionLog 
		SET LoggedOut = GETDATE(),
		Period = DATEDIFF(MINUTE, LoggedOn, GETDATE())
		WHERE UserID = @UserID 
		AND SessionID=@SessionID

		/* INSERT USER ACTIONS IN USER FEED TABLE */
		IF (ISNULL(@UserID,0) > 0)
		BEGIN
			EXEC [Common].[usp_InsertUserFeed] @UserID, ' Logged Out.'
		END
	END
END
GO
/****** Object:  StoredProcedure [Common].[usp_InsertUserFeed]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Common].[usp_InsertUserFeed]
(
	@UserID			BIGINT,
	@Feed			NVARCHAR(2000)
)
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		INSERT INTO [Common].[UserFeed]
			(
				UserID,
				Feed,
				CreatedOn
			)
		VALUES
			(
				@UserID,
				@Feed,
				GETDATE()
			)
	END TRY
	BEGIN CATCH
		DECLARE @ErrorMessage NVARCHAR(4000);
				DECLARE @ErrorSeverity INT;
				DECLARE @ErrorState INT;

				SELECT @ErrorMessage = ERROR_MESSAGE(),
					   @ErrorSeverity = ERROR_SEVERITY(),
					   @ErrorState = ERROR_STATE();
	END CATCH
END
GO
/****** Object:  StoredProcedure [Customer].[usp_CheckCustomerContactUserNameExists]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Customer].[usp_CheckCustomerContactUserNameExists]
(
	@UserName	NVARCHAR(100)
)
AS
BEGIN
	DECLARE @Retval INT
	IF EXISTS(SELECT 1 FROM [Customer].[CustomerContacts] WHERE UserName = @UserName)
	BEGIN
		SET @Retval = 1		/* ALREADY EXISTS */
	END
	ELSE
	BEGIN
		SET @Retval = 0		/* NOT EXISTS */
	END
	SELECT @Retval Retval
END

GO
/****** Object:  StoredProcedure [Customer].[usp_GetAllCustomerContactsByCustomerID]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Santanu Paul
-- Create date: 21st Mar 2018
-- Description:	Get all Contact Customers List based on CustomerID which are active 
-- =============================================
CREATE PROCEDURE [Customer].[usp_GetAllCustomerContactsByCustomerID]
(
	@CustomerID			BIGINT
)
AS
BEGIN
	SELECT   CustomerContactID
			,CustomerContactName
			,CustomerContactEmail
			,CustomerContactPhoneNumber
			,CustomerContactDesignation
			,IsPrimary
			,IsActive
	FROM [Customer].[CustomerContacts]
	WHERE CustomerID = @CustomerID
	AND IsActive = 1
END

GO
/****** Object:  StoredProcedure [Customer].[usp_GetAllCustomersList]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Santanu Paul
-- Create date: 21st Mar 2018
-- Description:	Get all Customers List which are active 
-- =============================================
CREATE PROCEDURE [Customer].[usp_GetAllCustomersList]
AS
BEGIN
	SELECT	 CustomerID
			,CustomerName
			,CustomerEmail
			,PhoneNo
			,MobileNo
			,[Address]
			,CountryId
			,CityId
			,PostCode
			,UserID
			,UserPassword
			,IsActive
	FROM [Customer].[Customer] 
	WHERE IsActive = 1
	ORDER BY CustomerName
END

GO
/****** Object:  StoredProcedure [Customer].[usp_GetCustomerByID]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Customer].[usp_GetCustomerByID]
(
	@CustomerID BIGINT
)
AS
BEGIN
	SET NOCOUNT ON;

   SELECT	 CM.CustomerID
			,CM.CustomerName
			,CM.CustomerEmail
			,CM.PhoneNo
			,CM.MobileNo
			,CM.[Address]
			,CM.CountryId
			,CM.CityId
			,CM.PostCode
			,CM.UserID
			,CM.UserPassword
			,CM.IsActive
			,CM.DefaultContactName
			,CM.DefaultContactEmail
			,CM.DefaultContactPhoneNo
			,CM.DefaultContactDesignation
			,CM.Remarks
			,CT.CountryName
			,CI.CityName,

			CC.CustomerContactName,
			CC.CustomerContactEmail,
			CC.CustomerContactPhoneNumber,
			CC.CustomerContactDesignation,
			CC.CustomerContactRemark,	
			CC.UserName,	
			CC.UserPassword		

	FROM [Customer].[Customer] CM
	LEFT JOIN [Administration].[Country] CT ON CT.CountryId = CM.CountryId
	LEFT JOIN [Administration].[City] CI ON CI.CityId = CM.CityId
	LEFT JOIN [Customer].[CustomerContacts] CC ON CC.CustomerID = @CustomerID AND CC.IsPrimary = 1 AND CC.IsActive = 1
	WHERE CM.CustomerID = @CustomerID
END

GO
/****** Object:  StoredProcedure [Customer].[usp_GetCustomerContactByID]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Customer].[usp_GetCustomerContactByID]
(
	@CustomerContactID BIGINT
)
AS
BEGIN
	SET NOCOUNT ON;
   SELECT [CustomerContactID],
		  [CustomerID],
		  [CustomerContactName],
		  [CustomerContactDesignation],
		  [CustomerContactEmail],
		  [CustomerContactPhoneNumber],
		  [CustomerContactRemark],
		  [IsPrimary],
		  [UserPassword],
		  [UserName],
		  [IsActive] 
		  FROM 
		  [Customer].[CustomerContacts] 
	WHERE CustomerContactID = @CustomerContactID
END


GO
/****** Object:  StoredProcedure [Customer].[usp_GetCustomerContactsList]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Santanu Paul
-- Create date: 16th Mar 2018
-- Description:	get list of client user
-- =============================================
CREATE PROCEDURE [Customer].[usp_GetCustomerContactsList]
(
	@CustomerID					BIGINT,
	@StartRowIndex				INT=1,
	@MaximumRows				INT=20,
	@SortBy						VARCHAR(50) = NULL,
	@IsAscending				BIT = 1
)
AS
BEGIN
	SET NOCOUNT ON;
   ;WITH CTE (	
				CustomerContactID
				,CustomerContactName
				,CustomerContactEmail
				,CustomerContactPhoneNumber
				,CustomerContactDesignation
				,CustomerContactRemark
				,CustomerID
				,CustomerContactStatus
				,IsActive
				,IsPrimary
				,UserName			
)
	AS
	(	SELECT CustomerContactID
			  ,CustomerContactName
				,CustomerContactEmail
				,CustomerContactPhoneNumber
				,CustomerContactDesignation
				,CustomerContactRemark
				,CustomerID
			  ,CASE WHEN IsActive = 1 THEN 'Active' 
					WHEN IsActive = 0 THEN 'Deactive' 
					END CustomerContactStatus
				,IsActive			
				,IsPrimary
				,UserName
		  FROM	[Customer].[CustomerContacts] 
		  WHERE CustomerID = @CustomerID
	)

	
	SELECT	CustomerContactID
				,CustomerContactName
				,CustomerContactEmail
				,CustomerContactPhoneNumber
				,CustomerContactDesignation
				,CustomerContactRemark
				,CustomerID
				,CustomerContactStatus
				,IsActive
				,IsPrimary
				,UserName	
			,RowNumber
	FROM
	(
		SELECT	CustomerContactID
				,CustomerContactName
				,CustomerContactEmail
				,CustomerContactPhoneNumber
				,CustomerContactDesignation
				,CustomerContactRemark
				,CustomerID
				,CustomerContactStatus
				,IsActive
				,IsPrimary
				,UserName	
				,ROW_NUMBER() OVER (ORDER BY	CASE WHEN @SortBy = 'CustomerContactName' AND @IsAscending = 1 THEN CustomerContactName END ASC,  
												CASE WHEN @SortBy = 'CustomerContactName' AND @IsAscending = 0 then CustomerContactName END DESC,																					
												CASE WHEN @SortBy = 'CustomerContactID' AND @IsAscending = 1 THEN CustomerContactID END ASC,    
												CASE WHEN @SortBy = 'CustomerContactID' AND @IsAscending = 0 THEN CustomerContactID END DESC    
											)RowNumber 
		FROM CTE
	) 
	R 
	WHERE RowNumber BETWEEN(@startRowIndex -1) * @maximumRows + 1 
	AND (((@startRowIndex -1) * @maximumRows + 1) + @maximumRows) - 1 
	UNION ALL
	SELECT 0 CustomerContactID,'' CustomerContactName, '' CustomerContactEmail, '' CustomerContactPhoneNumber, '' CustomerContactDesignation, '' CustomerContactRemark,0 CustomerID, '' CustomerContactStatus,0 IsActive, 0 IsPrimary, ''UserName, COUNT(CustomerContactID)RowNumber
	FROM CTE
END

GO
/****** Object:  StoredProcedure [Customer].[usp_GetCustomerList]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Santanu Paul
-- Create date: 14th 03 2018
-- Description:	get list of Customers
-- =============================================
CREATE PROCEDURE [Customer].[usp_GetCustomerList]
(
	@StartRowIndex			INT=1,
	@MaximumRows			INT=20,
	@SearchCustomerName		VARCHAR(50)=NULL,
	@SearchPhoneNumber		VARCHAR(50)=NULL,
	@SearchEmailAddress		VARCHAR(50)=NULL,
	@SortBy					VARCHAR(50) = NULL,
	@IsAscending			BIT = 1
)
AS
BEGIN
	SET NOCOUNT ON;
   ;WITH CTE (CustomerID,CustomerName,CustomerEmail,Remarks,CustomerStatus,[Address],PhoneNo,MobileNo,PostCode, CustomerContactName, CustomerContactEmail,CustomerContactPhoneNumber,CustomerContactDesignation,CustomerContactRemark,UserName)
	AS
	(	SELECT C.[CustomerID]
			  ,C.[CustomerName]
			  ,C.[CustomerEmail]
			  ,C.[Remarks]
			   ,CASE	WHEN C.IsActive = 1 THEN 'Active' 
						WHEN C.IsActive = 0 THEN 'Deactive' 
						END CustomerStatus
			  ,C.[Address]
			  ,C.[PhoneNo]
			  ,C.[MobileNo]
			  ,C.[PostCode]

				,CC.CustomerContactName,
				CC.CustomerContactEmail,
				CC.CustomerContactPhoneNumber,
				CC.CustomerContactDesignation,
				CC.CustomerContactRemark,	
				CC.UserName	

		  FROM [Customer].[Customer] C
		  LEFT JOIN [Customer].[CustomerContacts] CC ON CC.CustomerID = C.CustomerID AND CC.IsPrimary = 1 AND CC.IsActive = 1
		  WHERE ( 
					(@SearchCustomerName is NULL ) 
					OR (C.CustomerName LIKE '%'+ @SearchCustomerName +'%')
					)
		  AND ( 
					(@SearchPhoneNumber is NULL ) 
					OR (C.PhoneNo LIKE '%'+ @SearchPhoneNumber +'%')
					)
		  AND ( 
					(@SearchEmailAddress is NULL ) 
					OR (C.CustomerEmail LIKE '%'+ @SearchEmailAddress +'%')
					)
		  
	)

	SELECT	CustomerID,
			CustomerName,
			CustomerEmail,
			Remarks,
			CustomerStatus,
			[Address],
			[PhoneNo],
			[MobileNo],
			[PostCode],
			CustomerContactName, 
			CustomerContactEmail,
			CustomerContactPhoneNumber,
			CustomerContactDesignation,
			CustomerContactRemark,
			UserName,
			RowNumber
	FROM
	(
		SELECT	CustomerID,
				CustomerName,
				CustomerEmail,
				Remarks,
				CustomerStatus,
				[Address],
				[PhoneNo],
				[MobileNo],
				[PostCode],
				CustomerContactName, 
				CustomerContactEmail,
				CustomerContactPhoneNumber,
				CustomerContactDesignation,
				CustomerContactRemark,
				UserName,
				ROW_NUMBER() OVER (ORDER BY	CASE WHEN @SortBy = 'CustomerName' AND @IsAscending = 1 THEN CustomerName END ASC,  
											CASE WHEN @SortBy = 'CustomerName' AND @IsAscending = 0 then CustomerName END DESC,																					
											CASE WHEN @SortBy = 'CustomerID' AND @IsAscending = 1 THEN CustomerID END ASC,    
											CASE WHEN @SortBy = 'CustomerID' AND @IsAscending = 0 THEN CustomerID END DESC    
											)RowNumber 
				FROM CTE
	) 
	R 
	WHERE RowNumber BETWEEN(@startRowIndex -1) * @maximumRows + 1 
	AND (((@startRowIndex -1) * @maximumRows + 1) + @maximumRows) - 1 
	
	UNION ALL
	SELECT 0 CustomerID,'' CustomerName,''CustomerEmail,'' Remarks,''CustomerStatus, '' [Address], '' PhoneNo, ''MobileNo, ''PostCode , '' CustomerContactName, '' CustomerContactEmail, '' CustomerContactPhoneNumber,'' CustomerContactDesignation, '' CustomerContactRemark,'' UserName, COUNT(CustomerID)RowNumber
	FROM CTE
END

GO
/****** Object:  StoredProcedure [Customer].[usp_InsertCustomer]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Customer].[usp_InsertCustomer]
(
	@CustomerName				VARCHAR(50)=NULL,
	@CustomerEmail				NVARCHAR(100)=NULL,
	@PhoneNo					VARCHAR(50) = NULL,
	@MobileNo					VARCHAR(50) = NULL,
	@Address					NVARCHAR(1000) = NULL,
	@CountryId					INT = 0,
	@CityId						INT = 0,
	@PostCode					NVARCHAR(20) = NULL,
	@UserID						NVARCHAR(100) =NULL,
	@UserPassword				NVARCHAR(200) =NULL,
	@CreatedBy					INT=0,
	@DefaultContactName			VARCHAR(200) =NULL,
	@DefaultContactEmail		NVARCHAR(200) =NULL,
	@DefaultContactPhoneNo		NVARCHAR(50) =NULL,
	@DefaultContactDesignation	NVARCHAR(100) =NULL,
	@Remarks					NVARCHAR(max) = NULL,	
	@ReturnValue				INT OUTPUT,
	@ReturnValueMessage			VARCHAR(500) OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
			DECLARE @CustomerID BIGINT

			IF NOT EXISTS (SELECT 1 FROM [Customer].[Customer] WHERE CustomerName = @CustomerName)
			BEGIN
				INSERT INTO [Customer].[Customer]
				(			
					[CustomerName],
					[CustomerEmail],					
					[PhoneNo],					
					[MobileNo],					
					[Address],					
					[CountryId],					
					[CityId],					
					[PostCode],					
					[UserID],					
					[UserPassword],					
					[CreatedBy],
					[CreatedOn],
					[DefaultContactName],
					[DefaultContactEmail],
					[DefaultContactPhoneNo],
					[DefaultContactDesignation],
					[Remarks]

				)
				VALUES
				(
					@CustomerName,
					@CustomerEmail,				
					@PhoneNo,
					@MobileNo,
					@Address,
					@CountryId,
					@CityId,
					@PostCode,
					@UserID,
					@UserPassword,
					@CreatedBy,
					GETDATE(),
					@DefaultContactName,			
					@DefaultContactEmail,		
					@DefaultContactPhoneNo,		
					@DefaultContactDesignation,
					@Remarks
				)

				SET @CustomerID = SCOPE_IDENTITY()
				
				/*THIS PORTION IS NOT IN USE*/
				IF ISNULL(@UserID,'') = ''
				BEGIN
					SET @UserID = LEFT(REPLACE(LOWER(@DefaultContactName),' ',''),3) + REPLACE(CONVERT(VARCHAR(8),GETDATE(),114),':','')
					SET @UserPassword = '12345'
				END

				/*Insert new primary contact at the time of creating customer*/
				EXEC [Customer].[usp_InsertCustomerContact] @CustomerID, @DefaultContactName, @DefaultContactEmail, @DefaultContactPhoneNo, @DefaultContactDesignation, NULL, @UserID,@UserPassword,1, @CreatedBy,1, ''


				SET @ReturnValue=1;
				SET @ReturnValueMessage='Customer insert successful.';
			END
			ELSE
			BEGIN
				SET @ReturnValue=0;
				SET @ReturnValueMessage='Customer already exists';
			END
	END TRY
	BEGIN CATCH
		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SET @ReturnValue = 0;
		SET @ReturnValueMessage = ERROR_MESSAGE();

		SELECT @ErrorMessage = ERROR_MESSAGE(),
			   @ErrorSeverity = ERROR_SEVERITY(),
			   @ErrorState = ERROR_STATE();

		RAISERROR (
					@ErrorMessage, 
					@ErrorSeverity, 
					@ErrorState
					);
	END CATCH
	
END

GO
/****** Object:  StoredProcedure [Customer].[usp_InsertCustomerContact]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Santanu Paul
-- Create date: 17th Mar 2018
-- Description:	insert Customer Contacts
-- =============================================
CREATE PROCEDURE [Customer].[usp_InsertCustomerContact]
(
	@CustomerID							BIGINT = 0,
	@CustomerContactName				VARCHAR(100) = NULL,
	@CustomerContactEmail				NVARCHAR(100) = NULL,
	@CustomerContactPhoneNumber			NVARCHAR(50) = NULL,
	@CustomerContactDesignation			NVARCHAR(100) = NULL,
	@CustomerContactRemark				NVARCHAR(max) = NULL,	
	@UserName							NVARCHAR(100) = NULL,	
	@UserPassword						NVARCHAR(200) = NULL,
	@IsPrimary							BIT = 0,	
	@CreatedBy							INT = 0,
	@ReturnValue						INT OUTPUT,
	@ReturnValueMessage					VARCHAR(500) OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON;
			 DECLARE @CustomerContactID			BIGINT

		IF NOT EXISTS(SELECT 1 FROM [Customer].[CustomerContacts] WHERE UserName = @UserName)
		BEGIN
			IF NOT EXISTS (SELECT 1 FROM [Customer].[CustomerContacts] WHERE [CustomerContactName] = @CustomerContactName)
			BEGIN
			--IF ISNULL(@UserName,'') = ''
			--BEGIN
			--	SET @UserName = LEFT(REPLACE(LOWER(@CustomerContactName),' ',''),3) + REPLACE(CONVERT(VARCHAR(8),GETDATE(),114),':','')
			--	SET @UserPassword = 'TAG0tiXBdQrn2efPIHgh6g=='  ----- IT IS ENCODING FOR 12345
			--END

				IF NOT EXISTS(SELECT 1 FROM [Customer].[CustomerContacts] WHERE CustomerID = @CustomerID)
				BEGIN
					SET @IsPrimary = 1
				END

				INSERT INTO [Customer].[CustomerContacts]
				(			
					[CustomerContactName],
					[CustomerContactEmail],
					[CustomerContactPhoneNumber],
					[CustomerContactDesignation],
					[CustomerContactRemark],
					[CustomerID],
					[IsActive],	
					[UserName],
					[UserPassword],
					[CreatedBy],
					[CreatedOn],
					[IsPrimary]
				)
				VALUES
				(
					@CustomerContactName,
					@CustomerContactEmail,
					@CustomerContactPhoneNumber,	
					@CustomerContactDesignation,
					@CustomerContactRemark,
					@CustomerID,
					1,
					@UserName,
					@UserPassword,
					@CreatedBy,
					GETDATE(),
					@IsPrimary	
				)

				SET @CustomerContactID = SCOPE_IDENTITY();

				IF(ISNULL(@IsPrimary,0) = 1)
				BEGIN
					UPDATE [Customer].[CustomerContacts] SET IsPrimary = 0 WHERE CustomerID = @CustomerID
					UPDATE [Customer].[CustomerContacts] SET IsPrimary = 1 WHERE CustomerContactID = @CustomerContactID
				END
				ELSE
				BEGIN
					UPDATE [Customer].[CustomerContacts] SET IsPrimary = 0 WHERE CustomerContactID = @CustomerContactID
				END

				SET @ReturnValue=1;
				SET @ReturnValueMessage='Client Contact insert successful.';
			END
			ELSE
			BEGIN
				SET @ReturnValue=0;
				SET @ReturnValueMessage='Client Contact already exists';
			END
		END
		ELSE
		BEGIN
				SET @ReturnValue=0;
				SET @ReturnValueMessage='Client User Name already exists';
		END
END

GO
/****** Object:  StoredProcedure [Customer].[usp_UpdateCustomer]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Customer].[usp_UpdateCustomer]
(
	@CustomerID						BIGINT=0,
	@CustomerName					VARCHAR(50)=NULL,
	@CustomerEmail					NVARCHAR(100)=NULL,
	@PhoneNo						VARCHAR(50) = NULL,
	@MobileNo						VARCHAR(50) = NULL,
	@Address						NVARCHAR(1000) = NULL,
	@CountryId						INT = NULL,
	@CityId							INT = NULL,
	@PostCode						NVARCHAR(20) = NULL,
	@UserID							NVARCHAR(100) =NULL,
	@UserPassword					NVARCHAR(200) =NULL,
	@DefaultContactName				VARCHAR(200) =NULL,
	@DefaultContactEmail			NVARCHAR(200) =NULL,
	@DefaultContactPhoneNo			NVARCHAR(50) =NULL,
	@DefaultContactDesignation		NVARCHAR(100) =NULL,
	@Remarks						NVARCHAR(max) = NULL,
	@IsActive						BIT = 0,	
	@ModifiedBy						INT=0,	
	@ReturnValue					INT OUTPUT,
	@ReturnValueMessage				VARCHAR(500) OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON;		
	BEGIN TRY
		IF NOT EXISTS (SELECT 1 FROM [Customer].[Customer] WHERE CustomerName = @CustomerName AND CustomerID != @CustomerID)
		BEGIN
			UPDATE [Customer].[Customer]
			SET CustomerName						= @CustomerName				
				,CustomerEmail	  					= @CustomerEmail				
				,PhoneNo							= @PhoneNo					
				,MobileNo							= @MobileNo					
				,[Address]							= @Address					
				,CountryId							= @CountryId					
				,CityId								= @CityId						
				,PostCode							= @PostCode					
				,UserID								= @UserID						
				,UserPassword						= @UserPassword				
				,DefaultContactName					= @DefaultContactName			
				,DefaultContactEmail				= @DefaultContactEmail		
				,DefaultContactPhoneNo				= @DefaultContactPhoneNo		
				,DefaultContactDesignation			= @DefaultContactDesignation	
				,Remarks							= @Remarks
				,IsActive							= @IsActive					
				,ModifiedBy					  		= @ModifiedBy					
				,ModifiedOn							= GETDATE()  
			WHERE  CustomerID						= @CustomerID
		
			SET @ReturnValue=1;
			SET @ReturnValueMessage='Customer update successful.';
		END
		ELSE
		BEGIN
			SET @ReturnValue=0;
			SET @ReturnValueMessage='Customer already exists.';
		END	
	END TRY
	BEGIN CATCH
		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SET @ReturnValue = 0;
		SET @ReturnValueMessage = ERROR_MESSAGE();

		SELECT @ErrorMessage = ERROR_MESSAGE(),
			   @ErrorSeverity = ERROR_SEVERITY(),
			   @ErrorState = ERROR_STATE();

		RAISERROR (
					@ErrorMessage, 
					@ErrorSeverity, 
					@ErrorState
					);
	END CATCH
END

GO
/****** Object:  StoredProcedure [Customer].[usp_UpdateCustomerContact]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Customer].[usp_UpdateCustomerContact]
(
	@CustomerID							BIGINT,
	@CustomerContactID					BIGINT=0,
	@CustomerContactName				VARCHAR(100) = NULL,
	@CustomerContactEmail				NVARCHAR(100) = NULL,
	@CustomerContactPhoneNumber			NVARCHAR(50) = NULL,
	@CustomerContactDesignation			NVARCHAR(100) = NULL,
	@CustomerContactRemark				NVARCHAR(max) = NULL,
	@UserPassword						NVARCHAR(200) = NULL,						
	@IsPrimary							BIT = NULL,	
	@IsActive							BIT = NULL,	
	@ModifiedBy							INT=0,	
	@ReturnValue						INT OUTPUT,
	@ReturnValueMessage					VARCHAR(500) OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON;	
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [Customer].[CustomerContacts] WHERE   CustomerContactID = @CustomerContactID )
		BEGIN
			UPDATE [Customer].[CustomerContacts]  
			SET	CustomerContactName			  =	@CustomerContactName,
				CustomerContactEmail		  =	@CustomerContactEmail,
				CustomerContactPhoneNumber		=	@CustomerContactPhoneNumber,	
				CustomerContactDesignation		= @CustomerContactDesignation,	
				CustomerContactRemark			= @CustomerContactRemark,
				UserPassword					= @UserPassword,
				IsActive						= @IsActive,								
				ModifiedBy					=	@ModifiedBy,
				ModifiedOn					=	GETDATE()  
			WHERE  CustomerContactID		  =	@CustomerContactID

			IF(ISNULL(@IsPrimary,0) = 1)
			BEGIN
				UPDATE [Customer].[CustomerContacts] SET IsPrimary = 0 WHERE CustomerID = @CustomerID
				UPDATE [Customer].[CustomerContacts] SET IsPrimary = 1 WHERE CustomerContactID = @CustomerContactID
			END
		
			SET @ReturnValue=1;
			SET @ReturnValueMessage='Client User update successful.';
		END
		ELSE
		BEGIN
			SET @ReturnValue=0;
			SET @ReturnValueMessage='Client User not updated.';
		END
		
	END TRY

	BEGIN CATCH
		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SET @ReturnValue = 0;
		SET @ReturnValueMessage = ERROR_MESSAGE();

		SELECT @ErrorMessage = ERROR_MESSAGE(),
			   @ErrorSeverity = ERROR_SEVERITY(),
			   @ErrorState = ERROR_STATE();

		RAISERROR (
					@ErrorMessage, 
					@ErrorSeverity, 
					@ErrorState
					);
	END CATCH
END

GO
/****** Object:  StoredProcedure [Jobs].[usp_GetJobInformationByID]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Santanu Paul
-- Create date: 22nd Mar 2018
-- Description:	Get single job information based on JobID
-- =============================================
CREATE PROCEDURE [Jobs].[usp_GetJobInformationByID]
(
	@JobID					BIGINT
)
AS
BEGIN
	SELECT 
		 JobID
		,JobCode
		,JobTitle
		,JobDescription
		,CustomerID
		,[Status]
		,CreatedBy
		,CreatedOn
	FROM
	[Jobs].[Job]
	WHERE JobID = @JobID
END

GO
/****** Object:  StoredProcedure [Jobs].[usp_GetJobsAssignedCustomerContactsList]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Santanu Paul
-- Create date: 23nd Mar 2018
-- Description:	get only assigned customer contacts list to the respective job
-- =============================================
CREATE PROCEDURE [Jobs].[usp_GetJobsAssignedCustomerContactsList]
(
	@JobID				BIGINT 
)
AS
BEGIN
	SELECT   CC.CustomerContactID
				,CC.CustomerContactName
				,CC.CustomerContactEmail
				,CC.CustomerContactPhoneNumber
				,CC.CustomerContactDesignation
				,CC.IsPrimary
				,CC.IsActive
	FROM [Customer].[CustomerContacts] CC
	INNER JOIN [Jobs].[AssignedContact] AC ON AC.CustomerContactID = CC.CustomerContactID 
	WHERE AC.JobID = @JobID 
	AND AC.IsActive = 1
	AND CC.IsActive = 1
	ORDER BY CC.CustomerContactName
END

GO
/****** Object:  StoredProcedure [Jobs].[usp_GetJobsAssignedUsersList]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Santanu Paul
-- Create date: 23nd Mar 2018
-- Description:	get only assigned users list to the respective job
-- =============================================
CREATE PROCEDURE [Jobs].[usp_GetJobsAssignedUsersList] 
(
	@JobID					BIGINT
)
AS
BEGIN
	SELECT UM.UserID,
		   FullName = ISNULL(UM.FirstName,'') + ' '	 + ISNULL(UM.LastName,''),
		   UM.EmailAddress,
		   UM.PhoneNumber,
		   UM.IsActive
	FROM [Administration].[User] UM
	INNER JOIN [Jobs].[AssignedUser] AU ON AU.UserID = UM.UserID 
	WHERE AU.JobID = @JobID 
	AND AU.IsActive = 1
	AND UM.IsActive = 1
	ORDER BY UM.FirstName
END

GO
/****** Object:  StoredProcedure [Jobs].[usp_GetJobsCustomerContactsList]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Santanu Paul
-- Create date: 22nd Mar 2018
-- Description:	Get Customer Contacts List based on CustomerID and if Contact 
--				is assigned to that job then it will be marked checked
-- =============================================
CREATE PROCEDURE [Jobs].[usp_GetJobsCustomerContactsList]
(
	@JobID				BIGINT 
)
AS
BEGIN
	DECLARE @CustomerID BIGINT
	SELECT @CustomerID = CustomerID FROM [Jobs].[Job] WHERE JobID = @JobID

	SELECT   CC.CustomerContactID
				,CC.CustomerContactName
				,CC.CustomerContactEmail
				,CC.CustomerContactPhoneNumber
				,CC.CustomerContactDesignation
				,CC.IsPrimary
				,CC.IsActive
				,ISNULL(A.JobID,0) JobID
	FROM [Customer].[CustomerContacts] CC
	LEFT JOIN  (
				SELECT AC.* FROM [Jobs].[AssignedContact] AC
				INNER JOIN [Jobs].[Job] JB ON JB.JobID = AC.JobID WHERE JB.JobID = @JobID AND AC.IsActive = 1
			   ) A ON CC.CustomerContactID = A.CustomerContactID
	WHERE CC.CustomerID = @CustomerID
	AND CC.IsActive = 1
END

GO
/****** Object:  StoredProcedure [Jobs].[usp_GetJobsList]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Santanu Paul
-- Create date: 21st Mar 2018
-- Description:	get list of Jobs with search criteria
-- =============================================
CREATE PROCEDURE [Jobs].[usp_GetJobsList] -----Null, 0, 1,20,'CreatedOn',1
(
	@JobCode				NVARCHAR(200) = NULL,
	@JobTitle				NVARCHAR(250) = NULL,
	@CustomerName			VARCHAR(100) = NULL,
	@Status					INT = NULL,
	@StartRowIndex			INT = 1,
	@MaximumRows			INT = 20,
	@SortBy					VARCHAR(50) = NULL,
	@IsAscending			BIT = 1
)
AS
BEGIN
	SET NOCOUNT ON;

	;WITH CTE(
				JobID
				,JobCode
				,JobTitle
				,JobDescription
				,CustomerID
				,CustomerName
				,[Status]
				,StatusName
				,CreatedDateFormatted
				,CreatedOn
				,FullName
			 )
		AS
			(
				SELECT  JB.JobID
						,JB.JobCode
						,JB.JobTitle
						,JB.JobDescription
						,JB.CustomerID
						,CM.CustomerName
						,JB.[Status]
						, StatusName = CASE WHEN JB.[Status]  = 1 THEN 'New'
											WHEN JB.[Status]  = 2 THEN 'InProcess'
											WHEN JB.[Status]  = 3 THEN 'Approved'
											WHEN JB.[Status]  = 4 THEN 'Finished'
											ELSE '' 
										END
						,CreatedDateFormatted = DATENAME(MONTH, JB.CreatedOn) + RIGHT(CONVERT(VARCHAR(12), JB.CreatedOn, 109), 9) + ' ' + CONVERT(VARCHAR(8), JB.CreatedOn, 108)
						,JB.CreatedOn
						, FullName = ISNULL(UM.FirstName,'') + ' ' + ISNULL(UM.LastName,'')
				FROM [Jobs].[Job] JB
				INNER JOIN [Customer].[Customer] CM ON CM.CustomerID = JB.CustomerID
				INNER JOIN [Administration].[User] UM ON UM.UserID = JB.CreatedBy
				WHERE (
						(@CustomerName IS NULL)
						OR
						(CM.CustomerName LIKE '%' + @CustomerName + '%')
					  )
				AND (
						(ISNULL(@Status,0) = 0)
						OR
						(JB.[Status] = @Status)
					  )

				AND (
						(@JobTitle IS NULL)
						OR
						(JB.JobTitle LIKE '%' + @JobTitle + '%')
					)
				AND (
						(@JobCode IS NULL)
						OR
						(JB.JobCode LIKE '%' + @JobCode + '%')
					)
			 )

			 SELECT 
					 JobID
					,JobCode
					,JobTitle
					,JobDescription
					,CustomerID
					,CustomerName
					,[Status]
					,StatusName
					,CreatedDateFormatted
					,CreatedOn
					,FullName
					,RowNumber
			FROM 
				(
					SELECT 
							 JobID
							,JobCode
							,JobTitle
							,JobDescription
							,CustomerID
							,CustomerName
							,[Status]
							,StatusName
							,CreatedDateFormatted
							,CreatedOn
							,FullName
							,ROW_NUMBER() OVER (ORDER BY	CASE WHEN @SortBy = 'JobTitle' AND @IsAscending = 1 THEN JobTitle END ASC,  
															CASE WHEN @SortBy = 'JobTitle' AND @IsAscending = 0 THEN JobTitle END DESC,
															CASE WHEN @SortBy = 'JobID' AND @IsAscending = 1 THEN JobID END ASC,  
															CASE WHEN @SortBy = 'JobID' AND @IsAscending = 0 THEN JobID END DESC,
															CASE WHEN @SortBy = 'CreatedOn' AND @IsAscending = 1 THEN CreatedOn END ASC,  
															CASE WHEN @SortBy = 'CreatedOn' AND @IsAscending = 0 THEN CreatedOn END DESC
												)RowNumber 
					FROM CTE
				) J

		WHERE RowNumber BETWEEN(@startRowIndex -1) * @maximumRows + 1 
		AND (((@startRowIndex -1) * @maximumRows + 1) + @maximumRows) - 1 
		UNION ALL
		SELECT 0 JobID,'' JobCode, '' JobTitle, '' JobDescription, 0 CustomerID, '' CustomerName,0 [Status], '' StatusName, '' CreatedDateFormatted, '' CreatedOn, ''FullName, COUNT(JobID)RowNumber
		FROM CTE
END

GO
/****** Object:  StoredProcedure [Jobs].[usp_GetJobsUsersList]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Santanu Paul
-- Create date: 22nd Mar 2018
-- Description:	Get Users List if user 
--				is assigned to that job then it will be marked checked
-- =============================================
CREATE PROCEDURE [Jobs].[usp_GetJobsUsersList] 
(
	@JobID					BIGINT
)
AS
BEGIN
	SELECT UM.UserID,
		   FullName = ISNULL(UM.FirstName,'') + ' '	 + ISNULL(UM.LastName,''),
		   UM.EmailAddress,
		   UM.PhoneNumber,
		   UM.IsActive,
		   ISNULL(A.JobID,0) JobID
	FROM [Administration].[User] UM
	LEFT JOIN  (
				SELECT AU.* FROM [Jobs].[AssignedUser] AU
				INNER JOIN [Jobs].[Job] JB ON JB.JobID = AU.JobID WHERE JB.JobID = @JobID AND AU.IsActive = 1
			   ) A ON UM.UserID = A.UserID
	WHERE UM.IsActive = 1
	AND UM.UserID <> 1 ---- left Userid 1 for super admin
END

GO
/****** Object:  StoredProcedure [Jobs].[usp_InsertJob]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Santanu Paul
-- Create date: 21st Mar 2018
-- Description:	Insert Jobs information
-- =============================================
CREATE PROCEDURE [Jobs].[usp_InsertJob]
(
	@JobCode					NVARCHAR(200) = NULL,
	@JobTitle					NVARCHAR(250) = NULL,
	@JobDescription				NVARCHAR(MAX) = NULL,
	@CustomerID					BIGINT = NULL,
	@UserIDs					NVARCHAR(500) = NULL, -- THIS IS FOR THE SELECTED USERS OF PHILTONE
	@CustomerContactIDs			NVARCHAR(500)= NULL, -- THIS IS FOR THE SELECTED CUSTOMER CONTACTS OF PHILTONE
	@CreatedBy					INT = NULL,
	@ReturnValue				INT OUTPUT,
	@ReturnValueMessage			VARCHAR(500) OUTPUT

)
AS
BEGIN
	SET NOCOUNT ON;
		DECLARE @JobID  BIGINT
	BEGIN TRY
		BEGIN TRAN
			IF(@UserIDs IS NOT NULL AND @CustomerContactIDs IS NOT NULL)
			BEGIN
				INSERT INTO [Jobs].[Job]
				(
					 JobCode
					,JobTitle
					,JobDescription
					,CustomerID
					,CreatedBy
					,CreatedOn
				)
				VALUES
				(
					 @JobCode
					,@JobTitle
					,@JobDescription
					,@CustomerID
					,@CreatedBy
					,GETDATE()
				)

				SET @JobID = SCOPE_IDENTITY()
			
				/**** INSERT USERS IN ASSIGNED USERS TABLE FOR CREATED JOB ***/
				INSERT INTO [Jobs].[AssignedUser]
				(
					 JobID
					,UserID
					,IsActive
					,CreatedBy
					,CreatedOn
				)
				SELECT @JobID, item, 1, @CreatedBy, GETDATE() FROM [dbo].[ufn_SplitString](@UserIDs, ',')

				/**** INSERT CUSTOMER CONTACTS IN ASSIGNED COUNTACTS TABLE FOR CREATED JOB ***/
				INSERT INTO [Jobs].[AssignedContact]
				(
					 JobID
					,CustomerContactID
					,IsActive
					,CreatedBy
					,CreatedOn
				)
				SELECT @JobID, item, 1, @CreatedBy, GETDATE() FROM [dbo].[ufn_SplitString](@CustomerContactIDs, ',')

				SET @ReturnValue = 1;
				SET @ReturnValueMessage = 'Job saved successfully.';
			END
			ELSE
			BEGIN
				SET @ReturnValue = 0;
				SET @ReturnValueMessage = 'Job not saved.';
			END

		COMMIT TRAN
	END TRY
	BEGIN CATCH
		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SET @ReturnValue = 0;
		SET @ReturnValueMessage = ERROR_MESSAGE();

		SELECT @ErrorMessage = ERROR_MESSAGE(),
			   @ErrorSeverity = ERROR_SEVERITY(),
			   @ErrorState = ERROR_STATE();

		RAISERROR (
					@ErrorMessage, 
					@ErrorSeverity, 
					@ErrorState
					);
		ROLLBACK TRAN	
	END CATCH
END

GO
/****** Object:  StoredProcedure [Jobs].[usp_InsertPrintApproval]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Jobs].[usp_InsertPrintApproval]
(
	@JobID						BIGINT,
	@FromType					CHAR(3),
	@FromID						BIGINT,
	@ToType						CHAR(3),
	@ToID						BIGINT,
	@FilePath					NVARCHAR(MAX),
	@ReturnValue				INT OUTPUT,
	@ReturnValueMessage			VARCHAR(500) OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		INSERT INTO [Jobs].[PrintApproval]
		(
			 JobID
			,FromType
			,FromID
			,ToType
			,ToID
			,FilePath
		)
		VALUES
		(
			 @JobID
			,@FromType
			,@FromID
			,@ToType
			,@ToID
			,@FilePath
		)

		SET @ReturnValue = 1;
		SET @ReturnValueMessage = 'File uploaded successfully.';

	END TRY
	BEGIN CATCH
		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SET @ReturnValue = 0;
		SET @ReturnValueMessage = ERROR_MESSAGE();

		SELECT @ErrorMessage = ERROR_MESSAGE(),
			   @ErrorSeverity = ERROR_SEVERITY(),
			   @ErrorState = ERROR_STATE();

		RAISERROR (
					@ErrorMessage, 
					@ErrorSeverity, 
					@ErrorState
					);
	END CATCH
END

GO
/****** Object:  StoredProcedure [Jobs].[usp_UpdateJob]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Santanu Paul
-- Create date: 23st Mar 2018
-- Description:	Update Jobs information based on JobID
--				we are not updating CustomerID
-- =============================================
CREATE PROCEDURE [Jobs].[usp_UpdateJob]
(
	@JobID						BIGINT,
	@JobCode					NVARCHAR(200) = NULL,
	@JobTitle					NVARCHAR(250) = NULL,
	@JobDescription				NVARCHAR(MAX) = NULL,
	@UserIDs					NVARCHAR(500) = NULL, -- THIS IS FOR THE SELECTED USERS OF PHILTONE
	@CustomerContactIDs			NVARCHAR(500)= NULL, -- THIS IS FOR THE SELECTED CUSTOMER CONTACTS OF PHILTONE
	@ModifiedBy					INT = NULL,
	@ReturnValue				INT OUTPUT,
	@ReturnValueMessage			VARCHAR(500) OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		BEGIN TRAN
			IF(@UserIDs IS NOT NULL AND @CustomerContactIDs IS NOT NULL)
			BEGIN
				UPDATE [Jobs].[Job]
				SET JobCode				= @JobCode,
					JobTitle			= @JobTitle,
					JobDescription		= @JobDescription,
					ModifiedOn			= GETDATE(),
					ModifiedBy			= @ModifiedBy
				WHERE JobID = @JobID
			
				/**** UPDATE USERS IN ASSIGNED USERS TABLE FOR JOB; IF USER NOT EXISTS THEN INSERT AND IF EXISTING USER NOT SELECTED THEN UPDATED AS DEACTIVE  ***/
				/**** AND IF PREVIOUSLY USER IS DEACTIVATED AND AGAIN ASSIGNED THEN THAT RECORD MAKE ACTIVE  ***/
				MERGE INTO [Jobs].[AssignedUser] AS TARGET
				USING (
						SELECT	Item FROM [dbo].[ufn_SplitString](@UserIDs, ',')
					  ) AS SOURCE
				ON SOURCE.Item = TARGET.UserID AND TARGET.JobID = @JobID
				WHEN NOT MATCHED BY SOURCE 
					AND TARGET.JobID = @JobID
					THEN UPDATE SET IsActive = 0  
				WHEN NOT MATCHED BY TARGET
						THEN INSERT
							(
								JobID,
								UserID,
								CreatedBy,
								CreatedOn
							)
							VALUES
							(
								@JobID,
								SOURCE.Item,
								@ModifiedBy,
								GETDATE()
							)
				WHEN MATCHED AND TARGET.JobID = @JobID THEN UPDATE SET IsActive = 1;


				/**** UPDATE CONTACTS IN ASSIGNED CONTACTS TABLE FOR JOB; IF CONTACT NOT EXISTS THEN INSERT AND IF EXISTING CONTACTS NOT SELECTED THEN UPDATED AS DEACTIVE  ***/
				/**** AND IF PREVIOUSLY CONTACT IS DEACTIVATED AND AGAIN ASSIGNED THEN THAT RECORD MAKE ACTIVE  ***/
				MERGE INTO [Jobs].[AssignedContact] AS TARGET
				USING (
						SELECT	Item FROM [dbo].[ufn_SplitString](@CustomerContactIDs, ',')
					  ) AS SOURCE
				ON SOURCE.Item = TARGET.CustomerContactID AND TARGET.JobID = @JobID
				WHEN NOT MATCHED BY SOURCE 
					AND TARGET.JobID = @JobID
					THEN UPDATE SET IsActive = 0  
				WHEN NOT MATCHED BY TARGET
						THEN INSERT
							(
								JobID,
								CustomerContactID,
								CreatedBy,
								CreatedOn
							)
							VALUES
							(
								@JobID,
								SOURCE.Item,
								@ModifiedBy,
								GETDATE()
							)
				WHEN MATCHED AND TARGET.JobID = @JobID THEN UPDATE SET IsActive = 1;

				SET @ReturnValue = 1;
				SET @ReturnValueMessage = 'Job updated successfully.';
			END
			ELSE
			BEGIN
				SET @ReturnValue = 0;
				SET @ReturnValueMessage = 'Job not updated.';
			END
		COMMIT TRAN
	END TRY
	BEGIN CATCH
		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SET @ReturnValue = 0;
		SET @ReturnValueMessage = ERROR_MESSAGE();

		SELECT @ErrorMessage = ERROR_MESSAGE(),
			   @ErrorSeverity = ERROR_SEVERITY(),
			   @ErrorState = ERROR_STATE();

		RAISERROR (
					@ErrorMessage, 
					@ErrorSeverity, 
					@ErrorState
					);
		ROLLBACK TRAN	
	END CATCH
END

GO
/****** Object:  StoredProcedure [Master].[usp_ActivateEmailSettings]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Master].[usp_ActivateEmailSettings]
(
	@Id INT=0,
	@IsActive BIT=0,	
	@ReturnValue INT OUTPUT,
	@ReturnValueMessage VARCHAR(500) OUTPUT
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	BEGIN TRY
	SET NOCOUNT ON;
		IF @IsActive=1 BEGIN UPDATE Master.EmailSettings SET IsActive=0 END
		UPDATE Master.EmailSettings SET IsActive=@IsActive WHERE Id=@Id
		SET @ReturnValue=1;
		SET @ReturnValueMessage='Update Successfull.';
	END TRY	
	BEGIN CATCH
		SET @ReturnValue=-1;
		SET @ReturnValueMessage='Update Error';
	END CATCH
END

GO
/****** Object:  StoredProcedure [Master].[usp_ActivateFileUploadSettings]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Santanu Paul
-- Create date: 20 Mar, 2018
-- Description:	Update the Active status of file type, 
--				if any one is active then other two types will be incative.
-- =============================================
CREATE PROCEDURE [Master].[usp_ActivateFileUploadSettings]
(
	@ID						INT = 0,
	@IsActive				BIT = 0,	
	@ReturnValue			INT OUTPUT,
	@ReturnValueMessage		VARCHAR(500) OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		IF @IsActive = 1 
		BEGIN 
			UPDATE [Master].[FileUploadSettings] 
			SET IsActive = 0 
		END
		UPDATE [Master].[FileUploadSettings]  
		SET IsActive = @IsActive 
		WHERE ID = @ID

		SET @ReturnValue = 1;
		SET @ReturnValueMessage='Update Successfull.';
	END TRY	
	BEGIN CATCH
		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SET @ReturnValue = 0;
		SET @ReturnValueMessage = ERROR_MESSAGE();

		SELECT @ErrorMessage = ERROR_MESSAGE(),
			   @ErrorSeverity = ERROR_SEVERITY(),
			   @ErrorState = ERROR_STATE();

		RAISERROR (
					@ErrorMessage, 
					@ErrorSeverity, 
					@ErrorState
					);
	END CATCH
END


GO
/****** Object:  StoredProcedure [Master].[usp_AddEditMenu]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author: Bikash Karmakar>
-- Create date: <Create Date : 06th JUNE 2017>
-- Description:	<Description : INSERT [Administration].[Menu] table>
-- =============================================
CREATE PROCEDURE [Master].[usp_AddEditMenu]
(	
	@MenuID INT=0,
	@ParentMenuID INT=0,
	@MenuName NVARCHAR(100)=NULL,
	@IsThirdParty bit=0,
	@MenuURL NVARCHAR(100)=NULL,
	@MenuType NVARCHAR(20)=NULL,
	@IsActive bit=1,
	@CreatedBy INT=0,
	@EditID INT=0,
	@ReturnValue INT OUTPUT,
	@ReturnValueMessage VARCHAR(500) OUTPUT
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	BEGIN	TRY		
	--UNIVERSAL VARIABLE DECLARATION

	DECLARE @CurrentParentMenuID INT=0;
	DECLARE @DisplayOrder INT=0;
	DECLARE @CurrentDisplayOrder INT=0;
	SET @CurrentParentMenuID=(CASE WHEN ((@MenuType ='Page' AND @ParentMenuID = 0) OR (@MenuType ='Menu' AND @ParentMenuID = 0)) THEN @MenuID ELSE  @ParentMenuID END);
	IF @MenuType='Module'
		BEGIN
			SET @DisplayOrder=(SELECT MAX(ISNULL(DisplayOrder,0)) FROM [Master].Menu WHERE ISNULL(IsModule,0)=1)
		END
		ELSE IF @MenuType='Menu'
		BEGIN
			SET @DisplayOrder=(SELECT MAX(ISNULL(DisplayOrder,0)) FROM [Master].Menu WHERE ISNULL(IsParent,0)=1 AND ParentMenuID=@CurrentParentMenuID)
		END
		ELSE
		BEGIN
			SET @DisplayOrder=(SELECT MAX(ISNULL(DisplayOrder,0)) FROM [Master].Menu WHERE ParentMenuID=@CurrentParentMenuID)
		END
		
	IF @EditID =0
		BEGIN
			IF NOT EXISTS(SELECT MenuName FROM [Master].[Menu] WHERE MenuName=@MenuName)
			BEGIN
				-- Insert statements for procedure here
				INSERT INTO [Master].[Menu]
				( 
					[MenuName],
					[IsThirdParty],
					[MenuUrl],					
					[ParentMenuID],
					[DisplayOrder],
					[IsModule],
					[IsParent],
					[IsActive],
					[CreatedBy],
					[CreatedOn]
				)
				VALUES
				(
					@MenuName,
					@IsThirdParty,
					@MenuURL,
					@CurrentParentMenuID,					
					ISNULL(@DisplayOrder,0)+1,					
					CASE WHEN @MenuType='Module' THEN 1 ELSE 0 END,
					CASE WHEN @MenuType='Menu' THEN 1 ELSE 0 END,
					@IsActive,
					@CreatedBy,
					GETDATE()
				)
				SET @ReturnValue=1;
				SET @ReturnValueMessage='Changes Successfull.';
			END
			ELSE
			BEGIN
				SET @ReturnValue=0;
				SET @ReturnValueMessage='Menu Name already exists';
			END
		END
		ELSE
		BEGIN
			 SET @CurrentDisplayOrder=(SELECT ISNULL(DisplayOrder,0) FROM [Master].Menu WHERE MenuID=@EditID);

			 UPDATE [Master].Menu
			 SET	Menu.MenuName=@MenuName,
					Menu.IsThirdParty=@IsThirdParty,
					Menu.MenuUrl=@MenuURL,
					Menu.IsActive=@IsActive,
					Menu.ModifiedBy=@CreatedBy,
					Menu.ModifiedOn=GETDATE(),
					Menu.ParentMenuID= @CurrentParentMenuID,
					Menu.IsModule=CASE WHEN @MenuType='Module' THEN 1 ELSE 0 END,
					Menu.IsParent=CASE WHEN @MenuType='Menu' THEN 1 ELSE 0 END,
					Menu.DisplayOrder= CASE WHEN @DisplayOrder=@CurrentDisplayOrder THEN @CurrentDisplayOrder ELSE @DisplayOrder+1 END

			 WHERE	[Master].Menu.MenuID=@EditID		
			 
			 SET @ReturnValue=1;
			 SET @ReturnValueMessage='Changes Successfull.';	 
		END
	END TRY
	BEGIN CATCH
	SELECT	ERROR_NUMBER() AS ErrorNumber,
				ERROR_SEVERITY() AS ErrorSeverity,
				ERROR_STATE() AS ErrorState,
				ERROR_PROCEDURE() AS ErrorProcedure,
				ERROR_LINE() AS ErrorLine,
				ERROR_MESSAGE() AS ErrorMessage;
		SET @ReturnValue=0;
			SET @ReturnValueMessage=ERROR_MESSAGE();
	END CATCH
END

GO
/****** Object:  StoredProcedure [Master].[usp_GetDepartmentById]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Master].[usp_GetDepartmentById]
(
	@DepartmentId INT=0
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   SELECT DepartmentID,DepartmentName,[Description] AS DepartmentDescription FROM [Master].[Department] WHERE DepartmentID=@DepartmentId
END
GO
/****** Object:  StoredProcedure [Master].[usp_GetDepartmentList]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author Name: Debasish>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Master].[usp_GetDepartmentList]
(
   @startRowIndex INT=1,
   @maximumRows INT=20,
   @SearchDepartmentName VARCHAR(50)=NULL,
   @SortBy	VARCHAR(50) = NULL,
   @IsAscending	BIT = 1
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	;WITH CTE (DepartmentID,DepartmentName,DepartmentDescription,DepartmentStatus,RowNumber)
	AS
	(
	SELECT DepartmentID,DepartmentName,[Description] AS DepartmentDescription,
			CASE WHEN IsActive=1 THEN 'Active' 
				 WHEN IsActive=0 THEN 'Deactive' 
			END DepartmentStatus ,
			ROW_NUMBER() OVER (ORDER BY 
			 CASE WHEN @SortBy = 'DepartmentName' AND @IsAscending = 1 THEN DepartmentName END ASC,  
			 CASE WHEN @SortBy = 'DepartmentName' AND @IsAscending = 0 then DepartmentName END DESC,
			 CASE WHEN @SortBy = 'Id' AND @IsAscending = 1 THEN DepartmentID END ASC,    
			 CASE WHEN @SortBy = 'Id' AND @IsAscending = 0 THEN DepartmentID END DESC  )RowNumber																		
			FROM [Master].[Department] WHERE DepartmentID<>1

    )
	SELECT * FROM CTE
	WHERE RowNumber BETWEEN(@startRowIndex -1) * @maximumRows + 1 AND (((@startRowIndex -1) * @maximumRows + 1) + @maximumRows) - 1 AND ( (@SearchDepartmentName is NULL ) OR DepartmentName LIKE '%'+@SearchDepartmentName+'%')
	UNION ALL
	SELECT 0 DepartmentID,'' DepartmentName,'' DepartmentDescription,'' DepartmentStatus,COUNT(DepartmentID)RowNumber
	FROM CTE

END

GO
/****** Object:  StoredProcedure [Master].[usp_GetDepartmentLists]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Master].[usp_GetDepartmentLists]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select DepartmentID,DepartmentName from [Master].[Department] where IsActive=1 AND DepartmentID<>1
END

GO
/****** Object:  StoredProcedure [Master].[usp_GetDesignationById]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Master].[usp_GetDesignationById]
(
	@DesignationId INT=0
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   SELECT DesignationID,DesignationName,[Description] AS DesignationDescription FROM [Master].[Designation] WHERE DesignationID=@DesignationId
END
GO
/****** Object:  StoredProcedure [Master].[usp_GetEmailSettingsList]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Master].[usp_GetEmailSettingsList]
AS
BEGIN
	SELECT [ID]
		  ,[ProviderName]
		  ,[FromEmail]
		  ,[FromDisplayName]
		  ,[SmtpHost]
		  ,[SmptPort]
		  ,[UseDefaultCredentials]
		  ,[CredentialUserName]
		  ,[CredentialPassword]
		  ,[EnableSsl]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
	FROM [Master].[EmailSettings]
END

GO
/****** Object:  StoredProcedure [Master].[usp_GetFileUploadSettingsList]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Master].[usp_GetFileUploadSettingsList]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT ID
		,[Path]
		,FolderName
		,Domain
		,Port
		,[Type]
		,Username
		,[Password]
		,SSLEnable
		,IsActive
		FROM [Master].[FileUploadSettings]
END


GO
/****** Object:  StoredProcedure [Master].[usp_GetMenuInfo]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author: Santanu Paul>
-- Create date: <Create Date : 05th October 2017>
-- Description:	<Get Particular menu information based on MenuID>
-- =============================================
CREATE PROCEDURE [Master].[usp_GetMenuInfo]
(
	@MenuID		INT 
)
AS
BEGIN
	SELECT	M1.MenuID,
			M1.MenuName,
			ISNULL(M1.MenuUrl,'') MenuUrl,
			ISNULL(M1.MenuIcon,'') MenuIcon,
			ISNULL(M1.ParentMenuID,0) ParentMenuID,
			ISNULL(M1.DisplayOrder,0) DisplayOrder,
			ISNULL(M1.IsModule,0) IsModule,
			ISNULL(M1.IsParent,0) IsParent,
			ISNULL(M1.IsActive,0) IsActive,
			ISNULL(M2.MenuName,'') as ParentMenuName,
			ISNULL(M3.MenuName,'') as ModuleName,
			ISNULL(M3.MenuID,0) as ModuleID

	FROM	[Master].[Menu] as M1 
			LEFT JOIN [Master].Menu as M2 ON M2.MenuID=M1.ParentMenuID
			LEFT JOIN [Master].Menu as M3 ON M3.MenuID=M2.ParentMenuID
	WHERE	M1.MenuID =@MenuID
END
GO
/****** Object:  StoredProcedure [Master].[usp_GetMenuList]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Master].[usp_GetMenuList]
AS
BEGIN

SELECT [MenuID]
      ,ISNULL([MenuName],'') as MenuName
	  ,ISNULL([IsThirdParty],'') as IsThirdParty
      ,ISNULL([MenuUrl],'') as MenuUrl
      ,ISNULL([MenuIcon],'') as MenuIcon
      ,ISNULL([ParentMenuID],0) as ParentMenuID
      ,ISNULL([DisplayOrder],0) as DisplayOrder
	  ,ISNULL([IsActive],0) as IsActive
FROM  [Master].[Menu]

WHERE	ISNULL(IsModule,0)=1 --AND ISNULL(IsActive,0)=1


SELECT [MenuID]
      ,ISNULL([MenuName],'') as MenuName
	  ,ISNULL([IsThirdParty],'') as IsThirdParty
      ,ISNULL([MenuUrl],'') as MenuUrl
      ,ISNULL([MenuIcon],'') as MenuIcon
      ,ISNULL([ParentMenuID],0) as ParentMenuID
      ,ISNULL([DisplayOrder],0) as DisplayOrder
	  ,ISNULL([IsActive],0) as IsActive
FROM  [Master].[Menu]

WHERE	ISNULL(IsParent,0)=1 --AND ISNULL(IsActive,0)=1

SELECT [MenuID]
	  ,ISNULL([MenuName],'') as MenuName
	  ,ISNULL([IsThirdParty],'') as IsThirdParty
      ,ISNULL([MenuUrl],'') as MenuUrl
      ,ISNULL([MenuIcon],'') as MenuIcon
      ,ISNULL([ParentMenuID],0) as ParentMenuID
      ,ISNULL([DisplayOrder],0) as DisplayOrder
	  ,ISNULL([IsActive],0) as IsActive
FROM   [Master].[Menu]

WHERE ISNULL(IsModule,0)=0 AND ISNULL(IsParent,0)=0 --AND ISNULL(IsActive,0)=1

END

GO
/****** Object:  StoredProcedure [Master].[usp_GetMenusByPriviledge]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Master].[usp_GetMenusByPriviledge]
(
	@IsAdmin BIT=0,
	@UserID INT=0
)
AS
BEGIN	

	IF @IsAdmin=1
	BEGIN

				SELECT	M1.MenuID,
				M1.MenuName,
				ISNULL(M1.IsThirdParty,0) as IsThirdParty,
				M1.MenuUrl,
				M1.MenuIcon, 
				ISNULL(M1.ParentMenuID,0) AS ParentMenuID,
				M2.MenuName as ParentMenu,
				M3.MenuName as Module,
				M1.DisplayOrder,
				ISNULL(M1.IsActive,0) as IsActive
						
		FROM	[Master].Menu M1	
				LEFT OUTER JOIN [Master].Menu M2 ON M1.ParentMenuID=M2.MenuID 
				LEFT OUTER JOIN [Master].Menu M3 ON M2.ParentMenuID=M3.MenuID AND M3.IsModule=1				
		WHERE	ISNULL(M1.IsActive,0)=1 AND ISNULL(M1.IsModule,0)=1  
			
				
			


		SELECT	M1.MenuID,
				M1.MenuName,
				ISNULL(M1.IsThirdParty,0) as IsThirdParty,
				M1.MenuUrl,
				M1.MenuIcon, 
				ISNULL(M1.ParentMenuID,0) AS ParentMenuID,
				M2.MenuName as ParentMenu,
				M3.MenuName as Module,
				M1.DisplayOrder,
				ISNULL(M1.IsActive,0) as IsActive
						
		FROM	[Master].Menu M1	
				LEFT OUTER JOIN [Master].Menu M2 ON M1.ParentMenuID=M2.MenuID 
				LEFT OUTER JOIN [Master].Menu M3 ON M2.ParentMenuID=M3.MenuID AND M3.IsModule=1
				
		WHERE	ISNULL(M1.IsActive,0)=1 AND ISNULL(M1.IsModule,0)=0 
		
	END
	ELSE
	BEGIN
	
	SELECT * FROM
	(
		SELECT	ROW_NUMBER() OVER(Partition by M1.MenuID ORDER BY M1.MenuID) RowCounts,	
				M1.MenuID,
				M1.MenuName,
				ISNULL(M1.IsThirdParty,0) as IsThirdParty,
				M1.MenuUrl,
				M1.MenuIcon, 
				ISNULL(M1.ParentMenuID,0) AS ParentMenuID,
				M2.MenuName as ParentMenu,
				M3.MenuName as Module,
				M1.DisplayOrder,
				ISNULL(M1.IsActive,0) as IsActive
						
		FROM	[Master].Menu M1	
				LEFT OUTER JOIN [Master].Menu M2 ON M1.ParentMenuID=M2.MenuID 
				LEFT OUTER JOIN [Master].Menu M3 ON M2.ParentMenuID=M3.MenuID AND M3.IsModule=1
				LEFT OUTER JOIN [Administration].[MapMenuUser] MM ON M1.MenuID=MM.MenuID 
		WHERE	MM.UserID=@UserID AND  ISNULL(M1.IsActive,0)=1 AND ISNULL(M1.IsModule,0)=1  AND ISNULL(MM.CanView,0)=1	
	) A WHERE A.RowCounts = 1			
			
			

		SELECT * FROM
		(
		SELECT	ROW_NUMBER() OVER(Partition by M1.MenuID ORDER BY M1.MenuID) RowCounts,	
				M1.MenuID,
				M1.MenuName,
				ISNULL(M1.IsThirdParty,0) as IsThirdParty,
				M1.MenuUrl,
				M1.MenuIcon, 
				ISNULL(M1.ParentMenuID,0) AS ParentMenuID,
				M2.MenuName as ParentMenu,
				M3.MenuName as Module,
				M1.DisplayOrder,
				ISNULL(M1.IsActive,0) as IsActive
						
		FROM	[Master].Menu M1	
				LEFT OUTER JOIN [Master].Menu M2 ON M1.ParentMenuID=M2.MenuID 
				LEFT OUTER JOIN [Master].Menu M3 ON M2.ParentMenuID=M3.MenuID AND M3.IsModule=1
				LEFT OUTER JOIN [Administration].[MapMenuUser] MM ON M1.MenuID=MM.MenuID 
		WHERE	MM.UserID=@UserID AND ISNULL(M1.IsActive,0)=1 AND ISNULL(M1.IsModule,0)=0  AND ISNULL(MM.CanView,0)=1
		) B WHERE B.RowCounts = 1			
	END
END


GO
/****** Object:  StoredProcedure [Master].[usp_InsertDepartment]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Master].[usp_InsertDepartment]
(
	@DepartmentName VARCHAR(50)=NULL,
	@DepartmentDescription NVARCHAR(500)=NULL,
	@CreatedBy INT=0,
	@ReturnValue INT OUTPUT,
	@ReturnValueMessage VARCHAR(500) OUTPUT
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF NOT EXISTS (SELECT 1 FROM [Master].[Department] WHERE DepartmentName=@DepartmentName)
	BEGIN
		INSERT INTO [Master].[Department]
		(
			[DepartmentName],
			[Description],
			[IsActive],
			[CreatedBy],
			[CreatedOn]
		)
		VALUES
		(
			@DepartmentName,
			@DepartmentDescription,
			1,
			@CreatedBy,
			GETDATE()
		
		)
		SET @ReturnValue=1;
		SET @ReturnValueMessage='Department insert successful.';
	END
	ELSE
	BEGIN
		SET @ReturnValue=-1;
		SET @ReturnValueMessage='Department already exists';
	END
END
GO
/****** Object:  StoredProcedure [Master].[usp_InsertEmailSettings]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Master].[usp_InsertEmailSettings]
(
	@ProviderName					NVARCHAR(50) = NULL,
	@FromEmail						NVARCHAR(200) = NULL,
	@FromDisplayName				NVARCHAR(100) = NULL,
	@SmtpHost						NVARCHAR(100) = NULL,
	@SmptPort						INT = NULL,
	@UseDefaultCredentials			BIT = 0, 
	@CredentialUserName				NVARCHAR(50),
	@CredentialPassword				NVARCHAR(50),
	@EnableSsl						BIT = 0,
	@ReturnValue					INT OUTPUT,
	@ReturnValueMessage				VARCHAR(500) OUTPUT
			
)
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		INSERT INTO [Master].[EmailSettings]
		(
			 ProviderName
			,FromEmail
			,FromDisplayName
			,SmtpHost
			,SmptPort
			,UseDefaultCredentials
			,CredentialUserName
			,CredentialPassword
			,EnableSsl
			,CreatedBy
			,CreatedOn	
		)
		VALUES
		(
			 @ProviderName
			,@FromEmail
			,@FromDisplayName
			,@SmtpHost
			,@SmptPort
			,@UseDefaultCredentials
			,@CredentialUserName
			,@CredentialPassword
			,@EnableSsl
			,1
			,GETDATE()
		)

		SET @ReturnValue=1;
		SET @ReturnValueMessage='Settings saved successfully.';
	END TRY
	BEGIN CATCH
		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SET @ReturnValue = 0;
		SET @ReturnValueMessage = ERROR_MESSAGE();

		SELECT @ErrorMessage = ERROR_MESSAGE(),
			   @ErrorSeverity = ERROR_SEVERITY(),
			   @ErrorState = ERROR_STATE();

		RAISERROR (
					@ErrorMessage, 
					@ErrorSeverity, 
					@ErrorState
					);
	END CATCH
END


GO
/****** Object:  StoredProcedure [Master].[usp_InsertFileUploadSettings]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Santanu Paul
-- Create date: 20 Mar 2018
-- Description:	Insert File Upload setting
-- Purpose behind : admin will setup the file upload Settings 				
-- =============================================
CREATE PROCEDURE [Master].[usp_InsertFileUploadSettings]
(
	@Path						NVARCHAR(MAX) = NULL,
	@FolderName					NVARCHAR(500) = NULL,
	@Domain						NVARCHAR(2000) = NULL,
	@Port						INT,
	@Type						INT,
	@Username					NVARCHAR(200) = NULL,
	@Password					NVARCHAR(200) = NULL,
	@SSLEnable					BIT = 0,			
	@CreatedBy					INT,
	@ReturnValue				INT OUTPUT,
	@ReturnValueMessage			VARCHAR(500) OUTPUT	
)
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		IF ISNULL(@Type,0) = 1		-- FTP SETTINGS
		BEGIN
			IF NOT EXISTS(SELECT 1 FROM [Master].[FileUploadSettings] WHERE [Type] = 1)
			BEGIN
				INSERT INTO [Master].[FileUploadSettings]
				(
					 [Type]
					,[Path]
					,[Port]
					,[FolderName]
					,[SSLEnable]
					,[Username]
					,[Password]
					,[CreatedBy]
					,[CreatedOn]
				)
				VALUES
				(
					 @Type
					,@Path
					,@Port
					,@FolderName
					,@SSLEnable
					,@Username
					,@Password
					,@CreatedBy
					,GETDATE()
				)

				SET @ReturnValue = 1;
			    SET @ReturnValueMessage='FTP settings saved successfully.';
			END
		END
		ELSE IF ISNULL(@Type,0) = 2		-- NETWORK SETTINGS
		BEGIN
			IF NOT EXISTS(SELECT 1 FROM [Master].[FileUploadSettings] WHERE [Type] = 2)
			BEGIN
				INSERT INTO [Master].[FileUploadSettings]
				(
					 [Type]
					,[Path]
					,[Domain]
					,[Username]
					,[Password]
					,[CreatedBy]
					,[CreatedOn]
				)
				VALUES
				(
					 @Type
					,@Path	
					,@Domain
					,@Username
					,@Password
					,@CreatedBy
					,GETDATE()
				)

				SET @ReturnValue = 1;
			    SET @ReturnValueMessage='Network settings saved successfully.';
			END
		END
		ELSE IF ISNULL(@Type,0) = 3		-- LOCAL SETTINGS
		BEGIN
			IF NOT EXISTS(SELECT 1 FROM [Master].[FileUploadSettings] WHERE [Type] = 3)
			BEGIN
				INSERT INTO [Master].[FileUploadSettings]
				(
					 [Type]
					,[Path]
					,[CreatedBy]
					,[CreatedOn]
				)
				VALUES
				(
					 @Type
					,@Path
					,@CreatedBy
					,GETDATE()
				)

				SET @ReturnValue = 1;
			    SET @ReturnValueMessage='Local settings saved successfully.';
			END
		END
		ELSE
		BEGIN
			SET @ReturnValue = 0;
			SET @ReturnValueMessage='Settings Type Needed.';
		END
	END TRY
	BEGIN CATCH
		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SET @ReturnValue = 0;
		SET @ReturnValueMessage = ERROR_MESSAGE();

		SELECT @ErrorMessage = ERROR_MESSAGE(),
			   @ErrorSeverity = ERROR_SEVERITY(),
			   @ErrorState = ERROR_STATE();

		RAISERROR (
					@ErrorMessage, 
					@ErrorSeverity, 
					@ErrorState
					);
	END CATCH
END


GO
/****** Object:  StoredProcedure [Master].[usp_UpdateDepartment]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Master].[usp_UpdateDepartment]
(
	@DepartmentName VARCHAR(50)=NULL,
	@DepartmentDescription VARCHAR(500)=NULL,
	@ModifiedBy INT=0,
	@DepartmentId INT=0,
	@ReturnValue INT OUTPUT,
	@ReturnValueMessage VARCHAR(500) OUTPUT
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF NOT EXISTS (SELECT 1 FROM [Master].[Department] WHERE  DepartmentName LIKE '%'+@DepartmentName+'%' AND DepartmentID!=@DepartmentId)
	BEGIN
		Update [Master].[Department]  SET   DepartmentName=@DepartmentName,	
											[Description]=@DepartmentDescription,
											ModifiedBy=@ModifiedBy,
											ModifiedOn=GETDATE()
											WHERE DepartmentID=@DepartmentId
		SET @ReturnValue=2;
		SET @ReturnValueMessage='Department update successful.';
	END
	ELSE
	BEGIN
		SET @ReturnValue=-2;
		SET @ReturnValueMessage='Department already exists.';
	END
END
GO
/****** Object:  StoredProcedure [Master].[usp_UpdateEmailSettings]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Master].[usp_UpdateEmailSettings]
(
	@ID								INT,	
	@ProviderName					NVARCHAR(50) = NULL,
	@FromEmail						NVARCHAR(200) = NULL,
	@FromDisplayName				NVARCHAR(100) = NULL,
	@SmtpHost						NVARCHAR(100) = NULL,
	@SmptPort						INT = NULL,
	@UseDefaultCredentials			BIT = 0, 
	@CredentialUserName				NVARCHAR(50),
	@CredentialPassword				NVARCHAR(50),
	@EnableSsl						BIT = 0,
	@ReturnValue					INT OUTPUT,
	@ReturnValueMessage				VARCHAR(500) OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		IF EXISTS(SELECT 1 FROM [Master].[EmailSettings] WHERE ID = @ID)
		BEGIN
			UPDATE [Master].[EmailSettings]
			SET 
				ProviderName				= @ProviderName			
				,FromEmail					= @FromEmail				
				,FromDisplayName			= @FromDisplayName		
				,SmtpHost					= @SmtpHost				
				,SmptPort					= @SmptPort				
				,UseDefaultCredentials		= @UseDefaultCredentials	
				,CredentialUserName			= @CredentialUserName		
				,CredentialPassword			= @CredentialPassword		
				,EnableSsl					= @EnableSsl				
				,ModifiedBy					= 1
				,ModifiedOn					= GETDATE()
			WHERE ID = @ID

			SET @ReturnValue = 1;
			SET @ReturnValueMessage='Settings updated successfully.';
		END
	END TRY
	BEGIN CATCH
		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SET @ReturnValue = 0;
		SET @ReturnValueMessage = ERROR_MESSAGE();

		SELECT @ErrorMessage = ERROR_MESSAGE(),
			   @ErrorSeverity = ERROR_SEVERITY(),
			   @ErrorState = ERROR_STATE();

		RAISERROR (
					@ErrorMessage, 
					@ErrorSeverity, 
					@ErrorState
					);
	END CATCH
END

GO
/****** Object:  StoredProcedure [Master].[usp_UpdateFileUploadSettings]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Santanu Paul
-- Create date: 20 Mar 2018
-- Description:	update File Upload setting
-- Purpose behind : admin will setup the file upload Settings 				
-- =============================================
CREATE PROCEDURE [Master].[usp_UpdateFileUploadSettings]
(	
	@ID							INT,
	@Path						NVARCHAR(MAX) = NULL,
	@FolderName					NVARCHAR(500) = NULL,
	@Domain						NVARCHAR(2000) = NULL,
	@Port						INT,
	@Type						INT,
	@Username					NVARCHAR(200) = NULL,
	@Password					NVARCHAR(200) = NULL,
	@SSLEnable					BIT = 0,			
	@ModifiedBy					INT,
	@ReturnValue				INT OUTPUT,
	@ReturnValueMessage			VARCHAR(500) OUTPUT	
)
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		IF ISNULL(@Type,0) = 1	-- FTP SETTINGS
		BEGIN
			UPDATE [Master].[FileUploadSettings]
			SET  [Path]				= @Path
				,[FolderName]		= @FolderName
				,[Port]				= @Port
				,[Username]			= @Username
				,[Password]			= @Password
				,SSLEnable			= @SSLEnable
				,ModifiedBy			= @ModifiedBy
				,ModifiedOn			= GETDATE()
				WHERE [Type]	= @Type

				SET @ReturnValue = 1;
			    SET @ReturnValueMessage='FTP Settings updated successfully.';
		END
		ELSE IF ISNULL(@Type,0) = 2 -- NETWORK SETTINGS
		BEGIN
				UPDATE [Master].[FileUploadSettings]
				SET  [Path]				= @Path
					,[Domain]			= @Domain
					,[Username]			= @Username
					,[Password]			= @Password
					,ModifiedBy			= @ModifiedBy
					,ModifiedOn			= GETDATE()
					WHERE [Type]		= @Type

				SET @ReturnValue = 1;
			    SET @ReturnValueMessage='Network Settings updated successfully.';

		END
		ELSE IF ISNULL(@Type,0) = 3 -- LOCAL SETTINGS
		BEGIN
				UPDATE [Master].[FileUploadSettings]
				SET  [Path]			= @Path	
					,ModifiedBy		= @ModifiedBy
					,ModifiedOn		= GETDATE()
				WHERE [Type]		= @Type

				SET @ReturnValue = 1;
			    SET @ReturnValueMessage='Local Settings updated successfully.';

		END
	END TRY
	BEGIN CATCH
		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SET @ReturnValue = 0;
		SET @ReturnValueMessage = ERROR_MESSAGE();

		SELECT @ErrorMessage = ERROR_MESSAGE(),
			   @ErrorSeverity = ERROR_SEVERITY(),
			   @ErrorState = ERROR_STATE();

		RAISERROR (
					@ErrorMessage, 
					@ErrorSeverity, 
					@ErrorState
					);
	END CATCH
END

GO
/****** Object:  UserDefinedFunction [Common].[GeneratePassword]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [Common].[GeneratePassword] ()
RETURNS varchar(10)
AS
BEGIN
  DECLARE @randInt int;
  DECLARE @NewCharacter varchar(1); 
  DECLARE @NewPassword varchar(10); 
  SET @NewPassword='';

  --6 random characters
  WHILE (LEN(@NewPassword) <6)
  BEGIN
    SELECT @randInt=Common.randbetween(48,122)
	--      0-9           < = > ? @ A-Z [ \ ]                   a-z      
    IF @randInt<=57 OR (@randInt>=60 AND @randInt<=93) OR (@randInt>=97 AND @randInt<=122)
    BEGIN
      SELECT @NewCharacter=CHAR(@randInt)
      SELECT @NewPassword=CONCAT(@NewPassword, @NewCharacter)
    END
  END

  --Ensure a lowercase
  SELECT @NewCharacter=CHAR(Common.randbetween(97,122))
  SELECT @NewPassword=CONCAT(@NewPassword, @NewCharacter)
  
  --Ensure an upper case
  SELECT @NewCharacter=CHAR(Common.randbetween(65,90))
  SELECT @NewPassword=CONCAT(@NewPassword, @NewCharacter)
  
  --Ensure a number
  SELECT @NewCharacter=CHAR(Common.randbetween(48,57))
  SELECT @NewPassword=CONCAT(@NewPassword, @NewCharacter)
  
  --Ensure a symbol
  WHILE (LEN(@NewPassword) <10)
  BEGIN
    SELECT @randInt=Common.randbetween(33,64)
	--           !               # $ % &                            < = > ? @
    IF @randInt=33 OR (@randInt>=35 AND @randInt<=38) OR (@randInt>=60 AND @randInt<=64) 
    BEGIN
     SELECT @NewCharacter=CHAR(@randInt)
     SELECT @NewPassword=CONCAT(@NewPassword, @NewCharacter)
    END
  END

  RETURN(@NewPassword);
END;

GO
/****** Object:  UserDefinedFunction [Common].[randbetween]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- create the function
CREATE FUNCTION [Common].[randbetween](@bottom INTEGER, @top INTEGER)
RETURNS INTEGER
AS
BEGIN
  RETURN (SELECT CAST(ROUND((@top-@bottom)* RandomNumber +@bottom,0) AS INTEGER) FROM Common.vRandomNumber)
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetUserName]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[GetUserName] (@FirstName VARCHAR(100), @MiddleName VARCHAR(100),@LastName VARCHAR(100))
RETURNS NVARCHAR(100)
AS
    BEGIN
        DECLARE @UserName NVARCHAR(100)
        SELECT  @UserName = LTRIM(RTRIM(ISNULL(@FirstName, ''))) + ' '
                + CASE WHEN ISNULL(@MiddleName, '') = '' THEN ''
                       ELSE LTRIM(RTRIM(@MiddleName)) + ' '
                  END + LTRIM(RTRIM(ISNULL(@LastName, '')))
        RETURN @UserName
    END

GO
/****** Object:  UserDefinedFunction [dbo].[ufn_SplitString]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[ufn_SplitString]
(    
      @Input NVARCHAR(MAX),
      @Character CHAR(1)
)
RETURNS @Output TABLE (
      Item NVARCHAR(1000)
)
AS
BEGIN
      DECLARE @StartIndex INT, @EndIndex INT
 
      SET @StartIndex = 1
      IF SUBSTRING(@Input, LEN(@Input) - 1, LEN(@Input)) <> @Character
      BEGIN
            SET @Input = @Input + @Character
      END
 
      WHILE CHARINDEX(@Character, @Input) > 0
      BEGIN
            SET @EndIndex = CHARINDEX(@Character, @Input)
           
            INSERT INTO @Output(Item)
            SELECT SUBSTRING(@Input, @StartIndex, @EndIndex - 1)
           
            SET @Input = SUBSTRING(@Input, @EndIndex + 1, LEN(@Input))
      END
 
      RETURN
END

GO
/****** Object:  Table [Administration].[City]    Script Date: 3/28/2018 5:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Administration].[City](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CountryID] [int] NULL,
	[CityName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Administration.City] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Administration].[Country]    Script Date: 3/28/2018 5:17:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Administration].[Country](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Administration.Country] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Administration].[MapMenuRole]    Script Date: 3/28/2018 5:17:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Administration].[MapMenuRole](
	[MenuRoleID] [int] IDENTITY(1,1) NOT NULL,
	[MenuID] [int] NULL,
	[RoleID] [int] NULL,
	[CanAdd] [bit] NULL DEFAULT ((1)),
	[CanEdit] [bit] NULL DEFAULT ((1)),
	[CanDelete] [bit] NULL DEFAULT ((1)),
	[CanView] [bit] NULL DEFAULT ((1)),
PRIMARY KEY CLUSTERED 
(
	[MenuRoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Administration].[MapMenuUser]    Script Date: 3/28/2018 5:17:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Administration].[MapMenuUser](
	[MenuUserID] [int] IDENTITY(1,1) NOT NULL,
	[MenuID] [int] NULL,
	[UserID] [int] NULL,
	[RoleID] [int] NULL,
	[CanAdd] [bit] NULL DEFAULT ((1)),
	[CanEdit] [bit] NULL DEFAULT ((1)),
	[CanDelete] [bit] NULL DEFAULT ((1)),
	[CanView] [bit] NULL DEFAULT ((1)),
	[PermissionWeight] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MenuUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Administration].[PostalCode]    Script Date: 3/28/2018 5:17:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Administration].[PostalCode](
	[PostCodeId] [int] IDENTITY(1,1) NOT NULL,
	[CountryID] [int] NULL,
	[PostCodeNumber] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [Administration].[Role]    Script Date: 3/28/2018 5:17:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Administration].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](100) NULL,
	[Description] [varchar](500) NULL,
	[DepartmentID] [int] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_Role_IsActive]  DEFAULT ((1)),
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL CONSTRAINT [DF_Role_CreatedOn]  DEFAULT (getdate()),
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK__Role__8AFACE3A74DD9B20] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Administration].[State]    Script Date: 3/28/2018 5:17:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Administration].[State](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[CountryID] [int] NULL,
	[StateName] [nvarchar](50) NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Administration].[User]    Script Date: 3/28/2018 5:17:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Administration].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[LoginName] [varchar](100) NULL,
	[LoginPassword] [varchar](100) NULL,
	[Description] [varchar](500) NULL,
	[DepartmentId] [int] NULL,
	[RoleId] [int] NULL,
	[DesignationId] [int] NULL,
	[PhoneNumber] [nvarchar](15) NULL,
	[EmailAddress] [nvarchar](100) NULL,
	[Address] [nvarchar](500) NULL,
	[Gender] [nvarchar](10) NULL CONSTRAINT [DF_User_Gender]  DEFAULT (N'Male'),
	[CityId] [int] NULL,
	[CountryId] [int] NULL,
	[ProfileImage] [nvarchar](500) NULL,
	[CompanyId] [int] NULL,
	[Type] [int] NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL CONSTRAINT [DF_User_CreatedOn]  DEFAULT (getdate()),
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
	[Remark] [nvarchar](500) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_User_IsActive]  DEFAULT ((1)),
	[IsCompanyAdmin] [bit] NULL,
	[DOB] [varchar](50) NULL,
	[GuardianName] [varchar](50) NULL,
	[GuardianContact] [varchar](50) NULL,
	[EmergencyContact] [varchar](50) NULL,
	[Notes] [varchar](500) NULL,
	[PersonalEmail] [varchar](50) NULL,
	[Skype] [varchar](50) NULL,
	[PersonalContactNumber] [varchar](50) NULL,
	[StateId] [int] NULL,
	[PostCodeId] [int] NULL,
	[SkypePassword] [nvarchar](50) NULL,
	[DOJ] [varchar](50) NULL,
	[InActiveDate] [varchar](50) NULL,
	[CasualLeave] [decimal](3, 1) NULL,
	[SickLeave] [decimal](3, 1) NULL CONSTRAINT [DF_User_SickLeave]  DEFAULT ((10)),
	[SpecialLeave] [decimal](3, 1) NULL,
	[Status] [int] NULL,
	[LeaveModifiedBy] [bigint] NULL,
	[LeaveModifiedOn] [datetime] NULL,
	[PermanentOn] [datetime] NULL,
 CONSTRAINT [PK__User__1788CCACCFB85621] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Common].[ExceptionLogger]    Script Date: 3/28/2018 5:17:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Common].[ExceptionLogger](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ExceptionMessage] [nvarchar](max) NULL,
	[ControllerName] [varchar](100) NULL,
	[ActionName] [varchar](100) NULL,
	[ExceptionStackTrace] [nvarchar](max) NULL,
	[LogTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Common].[SessionLog]    Script Date: 3/28/2018 5:17:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Common].[SessionLog](
	[SessionLogID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[SessionID] [nvarchar](500) NULL,
	[LoggedOn] [datetime] NULL,
	[LoggedOut] [datetime] NULL,
	[Period] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SessionLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Common].[UserFeed]    Script Date: 3/28/2018 5:17:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Common].[UserFeed](
	[UserFeedID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[Feed] [nvarchar](2000) NULL,
	[CreatedOn] [datetime] NULL CONSTRAINT [DF__UserFeed__Create__4A8DFDBE]  DEFAULT (getdate()),
 CONSTRAINT [PK__UserFeed__5B0D3FDD5F400A8A] PRIMARY KEY CLUSTERED 
(
	[UserFeedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Customer].[Customer]    Script Date: 3/28/2018 5:17:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Customer].[Customer](
	[CustomerID] [bigint] IDENTITY(1,1) NOT NULL,
	[CustomerName] [varchar](100) NULL,
	[CustomerEmail] [nvarchar](100) NULL,
	[PhoneNo] [varchar](50) NULL,
	[MobileNo] [varchar](50) NULL,
	[Address] [nvarchar](1000) NULL,
	[CountryId] [int] NULL CONSTRAINT [DF_Customer_CountryId]  DEFAULT ((0)),
	[CityId] [int] NULL CONSTRAINT [DF_Customer_CityId]  DEFAULT ((0)),
	[PostCode] [nvarchar](20) NULL,
	[UserID] [nvarchar](100) NULL,
	[UserPassword] [nvarchar](200) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF__CustomerI__IsAct__7CC54327]  DEFAULT ((1)),
	[DefaultContactName] [varchar](200) NULL,
	[DefaultContactEmail] [nvarchar](200) NULL,
	[DefaultContactPhoneNo] [nvarchar](50) NULL,
	[DefaultContactDesignation] [nvarchar](100) NULL,
	[Remarks] [nvarchar](max) NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL CONSTRAINT [DF__CustomerI__Creat__7DB96760]  DEFAULT (getdate()),
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK__Customer__A4AE64B8EF62AD3F] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Customer].[CustomerContacts]    Script Date: 3/28/2018 5:17:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Customer].[CustomerContacts](
	[CustomerContactID] [bigint] IDENTITY(1,1) NOT NULL,
	[CustomerContactName] [varchar](100) NULL,
	[CustomerContactEmail] [nvarchar](100) NULL,
	[CustomerContactPhoneNumber] [nvarchar](50) NULL,
	[CustomerContactDesignation] [nvarchar](100) NULL,
	[CustomerContactRemark] [nvarchar](max) NULL,
	[CustomerID] [bigint] NULL,
	[UserName] [nvarchar](100) NULL,
	[UserPassword] [nvarchar](200) NULL,
	[IsPrimary] [bit] NULL CONSTRAINT [DF_CustomerContacts_IsPrimary]  DEFAULT ((0)),
	[IsActive] [bit] NULL CONSTRAINT [DF__CustomerU__IsAct__0095D40B]  DEFAULT ((1)),
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL CONSTRAINT [DF__CustomerU__Creat__0189F844]  DEFAULT (getdate()),
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK__Customer__9686C58D9F139D91] PRIMARY KEY CLUSTERED 
(
	[CustomerContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Jobs].[AssignedContact]    Script Date: 3/28/2018 5:17:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Jobs].[AssignedContact](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[JobID] [bigint] NULL,
	[CustomerContactID] [bigint] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_AssignedContact_IsActive]  DEFAULT ((1)),
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL CONSTRAINT [DF_AssignedContact_CreatedOn]  DEFAULT (getdate()),
 CONSTRAINT [PK_AssignedContact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Jobs].[AssignedUser]    Script Date: 3/28/2018 5:17:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Jobs].[AssignedUser](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[JobID] [bigint] NULL,
	[UserID] [int] NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_MapAssignedUser_IsActive]  DEFAULT ((1)),
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL CONSTRAINT [DF_MapAssignedUser_CreatedOn]  DEFAULT (getdate()),
 CONSTRAINT [PK_MapAssignedUser] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Jobs].[Job]    Script Date: 3/28/2018 5:17:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Jobs].[Job](
	[JobID] [bigint] IDENTITY(1,1) NOT NULL,
	[JobCode] [nvarchar](200) NULL,
	[JobTitle] [nvarchar](250) NULL,
	[JobDescription] [nvarchar](max) NULL,
	[CustomerID] [bigint] NULL,
	[Status] [int] NULL CONSTRAINT [DF_Job_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_Job_IsDeleted]  DEFAULT ((0)),
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL CONSTRAINT [DF_Job_CreatedOn]  DEFAULT (getdate()),
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[JobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [Jobs].[PrintApproval]    Script Date: 3/28/2018 5:17:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Jobs].[PrintApproval](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[JobID] [bigint] NULL,
	[FromType] [char](3) NULL,
	[FromID] [bigint] NULL,
	[ToType] [char](3) NULL,
	[ToID] [bigint] NULL,
	[FilePath] [nvarchar](max) NULL,
	[RevisionID] [bigint] NULL,
	[IsApproved] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_PrintApproval] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Master].[Department]    Script Date: 3/28/2018 5:17:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Master].[Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [varchar](100) NULL,
	[Description] [varchar](500) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_Department_IsActive]  DEFAULT ((1)),
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL CONSTRAINT [DF_Department_CreatedOn]  DEFAULT (getdate()),
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
	[CompanyID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Master].[EmailSettings]    Script Date: 3/28/2018 5:17:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Master].[EmailSettings](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProviderName] [nvarchar](50) NULL,
	[FromEmail] [nvarchar](200) NULL,
	[FromDisplayName] [nvarchar](100) NULL,
	[SmtpHost] [nvarchar](100) NULL,
	[SmptPort] [int] NULL,
	[UseDefaultCredentials] [bit] NULL DEFAULT ((0)),
	[CredentialUserName] [nvarchar](50) NULL,
	[CredentialPassword] [nvarchar](50) NULL,
	[EnableSsl] [bit] NULL DEFAULT ((0)),
	[IsActive] [bit] NULL DEFAULT ((0)),
	[IsDeleted] [bit] NULL DEFAULT ((0)),
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Master].[FileUploadSettings]    Script Date: 3/28/2018 5:17:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Master].[FileUploadSettings](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Path] [nvarchar](max) NULL,
	[FolderName] [nvarchar](500) NULL,
	[Domain] [nvarchar](2000) NULL,
	[Port] [int] NULL CONSTRAINT [DF_FileUploadSettings_Port]  DEFAULT ((0)),
	[Type] [int] NULL,
	[Username] [nvarchar](200) NULL,
	[Password] [nvarchar](200) NULL,
	[SSLEnable] [bit] NULL DEFAULT ((0)),
	[IsActive] [bit] NOT NULL DEFAULT ((0)),
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [Master].[Menu]    Script Date: 3/28/2018 5:17:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Master].[Menu](
	[MenuID] [int] IDENTITY(1,1) NOT NULL,
	[MenuName] [varchar](100) NULL,
	[IsThirdParty] [bit] NULL CONSTRAINT [DF_Menu_IsThirdParty]  DEFAULT ((0)),
	[MenuUrl] [varchar](200) NULL,
	[MenuIcon] [varchar](100) NULL,
	[ParentMenuID] [int] NULL,
	[DisplayOrder] [int] NULL,
	[IsModule] [bit] NULL CONSTRAINT [DF__Menu__IsModule__15502E78]  DEFAULT ((0)),
	[IsParent] [bit] NULL CONSTRAINT [DF_Menu_IsParent]  DEFAULT ((0)),
	[IsActive] [bit] NULL CONSTRAINT [DF__Menu__IsActive__164452B1]  DEFAULT ((0)),
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL CONSTRAINT [DF_Menu_CreatedOn]  DEFAULT (getdate()),
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK__Menu__C99ED250F114EB20] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [Administration].[vw_GetAllLeaveStatus]    Script Date: 3/28/2018 5:17:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/******************************			    
** Name: [Administration].[vw_GetAllLeaveStatus]
** Desc: Leave Status List View 
** Auth: Santanu Paul
** Date: Nov 15, 2017
**************************
** Change History
**************************
** PR   Date				Author			Description 
** --   --------			-------			------------------------------------
*******************************/
CREATE VIEW [Administration].[vw_GetAllLeaveStatus]
AS
	SELECT [Status] = 1, StatusName = 'Pending'
	UNION
	SELECT [Status] = 2, LeaveTypeName = 'Approved'
	UNION
	SELECT [Status] = 3, LeaveTypeName = 'Rejected'


GO
/****** Object:  View [Administration].[vw_GetLeaveTypes]    Script Date: 3/28/2018 5:17:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/******************************			    
** Name: [Administration].[ufn_GetLeaveTypeName]
** Desc: Leave Type  List View 
** Auth: Santanu Paul
** Date: Nov 15, 2017
**************************
** Change History
**************************
** PR   Date				Author			Description 
** --   --------			-------			------------------------------------
*******************************/
CREATE VIEW [Administration].[vw_GetLeaveTypes]
AS
	SELECT LeaveType = 1, LeaveTypeName = 'Casual Leave'
	UNION
	SELECT LeaveType = 2, LeaveTypeName = 'Medical Leave'
	UNION
	SELECT LeaveType = 3, LeaveTypeName = 'Special Leave'


GO
/****** Object:  View [Common].[vRandomNumber]    Script Date: 3/28/2018 5:17:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Common].[vRandomNumber]
AS
  SELECT RAND() as RandomNumber

GO
ALTER TABLE [Jobs].[PrintApproval] ADD  CONSTRAINT [DF_PrintApproval_IsApproved]  DEFAULT ((0)) FOR [IsApproved]
GO
ALTER TABLE [Jobs].[PrintApproval] ADD  CONSTRAINT [DF_PrintApproval_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1= Male, 2= Female' , @level0type=N'SCHEMA',@level0name=N'Administration', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Gender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1- Employee , 2- Client' , @level0type=N'SCHEMA',@level0name=N'Administration', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0-Left, 1- Probation,  2- Permanent' , @level0type=N'SCHEMA',@level0name=N'Administration', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1-New, 2-Inprocess, 3-Approved, 4-Finished' , @level0type=N'SCHEMA',@level0name=N'Jobs', @level1type=N'TABLE',@level1name=N'Job', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'C-CustomerContact, U-AdminUsers' , @level0type=N'SCHEMA',@level0name=N'Jobs', @level1type=N'TABLE',@level1name=N'PrintApproval', @level2type=N'COLUMN',@level2name=N'FromType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'C-CustomerContact, U-AdminUsers' , @level0type=N'SCHEMA',@level0name=N'Jobs', @level1type=N'TABLE',@level1name=N'PrintApproval', @level2type=N'COLUMN',@level2name=N'ToType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'this field is used to store the previous selected transaction id' , @level0type=N'SCHEMA',@level0name=N'Jobs', @level1type=N'TABLE',@level1name=N'PrintApproval', @level2type=N'COLUMN',@level2name=N'RevisionID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1- FTP, 2-NETWORK DRIVE, 3-LOCAL DRIVE' , @level0type=N'SCHEMA',@level0name=N'Master', @level1type=N'TABLE',@level1name=N'FileUploadSettings', @level2type=N'COLUMN',@level2name=N'Type'
GO
USE [master]
GO
ALTER DATABASE [Imp_PhiltonePrintProof_Dev] SET  READ_WRITE 
GO
