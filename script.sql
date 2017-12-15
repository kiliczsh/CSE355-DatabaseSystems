/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4206)
    Source Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [master]
GO
/****** Object:  Database [MyMovieDatabase]    Script Date: 12/15/17 4:06:20 PM ******/
CREATE DATABASE [MyMovieDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MyMovieDatabase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\MyMovieDatabase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MyMovieDatabase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\MyMovieDatabase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [MyMovieDatabase] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MyMovieDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MyMovieDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MyMovieDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MyMovieDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MyMovieDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MyMovieDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [MyMovieDatabase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MyMovieDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MyMovieDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MyMovieDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MyMovieDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MyMovieDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MyMovieDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MyMovieDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MyMovieDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MyMovieDatabase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MyMovieDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MyMovieDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MyMovieDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MyMovieDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MyMovieDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MyMovieDatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MyMovieDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MyMovieDatabase] SET RECOVERY FULL 
GO
ALTER DATABASE [MyMovieDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [MyMovieDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MyMovieDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MyMovieDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MyMovieDatabase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MyMovieDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'MyMovieDatabase', N'ON'
GO
ALTER DATABASE [MyMovieDatabase] SET QUERY_STORE = OFF
GO
USE [MyMovieDatabase]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [MyMovieDatabase]
GO
/****** Object:  Table [dbo].[USER]    Script Date: 12/15/17 4:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER](
	[User_Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Name] [nvarchar](50) NOT NULL,
	[User_Mail] [nvarchar](50) NOT NULL,
	[User_Password] [nvarchar](50) NOT NULL,
	[User_BirthDate] [date] NOT NULL,
	[User_Job] [int] NOT NULL,
	[User_Age]  AS (datediff(year,[User_BirthDate],getdate())),
 CONSTRAINT [PK_USERS] PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MOVIE]    Script Date: 12/15/17 4:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MOVIE](
	[Movie_ID] [int] IDENTITY(1,1) NOT NULL,
	[Movie_Name] [nvarchar](50) NOT NULL,
	[Category_ID] [int] NOT NULL,
	[Cast_ID] [int] NOT NULL,
 CONSTRAINT [PK_MOVIES] PRIMARY KEY CLUSTERED 
(
	[Movie_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WILL_WATCH]    Script Date: 12/15/17 4:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WILL_WATCH](
	[User_ID] [int] NOT NULL,
	[Movie_ID] [int] NOT NULL,
 CONSTRAINT [PK_WILL_WATCH] PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC,
	[Movie_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[viewTable2]    Script Date: 12/15/17 4:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viewTable2] AS
SELECT m.Category_ID "Category ID", COUNT( ww.User_ID) "Willing to Watch" , AVG(u.User_Age) "Average Age"
FROM MOVIE m, WILL_WATCH ww, [USER] u
WHERE ww.Movie_ID= m.Movie_ID AND ww.User_ID= u.User_ID AND u.User_Age > 18 
GROUP BY m.Category_ID
GO
/****** Object:  Table [dbo].[WATCHED]    Script Date: 12/15/17 4:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WATCHED](
	[User_ID] [int] NOT NULL,
	[Movie_ID] [int] NOT NULL,
 CONSTRAINT [PK_WATCHED] PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC,
	[Movie_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FILM_AWARD]    Script Date: 12/15/17 4:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FILM_AWARD](
	[Movie_ID] [int] NOT NULL,
	[Award_ID] [int] NOT NULL,
 CONSTRAINT [PK_FILM_AWARD] PRIMARY KEY CLUSTERED 
(
	[Movie_ID] ASC,
	[Award_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[viewTable1]    Script Date: 12/15/17 4:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viewTable1] AS
SELECT  m.Movie_Name "Movie Name",m.Category_ID Category ,COUNT(DISTINCT fm.Award_ID) Awards, COUNT( w.User_ID) Follower
FROM MOVIE m, FILM_AWARD fm , WATCHED w, [USER] u
WHERE fm.Movie_ID = m.Movie_ID AND w.Movie_ID= m.Movie_ID AND w.User_ID= u.User_ID AND m.Category_ID=11
GROUP BY m.Movie_Name, w.Movie_ID , m.Category_ID
HAVING COUNT(DISTINCT fm.Award_ID) >= 2 AND COUNT( w.User_ID) >= 2
GO
/****** Object:  Table [dbo].[CAST]    Script Date: 12/15/17 4:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAST](
	[Cast_ID] [int] IDENTITY(1,1) NOT NULL,
	[Director] [nvarchar](50) NOT NULL,
	[Writer] [nvarchar](50) NOT NULL,
	[Producer] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CAST] PRIMARY KEY CLUSTERED 
(
	[Cast_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[viewTable3]    Script Date: 12/15/17 4:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  VIEW [dbo].[viewTable3] as
select [USER].User_Name,MOVIE.Movie_Name  from WATCHED
join
(select DISTINCT(WATCHED.User_ID) from MOVIE
Join WATCHED
on Movie.Movie_ID = WATCHED.Movie_ID
join CAST
on Movie.Cast_ID = Cast.Cast_ID
WHERE Director = 'Zeki Demirkubuz'
 ) as table1
on table1.User_ID = WATCHED.User_ID
join MOVIE
on MOVIE.Movie_ID = WATCHED.Movie_ID	
join [USER]
on [USER].User_ID = WATCHED.User_ID
GO
/****** Object:  View [dbo].[viewTable4]    Script Date: 12/15/17 4:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  VIEW [dbo].[viewTable4] as
 
(select WATCHED.User_ID,WATCHED.Movie_ID from WATCHED
join
(select DISTINCT(WATCHED.USER_ID) from WATCHED
join 
(select MOVIE.Movie_ID,MOVIE.Movie_Name,count(FILM_AWARD.Award_ID) as Award_Counter from MOVIE
join FILM_AWARD
on MOVIE.Movie_ID = FILM_AWARD.Movie_ID
group by MOVIE.Movie_ID,MOVIE.Movie_Name
HAVING count(FILM_AWARD.Award_ID) >= 2 ) as table1
on
table1.Movie_ID = WATCHED.Movie_ID) as table2
on WATCHED.User_ID = table2.User_ID)
EXCEPT
(select WATCHED.USER_ID, WATCHED.Movie_ID from WATCHED
join 
(select MOVIE.Movie_ID,MOVIE.Movie_Name,count(FILM_AWARD.Award_ID) as Award_Counter from MOVIE
join FILM_AWARD
on MOVIE.Movie_ID = FILM_AWARD.Movie_ID
group by MOVIE.Movie_ID,MOVIE.Movie_Name
HAVING count(FILM_AWARD.Award_ID) >= 2 ) as table1
on
table1.Movie_ID = WATCHED.Movie_ID) 
GO
/****** Object:  Table [dbo].[AWARD]    Script Date: 12/15/17 4:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AWARD](
	[Award_ID] [int] IDENTITY(1,1) NOT NULL,
	[Award_Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Awards] PRIMARY KEY CLUSTERED 
(
	[Award_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CATEGORY]    Script Date: 12/15/17 4:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORY](
	[Category_ID] [int] IDENTITY(1,1) NOT NULL,
	[Category_Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[Category_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JOB]    Script Date: 12/15/17 4:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JOB](
	[Job_ID] [int] NOT NULL,
	[Job_Name] [nchar](15) NULL,
 CONSTRAINT [PK_JOB] PRIMARY KEY CLUSTERED 
(
	[Job_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AWARD] ON 

INSERT [dbo].[AWARD] ([Award_ID], [Award_Name]) VALUES (1, N'Academy')
INSERT [dbo].[AWARD] ([Award_ID], [Award_Name]) VALUES (2, N'Golden Palm
Palme d''Or')
INSERT [dbo].[AWARD] ([Award_ID], [Award_Name]) VALUES (3, N'Altin Portakal')
INSERT [dbo].[AWARD] ([Award_ID], [Award_Name]) VALUES (4, N'BAFTA')
INSERT [dbo].[AWARD] ([Award_ID], [Award_Name]) VALUES (5, N'Golden Globe')
INSERT [dbo].[AWARD] ([Award_ID], [Award_Name]) VALUES (6, N'Empty')
SET IDENTITY_INSERT [dbo].[AWARD] OFF
SET IDENTITY_INSERT [dbo].[CAST] ON 

INSERT [dbo].[CAST] ([Cast_ID], [Director], [Writer], [Producer]) VALUES (1, N'Park Chan-wook', N'Park Chan-wook', N'Seung-yong Lim')
INSERT [dbo].[CAST] ([Cast_ID], [Director], [Writer], [Producer]) VALUES (2, N'Alejandro González Iñárritu', N'Guillermo Arriaga', N'Alejandro González Iñárritu')
INSERT [dbo].[CAST] ([Cast_ID], [Director], [Writer], [Producer]) VALUES (3, N'Yılmaz Güney', N'Yılmaz Güney', N'Yılmaz Güney')
INSERT [dbo].[CAST] ([Cast_ID], [Director], [Writer], [Producer]) VALUES (4, N'David Fincher', N'John Brancato', N'Ceán Chaffin')
INSERT [dbo].[CAST] ([Cast_ID], [Director], [Writer], [Producer]) VALUES (5, N'Rajkumar Hirani', N'Abhijat Joshi', N'Vidhu Vinod Chopra')
INSERT [dbo].[CAST] ([Cast_ID], [Director], [Writer], [Producer]) VALUES (6, N'Martin Scorsese', N'Paul Schrader', N'Julia Phillips')
INSERT [dbo].[CAST] ([Cast_ID], [Director], [Writer], [Producer]) VALUES (7, N'David Lynch', N'David Lynch', N'Neal Edelstein')
INSERT [dbo].[CAST] ([Cast_ID], [Director], [Writer], [Producer]) VALUES (8, N'Alejandro Amenábar', N'Alejandro Amenábar', N'Fernando Bovaira')
INSERT [dbo].[CAST] ([Cast_ID], [Director], [Writer], [Producer]) VALUES (9, N'Nick Cassavetes', N'Jeremy Leven', N'Lynn Harris')
INSERT [dbo].[CAST] ([Cast_ID], [Director], [Writer], [Producer]) VALUES (10, N'Zeki Demirkubuz', N'Zeki Demirkubuz', N'Zeki Demirkubuz')
INSERT [dbo].[CAST] ([Cast_ID], [Director], [Writer], [Producer]) VALUES (11, N'Cagan Irmak', N'Cagan Irmak', N'Abdullah Oguz')
INSERT [dbo].[CAST] ([Cast_ID], [Director], [Writer], [Producer]) VALUES (12, N'Aytac Agirlar', N'Aytac Agirlar', N'Aytac Agirlar')
INSERT [dbo].[CAST] ([Cast_ID], [Director], [Writer], [Producer]) VALUES (13, N'Handan Ipekçi', N'Handan Ipekçi', N'Handan Ipekçi')
INSERT [dbo].[CAST] ([Cast_ID], [Director], [Writer], [Producer]) VALUES (14, N'Sidney Lumet', N'Reginald Rose', N'Henry Fonda')
INSERT [dbo].[CAST] ([Cast_ID], [Director], [Writer], [Producer]) VALUES (15, N'Quentin Tarantino', N'Quentin Tarantino', N'Quentin Tarantino')
SET IDENTITY_INSERT [dbo].[CAST] OFF
SET IDENTITY_INSERT [dbo].[CATEGORY] ON 

INSERT [dbo].[CATEGORY] ([Category_ID], [Category_Name]) VALUES (1, N'Joyous')
INSERT [dbo].[CATEGORY] ([Category_ID], [Category_Name]) VALUES (2, N'Loneliness')
INSERT [dbo].[CATEGORY] ([Category_ID], [Category_Name]) VALUES (3, N'Brain Burning')
INSERT [dbo].[CATEGORY] ([Category_ID], [Category_Name]) VALUES (4, N'True Life')
INSERT [dbo].[CATEGORY] ([Category_ID], [Category_Name]) VALUES (5, N'With Your Partner')
INSERT [dbo].[CATEGORY] ([Category_ID], [Category_Name]) VALUES (6, N'Crisis')
INSERT [dbo].[CATEGORY] ([Category_ID], [Category_Name]) VALUES (7, N'
Jealousy')
INSERT [dbo].[CATEGORY] ([Category_ID], [Category_Name]) VALUES (8, N'Cheat')
INSERT [dbo].[CATEGORY] ([Category_ID], [Category_Name]) VALUES (9, N'Happy Birth Day')
INSERT [dbo].[CATEGORY] ([Category_ID], [Category_Name]) VALUES (10, N'LOVE')
INSERT [dbo].[CATEGORY] ([Category_ID], [Category_Name]) VALUES (11, N'Conversation')
SET IDENTITY_INSERT [dbo].[CATEGORY] OFF
INSERT [dbo].[FILM_AWARD] ([Movie_ID], [Award_ID]) VALUES (1, 1)
INSERT [dbo].[FILM_AWARD] ([Movie_ID], [Award_ID]) VALUES (1, 2)
INSERT [dbo].[FILM_AWARD] ([Movie_ID], [Award_ID]) VALUES (2, 1)
INSERT [dbo].[FILM_AWARD] ([Movie_ID], [Award_ID]) VALUES (2, 2)
INSERT [dbo].[FILM_AWARD] ([Movie_ID], [Award_ID]) VALUES (3, 2)
INSERT [dbo].[FILM_AWARD] ([Movie_ID], [Award_ID]) VALUES (4, 2)
INSERT [dbo].[FILM_AWARD] ([Movie_ID], [Award_ID]) VALUES (4, 3)
INSERT [dbo].[FILM_AWARD] ([Movie_ID], [Award_ID]) VALUES (5, 2)
INSERT [dbo].[FILM_AWARD] ([Movie_ID], [Award_ID]) VALUES (6, 1)
INSERT [dbo].[FILM_AWARD] ([Movie_ID], [Award_ID]) VALUES (7, 4)
INSERT [dbo].[FILM_AWARD] ([Movie_ID], [Award_ID]) VALUES (7, 5)
INSERT [dbo].[FILM_AWARD] ([Movie_ID], [Award_ID]) VALUES (8, 1)
INSERT [dbo].[FILM_AWARD] ([Movie_ID], [Award_ID]) VALUES (9, 1)
INSERT [dbo].[FILM_AWARD] ([Movie_ID], [Award_ID]) VALUES (9, 2)
INSERT [dbo].[FILM_AWARD] ([Movie_ID], [Award_ID]) VALUES (10, 2)
INSERT [dbo].[FILM_AWARD] ([Movie_ID], [Award_ID]) VALUES (11, 6)
INSERT [dbo].[FILM_AWARD] ([Movie_ID], [Award_ID]) VALUES (12, 3)
INSERT [dbo].[FILM_AWARD] ([Movie_ID], [Award_ID]) VALUES (13, 3)
INSERT [dbo].[FILM_AWARD] ([Movie_ID], [Award_ID]) VALUES (14, 3)
INSERT [dbo].[FILM_AWARD] ([Movie_ID], [Award_ID]) VALUES (15, 3)
INSERT [dbo].[FILM_AWARD] ([Movie_ID], [Award_ID]) VALUES (16, 3)
INSERT [dbo].[FILM_AWARD] ([Movie_ID], [Award_ID]) VALUES (17, 1)
INSERT [dbo].[FILM_AWARD] ([Movie_ID], [Award_ID]) VALUES (17, 2)
INSERT [dbo].[FILM_AWARD] ([Movie_ID], [Award_ID]) VALUES (17, 4)
INSERT [dbo].[FILM_AWARD] ([Movie_ID], [Award_ID]) VALUES (18, 1)
INSERT [dbo].[FILM_AWARD] ([Movie_ID], [Award_ID]) VALUES (18, 2)
INSERT [dbo].[FILM_AWARD] ([Movie_ID], [Award_ID]) VALUES (18, 4)
INSERT [dbo].[FILM_AWARD] ([Movie_ID], [Award_ID]) VALUES (18, 5)
INSERT [dbo].[FILM_AWARD] ([Movie_ID], [Award_ID]) VALUES (19, 6)
INSERT [dbo].[FILM_AWARD] ([Movie_ID], [Award_ID]) VALUES (20, 6)
INSERT [dbo].[JOB] ([Job_ID], [Job_Name]) VALUES (1, N'Student        ')
INSERT [dbo].[JOB] ([Job_ID], [Job_Name]) VALUES (2, N'Engineer       ')
INSERT [dbo].[JOB] ([Job_ID], [Job_Name]) VALUES (3, N'Dentist        ')
INSERT [dbo].[JOB] ([Job_ID], [Job_Name]) VALUES (4, N'Doctor         ')
INSERT [dbo].[JOB] ([Job_ID], [Job_Name]) VALUES (5, N'Teacher        ')
INSERT [dbo].[JOB] ([Job_ID], [Job_Name]) VALUES (6, N'Lawyer         ')
INSERT [dbo].[JOB] ([Job_ID], [Job_Name]) VALUES (7, N'Judge          ')
INSERT [dbo].[JOB] ([Job_ID], [Job_Name]) VALUES (8, N'Nurse          ')
INSERT [dbo].[JOB] ([Job_ID], [Job_Name]) VALUES (9, N'Architect      ')
INSERT [dbo].[JOB] ([Job_ID], [Job_Name]) VALUES (10, N'Artist         ')
INSERT [dbo].[JOB] ([Job_ID], [Job_Name]) VALUES (11, N'Not Entered    ')
SET IDENTITY_INSERT [dbo].[MOVIE] ON 

INSERT [dbo].[MOVIE] ([Movie_ID], [Movie_Name], [Category_ID], [Cast_ID]) VALUES (1, N'Oldboy', 6, 1)
INSERT [dbo].[MOVIE] ([Movie_ID], [Movie_Name], [Category_ID], [Cast_ID]) VALUES (2, N'Ameros Peros', 2, 2)
INSERT [dbo].[MOVIE] ([Movie_ID], [Movie_Name], [Category_ID], [Cast_ID]) VALUES (3, N'Yol', 4, 3)
INSERT [dbo].[MOVIE] ([Movie_ID], [Movie_Name], [Category_ID], [Cast_ID]) VALUES (4, N'Duvar', 4, 3)
INSERT [dbo].[MOVIE] ([Movie_ID], [Movie_Name], [Category_ID], [Cast_ID]) VALUES (5, N'Sürü', 4, 3)
INSERT [dbo].[MOVIE] ([Movie_ID], [Movie_Name], [Category_ID], [Cast_ID]) VALUES (6, N'The Game', 9, 4)
INSERT [dbo].[MOVIE] ([Movie_ID], [Movie_Name], [Category_ID], [Cast_ID]) VALUES (7, N'3 Idiot', 1, 5)
INSERT [dbo].[MOVIE] ([Movie_ID], [Movie_Name], [Category_ID], [Cast_ID]) VALUES (8, N'Taxi Driver', 2, 6)
INSERT [dbo].[MOVIE] ([Movie_ID], [Movie_Name], [Category_ID], [Cast_ID]) VALUES (9, N'Mullholland Drive', 3, 7)
INSERT [dbo].[MOVIE] ([Movie_ID], [Movie_Name], [Category_ID], [Cast_ID]) VALUES (10, N'The Others', 3, 8)
INSERT [dbo].[MOVIE] ([Movie_ID], [Movie_Name], [Category_ID], [Cast_ID]) VALUES (11, N'The Notebook', 5, 9)
INSERT [dbo].[MOVIE] ([Movie_ID], [Movie_Name], [Category_ID], [Cast_ID]) VALUES (12, N'Kiskanmak', 7, 10)
INSERT [dbo].[MOVIE] ([Movie_ID], [Movie_Name], [Category_ID], [Cast_ID]) VALUES (13, N'Itiraf', 8, 10)
INSERT [dbo].[MOVIE] ([Movie_ID], [Movie_Name], [Category_ID], [Cast_ID]) VALUES (14, N'Mustafa Hakkinda Hersey', 7, 11)
INSERT [dbo].[MOVIE] ([Movie_ID], [Movie_Name], [Category_ID], [Cast_ID]) VALUES (15, N'Incir Receli', 10, 12)
INSERT [dbo].[MOVIE] ([Movie_ID], [Movie_Name], [Category_ID], [Cast_ID]) VALUES (16, N'Buyuk Adam Kucuk Ask', 4, 13)
INSERT [dbo].[MOVIE] ([Movie_ID], [Movie_Name], [Category_ID], [Cast_ID]) VALUES (17, N'12 Angry Man', 11, 14)
INSERT [dbo].[MOVIE] ([Movie_ID], [Movie_Name], [Category_ID], [Cast_ID]) VALUES (18, N'Pulp Fiction', 11, 15)
INSERT [dbo].[MOVIE] ([Movie_ID], [Movie_Name], [Category_ID], [Cast_ID]) VALUES (19, N'Reservuar Dogs', 11, 15)
INSERT [dbo].[MOVIE] ([Movie_ID], [Movie_Name], [Category_ID], [Cast_ID]) VALUES (20, N'Jackie Brown', 11, 15)
SET IDENTITY_INSERT [dbo].[MOVIE] OFF
SET IDENTITY_INSERT [dbo].[USER] ON 

INSERT [dbo].[USER] ([User_Id], [User_Name], [User_Mail], [User_Password], [User_BirthDate], [User_Job]) VALUES (1, N'Cumali', N'Demir@gmail.com', N'123456', CAST(N'1995-05-07' AS Date), 1)
INSERT [dbo].[USER] ([User_Id], [User_Name], [User_Mail], [User_Password], [User_BirthDate], [User_Job]) VALUES (2, N'Mehmet', N'Demirel@gmail.com', N'zxcasdqwe', CAST(N'1995-02-04' AS Date), 2)
INSERT [dbo].[USER] ([User_Id], [User_Name], [User_Mail], [User_Password], [User_BirthDate], [User_Job]) VALUES (3, N'Erkay', N'Duman@gmail.com', N'f4g5h6', CAST(N'1985-04-02' AS Date), 1)
INSERT [dbo].[USER] ([User_Id], [User_Name], [User_Mail], [User_Password], [User_BirthDate], [User_Job]) VALUES (4, N'Emrullah', N'Seker@gmail.com', N'h1g2f3', CAST(N'1990-11-07' AS Date), 7)
INSERT [dbo].[USER] ([User_Id], [User_Name], [User_Mail], [User_Password], [User_BirthDate], [User_Job]) VALUES (5, N'Mert', N'Ozcan@gmail.com', N'abc123456', CAST(N'1989-02-01' AS Date), 5)
INSERT [dbo].[USER] ([User_Id], [User_Name], [User_Mail], [User_Password], [User_BirthDate], [User_Job]) VALUES (6, N'Adnan', N'Eser@gmail.com', N'123456789', CAST(N'1956-07-21' AS Date), 3)
INSERT [dbo].[USER] ([User_Id], [User_Name], [User_Mail], [User_Password], [User_BirthDate], [User_Job]) VALUES (7, N'Ahmet', N'Bektas@gmail.com', N'123123123', CAST(N'1985-02-28' AS Date), 8)
INSERT [dbo].[USER] ([User_Id], [User_Name], [User_Mail], [User_Password], [User_BirthDate], [User_Job]) VALUES (8, N'Baris', N'Demir3@gmail.com', N'987654321', CAST(N'1982-04-21' AS Date), 4)
INSERT [dbo].[USER] ([User_Id], [User_Name], [User_Mail], [User_Password], [User_BirthDate], [User_Job]) VALUES (9, N'Sait', N'msait@gmail.com', N'1234512345', CAST(N'1980-09-18' AS Date), 6)
INSERT [dbo].[USER] ([User_Id], [User_Name], [User_Mail], [User_Password], [User_BirthDate], [User_Job]) VALUES (10, N'Fatmanur', N'fnursanli@gmail.com', N'z1x2c3', CAST(N'1995-11-09' AS Date), 2)
SET IDENTITY_INSERT [dbo].[USER] OFF
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (1, 1)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (1, 2)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (1, 3)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (1, 4)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (1, 5)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (1, 6)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (1, 7)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (1, 8)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (1, 9)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (1, 10)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (1, 11)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (1, 12)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (1, 13)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (1, 14)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (1, 15)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (1, 16)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (1, 17)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (1, 18)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (1, 19)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (1, 20)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (2, 6)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (2, 8)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (2, 10)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (3, 2)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (3, 3)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (3, 6)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (3, 7)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (4, 1)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (5, 10)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (6, 16)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (7, 12)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (7, 19)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (7, 20)
INSERT [dbo].[WATCHED] ([User_ID], [Movie_ID]) VALUES (9, 1)
INSERT [dbo].[WILL_WATCH] ([User_ID], [Movie_ID]) VALUES (7, 6)
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_USER]    Script Date: 12/15/17 4:06:21 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_USER] ON [dbo].[USER]
(
	[User_Mail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[USER] ADD  CONSTRAINT [DF_USER_User_Job]  DEFAULT ((6)) FOR [User_Job]
GO
ALTER TABLE [dbo].[FILM_AWARD]  WITH CHECK ADD  CONSTRAINT [FK_FILM_AWARD_AWARD] FOREIGN KEY([Award_ID])
REFERENCES [dbo].[AWARD] ([Award_ID])
GO
ALTER TABLE [dbo].[FILM_AWARD] CHECK CONSTRAINT [FK_FILM_AWARD_AWARD]
GO
ALTER TABLE [dbo].[FILM_AWARD]  WITH CHECK ADD  CONSTRAINT [FK_FILM_AWARD_MOVIE] FOREIGN KEY([Movie_ID])
REFERENCES [dbo].[MOVIE] ([Movie_ID])
GO
ALTER TABLE [dbo].[FILM_AWARD] CHECK CONSTRAINT [FK_FILM_AWARD_MOVIE]
GO
ALTER TABLE [dbo].[MOVIE]  WITH CHECK ADD  CONSTRAINT [FK_MOVIES_CAST] FOREIGN KEY([Cast_ID])
REFERENCES [dbo].[CAST] ([Cast_ID])
GO
ALTER TABLE [dbo].[MOVIE] CHECK CONSTRAINT [FK_MOVIES_CAST]
GO
ALTER TABLE [dbo].[MOVIE]  WITH CHECK ADD  CONSTRAINT [FK_MOVIES_CATEGORY] FOREIGN KEY([Category_ID])
REFERENCES [dbo].[CATEGORY] ([Category_ID])
GO
ALTER TABLE [dbo].[MOVIE] CHECK CONSTRAINT [FK_MOVIES_CATEGORY]
GO
ALTER TABLE [dbo].[USER]  WITH CHECK ADD  CONSTRAINT [FK_USER_JOB] FOREIGN KEY([User_Job])
REFERENCES [dbo].[JOB] ([Job_ID])
GO
ALTER TABLE [dbo].[USER] CHECK CONSTRAINT [FK_USER_JOB]
GO
ALTER TABLE [dbo].[WATCHED]  WITH CHECK ADD  CONSTRAINT [FK_WATCHED_MOVIE1] FOREIGN KEY([Movie_ID])
REFERENCES [dbo].[MOVIE] ([Movie_ID])
GO
ALTER TABLE [dbo].[WATCHED] CHECK CONSTRAINT [FK_WATCHED_MOVIE1]
GO
ALTER TABLE [dbo].[WATCHED]  WITH CHECK ADD  CONSTRAINT [FK_WATCHED_USER1] FOREIGN KEY([User_ID])
REFERENCES [dbo].[USER] ([User_Id])
GO
ALTER TABLE [dbo].[WATCHED] CHECK CONSTRAINT [FK_WATCHED_USER1]
GO
ALTER TABLE [dbo].[WILL_WATCH]  WITH CHECK ADD  CONSTRAINT [FK_WILL_WATCH_MOVIE] FOREIGN KEY([Movie_ID])
REFERENCES [dbo].[MOVIE] ([Movie_ID])
GO
ALTER TABLE [dbo].[WILL_WATCH] CHECK CONSTRAINT [FK_WILL_WATCH_MOVIE]
GO
ALTER TABLE [dbo].[WILL_WATCH]  WITH CHECK ADD  CONSTRAINT [FK_WILL_WATCH_USER] FOREIGN KEY([User_ID])
REFERENCES [dbo].[USER] ([User_Id])
GO
ALTER TABLE [dbo].[WILL_WATCH] CHECK CONSTRAINT [FK_WILL_WATCH_USER]
GO
/****** Object:  StoredProcedure [dbo].[birKullaniciSilindigindeIzledigiveizlemedigifilmeribosalt]    Script Date: 12/15/17 4:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[birKullaniciSilindigindeIzledigiveizlemedigifilmeribosalt]
(
	@delete_User_ID int
)	
AS

BEGIN
	IF EXISTS(SELECT * FROM WATCHED WHERE WATCHED.User_ID = @delete_User_ID)
	BEGIN
		DELETE FROM WATCHED WHERE WATCHED.User_ID = @delete_User_ID
	END

	IF EXISTS(SELECT * FROM WILL_WATCH WHERE WILL_WATCH.User_ID = @delete_User_ID)
	BEGIN
		DELETE FROM WILL_WATCH WHERE WILL_WATCH.User_ID = @delete_User_ID
	END
	
	DELETE FROM [USER] WHERE [USER].User_Id = @delete_User_ID

END
GO
/****** Object:  StoredProcedure [dbo].[CastIleFilmEkleme]    Script Date: 12/15/17 4:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[CastIleFilmEkleme]
(
	@directorName nvarchar(50),
	@writerName nvarchar(50),
	@producerName nvarchar(50),

	@movieName nvarchar(50),
	@categoryID int
)	
AS

DECLARE 
	@castID int


BEGIN
	
	IF EXISTS(SELECT * FROM [CAST] WHERE [CAST].Director = @directorName AND [CAST].Producer = @producerName AND [CAST].Writer =@writerName )
	BEGIN
		SELECT @castID = [CAST].Cast_ID FROM [CAST] WHERE [CAST].Director = @directorName AND [CAST].Producer = @producerName AND [CAST].Writer =@writerName
	END

	ELSE
	BEGIN
		INSERT INTO [CAST](Director,Writer,Producer) VALUES(@directorName,@writerName,@producerName)
		SELECT @castID = [CAST].Cast_ID FROM [CAST] WHERE [CAST].Director = @directorName AND [CAST].Producer = @producerName AND [CAST].Writer =@writerName 
	END

	INSERT INTO MOVIE(Movie_Name,Category_ID,Cast_ID) VALUES(@movieName,@categoryID,@castID)
END
GO
/****** Object:  StoredProcedure [dbo].[numberOfAwardFilm]    Script Date: 12/15/17 4:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------> FIRST STORED PROCEDURE <------
CREATE PROC [dbo].[numberOfAwardFilm]
(
	@awardNumber int
	--@numberOfStudents int OUTPUT,
	--@timeConsumed int OUTPUT
)	
AS
BEGIN

SELECT FILM_AWARD.Movie_ID,MOVIE.Movie_Name, Count(FILM_AWARD.Award_ID) AS Award_Counter FROM FILM_AWARD 
JOIN MOVIE
ON FILM_AWARD.Movie_ID = MOVIE.Movie_ID
GROUP BY FILM_AWARD.Movie_ID,MOVIE.Movie_Name
HAVING COUNT(FILM_AWARD.Award_ID) >= @awardNumber

END
GO
/****** Object:  StoredProcedure [dbo].[OdulluFilmEkle]    Script Date: 12/15/17 4:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[OdulluFilmEkle]
(
	@awardName nvarchar(50),
	@add_Movie_Name nvarchar(50),
	@add_Category_ID int,
	@add_Cast_ID int
)	
AS

DECLARE
	@awardID int,
	@movieID int

BEGIN
	IF EXISTS(SELECT * FROM AWARD WHERE AWARD.Award_Name = @awardName)
	BEGIN
		SELECT @awardID = AWARD.Award_ID FROM AWARD WHERE AWARD.Award_Name = @awardName		
	END
	ELSE
	BEGIN
		SELECT('eklemeye calisitigniz odul yoktu fakat biz odul tablosuna ekledik ve listen i olusturduk')
		INSERT INTO AWARD(Award_Name) VALUES(@awardName)
		SELECT @awardID = AWARD.Award_ID FROM AWARD WHERE AWARD.Award_Name = @awardName		

	END

	INSERT INTO MOVIE(Movie_Name,Category_ID,Cast_ID) VALUES( @add_Movie_Name,@add_Category_ID,@add_Cast_ID)
	SELECT @movieID = MOVIE.Movie_ID FROM MOVIE WHERE MOVIE.Movie_Name = @add_Movie_Name
	INSERT INTO FILM_AWARD(Movie_ID,Award_ID) VALUES (@movieID,@awardID)
END
GO
/****** Object:  Trigger [dbo].[trg_IsExistsInWill_Watch]    Script Date: 12/15/17 4:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_IsExistsInWill_Watch] ON [dbo].[WATCHED]
INSTEAD OF INSERT
AS 
BEGIN
 
	DECLARE @UID AS int;
	DECLARE @MID AS int;
	SELECT 	@UID=User_ID 	FROM inserted;
	SELECT 	@MID=Movie_ID 	FROM inserted;
	IF EXISTS(SELECT WILL_WATCH.User_Id, WILL_WATCH.Movie_ID FROM WILL_WATCH WHERE WILL_WATCH.User_Id = @UID AND WILL_WATCH.Movie_ID = @MID )
	BEGIN
			SELECT ('There is a record that User_Id: ' + CONVERT(nvarchar(10),@UID) +' and Movie_ID: ' + CONVERT(nvarchar(10),@MID) + ' is exist In WILL_WATCH TABLE So you can not add this record')
	END

	ELSE
		BEGIN
			INSERT INTO WATCHED VALUES(@UID,@MID);	
		END
END
GO
ALTER TABLE [dbo].[WATCHED] ENABLE TRIGGER [trg_IsExistsInWill_Watch]
GO
/****** Object:  Trigger [dbo].[trg_IsExistsInWatched]    Script Date: 12/15/17 4:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_IsExistsInWatched] ON [dbo].[WILL_WATCH]
INSTEAD OF INSERT
AS 
BEGIN
 
	DECLARE @UID AS int;
	DECLARE @MID AS int;
	SELECT 	@UID=User_ID 	FROM inserted;
	SELECT 	@MID=Movie_ID 	FROM inserted;
	IF EXISTS(SELECT WATCHED.User_Id, WATCHED.Movie_ID FROM WATCHED WHERE WATCHED.User_Id = @UID AND WATCHED.Movie_ID = @MID )
	BEGIN
			SELECT ('There is a record that User_Id: ' + CONVERT(nvarchar(10),@UID) + ' and Movie_ID' + CONVERT(nvarchar(10),@MID) + ' is exist In WATCH TABLE So you can not add this record')
	END

	ELSE
		BEGIN
			INSERT INTO WILL_WATCH VALUES(@UID,@MID);	
		END
END
GO
ALTER TABLE [dbo].[WILL_WATCH] ENABLE TRIGGER [trg_IsExistsInWatched]
GO
USE [master]
GO
ALTER DATABASE [MyMovieDatabase] SET  READ_WRITE 
GO
