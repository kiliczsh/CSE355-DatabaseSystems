
CREATE TABLE [dbo].[goals](
	[matchID] [int] NOT NULL,
	[playerID] [int] NOT NULL,
	[isOwnGoal] [bit] NULL,
	[minute] [tinyint] NOT NULL,
 CONSTRAINT [PK_goals_1] PRIMARY KEY CLUSTERED 
(
	[matchID] ASC,
	[playerID] ASC,
	[minute] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[match]    Script Date: 15.11.2017 14:26:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[match](
	[matchID] [int] NOT NULL,
	[homeTeamID] [int] NULL,
	[visitingTeamID] [int] NULL,
	[dateOfMatch] [smalldatetime] NULL,
	[week] [tinyint] NULL,
 CONSTRAINT [PK_match] PRIMARY KEY CLUSTERED 
(
	[matchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[player]    Script Date: 15.11.2017 14:26:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[player](
	[playerID] [int] NOT NULL,
	[firstName] [nvarchar](25) NULL,
	[lastName] [nvarchar](25) NULL,
	[nationality] [varchar](25) NULL,
	[birthDate] [smalldatetime] NULL,
	[age] [smallint] NULL,
	[position] [varchar](25) NULL,
 CONSTRAINT [PK_player] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[player_team]    Script Date: 15.11.2017 14:26:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[player_team](
	[playerID] [int] NOT NULL,
	[teamID] [int] NOT NULL,
	[season] [varchar](5) NOT NULL,
 CONSTRAINT [PK_player-team] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[teamID] ASC,
	[season] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[team]    Script Date: 15.11.2017 14:26:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[team](
	[teamID] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[city] [nvarchar](25) NULL,
 CONSTRAINT [PK_team] PRIMARY KEY CLUSTERED 
(
	[teamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (1, 2, 0, 75)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (1, 7, 0, 81)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (2, 5, 0, 18)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (2, 66, 0, 59)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (2, 66, 0, 72)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (3, 2, 0, 9)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (3, 5, 0, 43)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (3, 5, 0, 45)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (3, 34, 0, 83)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (3, 38, 0, 37)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (3, 41, 0, 12)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (4, 5, 0, 85)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (4, 112, 0, 15)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (5, 61, 0, 38)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (6, 6, 0, 30)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (6, 38, 0, 24)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (8, 47, 0, 23)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (8, 48, 0, 66)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (9, 41, 0, 23)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (10, 65, 0, 9)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (11, 60, 0, 60)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (11, 60, 0, 67)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (11, 95, 0, 66)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (12, 61, 0, 56)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (12, 65, 0, 51)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (12, 65, 0, 83)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (12, 73, 0, 72)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (12, 102, 0, 60)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (13, 5, 0, 88)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (13, 7, 0, 51)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (13, 12, 0, 23)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (13, 15, 0, 66)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (13, 371, 0, 41)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (13, 377, 0, 74)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (14, 5, 0, 28)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (14, 5, 0, 37)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (15, 5, 0, 15)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (15, 14, 0, 37)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (15, 15, 0, 64)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (16, 426, 0, 48)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (16, 426, 0, 52)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (17, 22, 0, 70)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (19, 2, 0, 17)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (19, 8, 0, 39)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (19, 12, 0, 55)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (19, 127, 0, 24)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (19, 127, 0, 34)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (19, 129, 0, 38)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (21, 2, 0, 21)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (21, 25, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (21, 380, 1, 82)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (22, 2, 0, 26)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (22, 5, 0, 30)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (22, 8, 0, 41)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (22, 479, 0, 49)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (23, 5, 0, 5)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (23, 461, 0, 71)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (24, 4, 0, 44)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (24, 5, 0, 26)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (24, 10, 0, 34)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (25, 2, 0, 70)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (25, 14, 0, 22)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (25, 19, 0, 46)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (25, 19, 0, 80)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (25, 212, 0, 29)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (26, 297, 0, 21)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (27, 7, 0, 53)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (27, 8, 0, 57)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (27, 12, 0, 43)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (27, 372, 0, 68)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (27, 377, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (28, 2, 0, 19)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (28, 22, 0, 74)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (28, 284, 0, 85)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (29, 5, 0, 72)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (31, 11, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (32, 18, 0, 6)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (32, 18, 0, 50)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (32, 185, 0, 28)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (32, 190, 0, 13)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (33, 3, 0, 69)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (33, 4, 0, 2)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (33, 18, 0, 8)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (34, 25, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (35, 2, 0, 43)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (35, 8, 0, 68)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (35, 414, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (36, 8, 0, 69)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (36, 482, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (37, 453, 0, 70)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (37, 453, 0, 82)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (37, 463, 0, 56)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (38, 4, 0, 16)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (38, 8, 0, 7)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (38, 346, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (39, 7, 0, 39)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (40, 5, 0, 35)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (40, 311, 0, 58)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (41, 47, 0, 26)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (41, 480, 0, 78)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (41, 489, 0, 76)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (41, 494, 0, 87)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (41, 503, 0, 15)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (42, 34, 0, 52)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (43, 34, 0, 15)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (43, 34, 0, 25)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (43, 40, 0, 32)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (43, 43, 0, 89)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (43, 46, 0, 49)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (43, 453, 0, 55)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (43, 455, 0, 83)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (44, 35, 0, 31)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (44, 46, 0, 74)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (44, 46, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (44, 346, 0, 40)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (44, 351, 0, 19)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (45, 34, 0, 21)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (45, 38, 0, 10)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (45, 38, 0, 80)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (45, 38, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (46, 34, 0, 60)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (47, 38, 0, 9)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (47, 41, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (47, 384, 0, 22)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (48, 38, 0, 39)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (48, 41, 0, 14)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (48, 41, 0, 85)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (48, 504, 0, 75)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (49, 41, 0, 83)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (49, 42, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (49, 46, 0, 63)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (49, 158, 0, 16)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (49, 165, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (50, 38, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (50, 46, 0, 5)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (50, 426, 0, 44)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (51, 46, 0, 83)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (51, 48, 0, 45)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (51, 190, 0, 11)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (52, 34, 0, 68)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (52, 38, 0, 53)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (52, 41, 0, 43)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (52, 46, 0, 58)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (53, 41, 0, 40)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (53, 323, 0, 68)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (53, 333, 0, 15)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (54, 35, 0, 76)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (54, 38, 0, 61)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (54, 39, 0, 63)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (54, 41, 0, 70)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (54, 48, 0, 51)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (54, 407, 0, 59)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (55, 40, 0, 44)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (55, 42, 0, 80)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (55, 481, 0, 22)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (56, 34, 0, 41)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (56, 242, 0, 83)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (56, 246, 0, 28)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (57, 454, 0, 81)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (57, 458, 0, 58)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (58, 44, 0, 81)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (58, 47, 0, 64)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (58, 355, 0, 79)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (59, 39, 0, 82)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (59, 223, 0, 45)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (60, 47, 0, 56)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (60, 47, 0, 70)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (61, 34, 0, 32)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (61, 41, 0, 63)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (61, 381, 0, 56)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (62, 38, 0, 76)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (62, 41, 0, 10)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (62, 41, 0, 34)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (63, 34, 0, 17)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (63, 38, 0, 75)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (63, 46, 0, 86)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (64, 35, 0, 24)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (64, 38, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (64, 50, 0, 38)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (64, 50, 0, 89)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (64, 438, 0, 27)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (66, 39, 0, 53)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (66, 127, 0, 4)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (66, 127, 0, 69)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (66, 138, 0, 14)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (67, 38, 0, 14)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (67, 45, 0, 41)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (67, 46, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (67, 47, 0, 43)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (68, 38, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (68, 48, 0, 12)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (69, 60, 0, 51)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (69, 65, 0, 9)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (69, 282, 0, 75)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (70, 60, 0, 44)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (70, 174, 0, 74)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (72, 66, 0, 75)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (72, 428, 0, 20)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (73, 82, 0, 18)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (73, 189, 0, 55)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (74, 66, 0, 67)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (74, 121, 0, 34)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (74, 121, 0, 57)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (75, 65, 0, 41)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (75, 65, 0, 82)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (75, 333, 0, 52)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (76, 60, 0, 57)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (76, 65, 0, 14)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (76, 66, 0, 74)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (76, 68, 0, 25)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (76, 398, 0, 44)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (76, 505, 0, 45)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (77, 60, 0, 67)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (77, 66, 0, 45)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (77, 494, 0, 16)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (78, 60, 0, 13)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (78, 61, 0, 36)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (78, 506, 0, 31)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (79, 60, 0, 60)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (79, 355, 0, 11)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (80, 60, 0, 7)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (80, 61, 0, 35)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (81, 66, 0, 56)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (81, 296, 0, 6)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (82, 60, 0, 13)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (82, 62, 0, 34)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (82, 65, 0, 2)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (82, 371, 0, 54)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (84, 61, 0, 88)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (84, 65, 0, 12)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (84, 65, 0, 20)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (84, 65, 0, 43)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (84, 66, 0, 66)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (84, 70, 0, 24)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (85, 60, 0, 6)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (85, 68, 0, 32)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (85, 73, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (86, 60, 0, 7)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (86, 73, 0, 86)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (86, 74, 1, 45)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (86, 428, 0, 32)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (87, 68, 0, 61)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (87, 190, 0, 85)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (88, 60, 0, 55)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (88, 65, 0, 72)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (88, 66, 0, 13)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (88, 66, 0, 48)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (88, 71, 0, 18)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (88, 127, 1, 65)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (88, 134, 0, 59)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (90, 398, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (92, 72, 0, 42)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (92, 453, 0, 17)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (92, 463, 0, 53)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (93, 346, 0, 7)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (93, 346, 0, 64)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (93, 348, 0, 77)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (93, 357, 0, 51)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (94, 60, 0, 24)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (95, 60, 0, 61)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (95, 73, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (95, 294, 1, 63)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (95, 297, 0, 12)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (95, 305, 0, 6)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (96, 60, 0, 46)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (96, 73, 0, 75)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (96, 372, 0, 82)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (97, 102, 0, 2)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (97, 104, 0, 49)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (97, 189, 0, 40)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (98, 121, 0, 62)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (98, 127, 0, 11)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (98, 131, 0, 88)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (99, 99, 0, 76)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (100, 99, 0, 61)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (101, 97, 0, 56)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (101, 97, 0, 71)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (103, 95, 0, 68)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (103, 99, 0, 24)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (103, 346, 0, 61)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (103, 352, 0, 40)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (103, 353, 0, 18)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (104, 95, 0, 69)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (104, 99, 0, 58)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (104, 103, 0, 27)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (104, 112, 0, 79)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (105, 99, 0, 1)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (105, 106, 0, 33)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (105, 293, 0, 81)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (105, 294, 0, 67)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (105, 296, 0, 45)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (106, 99, 0, 74)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (107, 95, 0, 81)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (107, 104, 0, 14)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (107, 104, 0, 57)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (107, 371, 0, 59)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (108, 104, 0, 57)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (108, 112, 0, 66)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (108, 268, 0, 5)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (108, 268, 0, 31)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (108, 271, 0, 63)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (109, 95, 0, 45)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (109, 99, 1, 28)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (109, 112, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (109, 161, 0, 61)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (110, 104, 0, 44)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (110, 112, 0, 81)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (110, 443, 0, 31)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (112, 95, 0, 26)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (112, 95, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (112, 122, 0, 16)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (112, 134, 0, 51)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (112, 134, 0, 55)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (112, 134, 0, 74)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (113, 112, 0, 10)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (113, 112, 0, 87)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (113, 330, 0, 54)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (113, 334, 0, 52)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (114, 102, 0, 49)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (114, 115, 0, 58)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (114, 400, 0, 38)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (116, 95, 0, 18)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (116, 97, 0, 2)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (116, 99, 0, 31)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (116, 109, 0, 56)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (119, 99, 0, 75)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (119, 102, 0, 25)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (119, 103, 0, 85)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (120, 99, 0, 50)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (120, 109, 0, 40)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (120, 242, 0, 68)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (120, 242, 0, 72)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (121, 95, 0, 62)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (121, 99, 0, 5)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (121, 103, 0, 28)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (121, 103, 0, 39)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (121, 114, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (122, 99, 0, 7)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (122, 99, 0, 43)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (122, 268, 0, 64)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (123, 99, 0, 29)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (123, 105, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (123, 154, 0, 60)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (123, 166, 0, 10)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (124, 95, 0, 51)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (124, 107, 0, 13)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (125, 121, 0, 53)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (125, 122, 0, 89)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (125, 127, 0, 45)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (125, 214, 0, 44)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (126, 293, 0, 17)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (126, 296, 0, 88)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (126, 297, 0, 33)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (127, 392, 0, 57)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (128, 121, 0, 33)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (128, 131, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (130, 427, 0, 23)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (132, 245, 0, 55)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (132, 252, 0, 64)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (133, 333, 0, 74)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (135, 121, 0, 80)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (135, 127, 0, 62)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (135, 489, 0, 20)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (136, 134, 0, 39)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (136, 138, 0, 89)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (136, 454, 0, 30)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (137, 121, 0, 64)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (137, 121, 0, 75)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (137, 127, 0, 14)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (137, 131, 0, 65)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (137, 352, 0, 26)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (137, 352, 0, 73)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (138, 124, 1, 25)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (138, 129, 0, 76)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (138, 212, 0, 53)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (139, 121, 0, 52)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (139, 121, 0, 83)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (139, 125, 0, 29)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (139, 296, 0, 64)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (140, 381, 0, 7)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (140, 381, 0, 53)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (141, 122, 0, 59)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (141, 268, 0, 77)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (142, 134, 0, 14)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (142, 134, 0, 36)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (142, 162, 0, 9)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (144, 127, 0, 8)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (144, 134, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (144, 189, 0, 71)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (144, 190, 0, 48)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (144, 201, 0, 51)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (146, 121, 0, 54)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (146, 127, 0, 71)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (147, 121, 0, 8)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (147, 127, 0, 35)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (147, 398, 0, 76)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (147, 410, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (148, 481, 0, 67)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (148, 482, 0, 45)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (148, 482, 0, 60)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (148, 482, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (149, 138, 0, 59)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (149, 453, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (149, 463, 0, 64)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (149, 463, 0, 80)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (150, 142, 0, 43)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (150, 346, 0, 56)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (150, 352, 0, 4)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (150, 360, 0, 49)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (151, 152, 1, 75)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (151, 246, 0, 79)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (152, 170, 0, 36)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (152, 382, 0, 58)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (152, 507, 0, 4)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (153, 165, 0, 44)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (153, 194, 0, 17)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (153, 508, 0, 10)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (154, 382, 0, 31)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (155, 165, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (155, 174, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (156, 158, 0, 66)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (157, 155, 0, 77)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (157, 453, 0, 80)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (157, 454, 0, 59)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (158, 170, 0, 30)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (158, 346, 0, 45)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (159, 155, 0, 16)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (159, 162, 0, 70)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (159, 212, 0, 60)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (161, 158, 0, 3)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (161, 160, 0, 20)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (161, 161, 0, 53)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (161, 383, 0, 28)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (163, 161, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (163, 162, 0, 22)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (163, 162, 0, 47)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (163, 249, 0, 62)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (164, 152, 0, 13)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (164, 446, 0, 84)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (165, 154, 0, 23)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (165, 191, 1, 67)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (166, 162, 0, 83)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (167, 407, 0, 5)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (167, 407, 0, 71)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (168, 174, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (168, 482, 0, 66)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (168, 482, 0, 72)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (169, 161, 0, 11)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (169, 162, 0, 8)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (169, 162, 0, 39)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (169, 162, 0, 68)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (169, 454, 0, 34)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (169, 454, 0, 36)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (169, 463, 0, 3)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (170, 162, 0, 1)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (170, 351, 0, 66)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (171, 162, 0, 3)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (172, 297, 0, 65)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (173, 176, 0, 89)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (173, 381, 0, 45)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (174, 162, 0, 42)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (174, 166, 0, 80)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (174, 173, 0, 88)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (174, 283, 0, 40)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (175, 508, 0, 31)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (176, 185, 0, 7)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (176, 198, 0, 66)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (176, 377, 0, 76)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (177, 185, 0, 12)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (177, 268, 0, 61)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (177, 274, 1, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (177, 277, 0, 24)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (177, 508, 0, 19)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (177, 508, 0, 80)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (177, 509, 0, 81)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (178, 188, 0, 59)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (178, 426, 0, 45)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (178, 507, 0, 88)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (179, 190, 0, 69)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (179, 242, 0, 75)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (179, 247, 0, 52)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (179, 248, 0, 71)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (179, 510, 0, 79)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (180, 189, 0, 69)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (180, 321, 0, 64)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (180, 323, 0, 40)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (181, 90, 0, 28)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (181, 410, 0, 68)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (182, 191, 0, 72)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (182, 191, 1, 80)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (182, 495, 0, 49)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (183, 194, 0, 52)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (183, 453, 0, 76)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (183, 454, 0, 68)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (183, 454, 0, 89)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (185, 217, 0, 48)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (186, 82, 0, 72)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (186, 293, 0, 63)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (186, 298, 0, 69)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (186, 305, 0, 48)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (187, 82, 0, 24)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (187, 381, 0, 20)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (188, 190, 0, 6)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (188, 195, 0, 83)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (188, 195, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (188, 196, 0, 11)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (188, 200, 0, 20)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (188, 270, 0, 37)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (189, 190, 0, 62)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (189, 190, 0, 66)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (189, 426, 0, 7)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (191, 196, 0, 66)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (191, 201, 0, 87)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (192, 191, 0, 35)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (192, 196, 0, 65)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (192, 201, 0, 52)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (192, 498, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (193, 191, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (193, 465, 0, 89)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (194, 190, 0, 59)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (194, 360, 0, 61)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (195, 190, 0, 65)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (195, 190, 0, 78)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (195, 196, 0, 84)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (195, 227, 0, 37)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (196, 214, 0, 82)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (196, 217, 0, 38)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (196, 328, 0, 64)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (196, 511, 0, 12)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (197, 199, 0, 25)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (197, 212, 0, 16)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (197, 222, 0, 34)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (197, 505, 0, 66)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (198, 199, 0, 10)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (198, 212, 0, 35)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (199, 199, 0, 50)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (199, 214, 0, 60)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (199, 453, 0, 76)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (199, 453, 0, 89)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (199, 461, 0, 4)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (199, 463, 0, 17)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (200, 346, 0, 45)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (200, 351, 0, 14)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (200, 351, 0, 32)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (200, 358, 0, 45)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (201, 247, 0, 48)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (201, 510, 0, 45)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (202, 223, 0, 42)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (202, 296, 0, 85)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (202, 312, 0, 45)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (203, 377, 0, 60)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (204, 268, 0, 1)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (204, 269, 1, 31)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (204, 277, 0, 64)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (204, 282, 0, 70)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (205, 211, 0, 79)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (205, 212, 0, 71)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (205, 217, 0, 61)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (205, 430, 0, 78)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (205, 445, 0, 75)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (206, 25, 0, 66)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (206, 215, 1, 74)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (206, 223, 0, 52)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (206, 339, 0, 80)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (207, 212, 0, 73)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (207, 217, 0, 61)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (207, 405, 1, 49)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (208, 212, 0, 9)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (208, 212, 0, 44)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (208, 227, 0, 89)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (208, 485, 0, 73)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (208, 495, 0, 67)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (209, 212, 0, 8)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (209, 212, 0, 67)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (209, 217, 0, 71)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (209, 454, 0, 32)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (211, 246, 0, 17)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (212, 213, 1, 67)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (212, 217, 0, 58)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (212, 293, 0, 16)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (212, 296, 0, 29)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (213, 371, 0, 45)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (213, 381, 0, 4)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (213, 383, 0, 17)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (214, 212, 0, 83)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (214, 229, 0, 34)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (214, 268, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (215, 229, 0, 54)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (215, 229, 0, 59)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (215, 426, 0, 30)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (216, 76, 0, 58)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (216, 243, 0, 8)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (216, 453, 0, 72)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (216, 461, 0, 48)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (216, 463, 0, 10)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (217, 247, 0, 1)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (217, 249, 0, 86)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (217, 426, 0, 59)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (218, 243, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (218, 250, 0, 63)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (219, 296, 0, 7)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (219, 296, 0, 53)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (221, 250, 0, 70)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (221, 251, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (222, 252, 0, 68)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (222, 404, 0, 79)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (223, 242, 0, 82)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (223, 510, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (224, 246, 0, 70)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (224, 489, 0, 30)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (224, 492, 0, 73)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (224, 492, 0, 80)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (224, 494, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (225, 246, 0, 18)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (225, 249, 0, 85)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (225, 453, 0, 51)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (225, 454, 0, 69)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (228, 297, 0, 62)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (230, 381, 0, 32)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (231, 252, 0, 14)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (231, 398, 0, 29)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (231, 402, 0, 88)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (231, 403, 0, 34)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (231, 404, 0, 11)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (232, 252, 0, 89)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (232, 268, 0, 52)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (233, 247, 0, 52)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (233, 494, 0, 41)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (235, 268, 0, 54)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (235, 278, 0, 79)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (235, 512, 0, 89)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (236, 278, 0, 54)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (237, 268, 0, 38)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (237, 271, 0, 53)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (237, 271, 0, 59)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (237, 482, 0, 36)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (237, 483, 0, 69)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (237, 494, 0, 66)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (238, 453, 0, 34)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (238, 453, 0, 78)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (238, 465, 0, 54)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (238, 465, 0, 65)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (239, 346, 0, 13)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (239, 349, 0, 15)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (239, 359, 0, 22)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (240, 271, 0, 35)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (240, 271, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (240, 273, 0, 27)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (240, 296, 0, 16)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (241, 268, 0, 19)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (241, 277, 0, 10)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (241, 392, 0, 87)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (242, 271, 0, 57)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (243, 271, 0, 11)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (244, 268, 0, 72)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (244, 271, 0, 77)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (244, 402, 0, 23)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (245, 268, 0, 21)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (246, 267, 0, 34)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (246, 284, 0, 86)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (246, 454, 0, 70)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (246, 463, 0, 15)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (246, 463, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (247, 270, 0, 45)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (247, 275, 0, 30)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (247, 346, 0, 37)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (247, 351, 0, 33)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (248, 297, 0, 52)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (249, 373, 0, 86)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (250, 323, 0, 89)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (251, 309, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (251, 403, 0, 48)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (252, 492, 0, 45)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (253, 458, 0, 32)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (253, 506, 0, 88)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (254, 294, 0, 7)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (254, 346, 0, 28)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (254, 350, 0, 39)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (254, 357, 0, 15)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (255, 374, 0, 45)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (256, 298, 0, 67)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (256, 301, 0, 24)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (256, 301, 0, 26)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (256, 432, 0, 50)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (256, 438, 0, 83)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (257, 296, 0, 75)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (257, 323, 0, 72)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (257, 330, 0, 61)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (258, 398, 0, 77)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (259, 296, 0, 46)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (259, 296, 0, 67)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (259, 490, 0, 41)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (259, 497, 0, 45)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (260, 293, 0, 82)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (260, 296, 0, 59)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (260, 314, 1, 19)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (261, 293, 0, 32)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (261, 311, 0, 84)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (261, 357, 0, 41)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (263, 305, 0, 64)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (263, 426, 0, 56)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (263, 432, 0, 53)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (264, 196, 0, 55)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (264, 511, 0, 42)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (266, 196, 0, 58)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (266, 326, 1, 76)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (267, 333, 0, 45)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (268, 323, 0, 4)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (268, 323, 0, 32)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (268, 325, 0, 64)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (268, 480, 0, 24)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (268, 483, 0, 58)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (269, 323, 0, 44)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (269, 454, 0, 85)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (269, 461, 0, 9)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (269, 461, 0, 23)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (271, 334, 0, 76)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (271, 371, 0, 71)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (271, 382, 0, 67)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (273, 323, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (273, 324, 0, 8)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (273, 335, 0, 21)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (273, 402, 0, 42)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (274, 322, 0, 45)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (274, 327, 0, 66)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (274, 481, 0, 79)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (274, 482, 0, 86)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (275, 323, 0, 50)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (276, 346, 0, 23)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (276, 349, 0, 9)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (276, 350, 0, 68)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (276, 505, 0, 86)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (277, 350, 0, 89)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (277, 355, 0, 77)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (277, 480, 0, 3)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (278, 346, 0, 19)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (278, 357, 0, 43)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (278, 461, 0, 45)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (279, 352, 0, 6)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (279, 352, 0, 29)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (279, 355, 0, 74)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (280, 355, 0, 54)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (280, 427, 0, 63)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (282, 352, 0, 35)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (282, 482, 0, 51)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (282, 482, 0, 79)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (282, 483, 0, 1)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (283, 346, 0, 6)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (283, 347, 1, 69)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (283, 349, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (283, 350, 0, 36)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (283, 355, 0, 27)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (283, 357, 0, 47)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (283, 360, 0, 66)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (283, 465, 0, 51)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (284, 346, 0, 30)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (284, 352, 0, 48)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (284, 359, 0, 40)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (285, 346, 0, 74)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (285, 351, 0, 56)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (287, 398, 0, 66)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (287, 513, 0, 80)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (288, 482, 0, 56)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (289, 453, 0, 20)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (289, 453, 0, 75)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (290, 371, 0, 78)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (290, 427, 0, 57)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (290, 428, 0, 27)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (290, 446, 0, 90)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (291, 381, 0, 44)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (291, 381, 0, 55)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (291, 383, 0, 81)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (291, 383, 0, 86)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (292, 381, 0, 55)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (293, 381, 0, 57)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (293, 458, 0, 76)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (294, 404, 0, 53)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (295, 402, 0, 5)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (295, 404, 0, 72)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (295, 426, 0, 89)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (295, 432, 0, 48)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (297, 453, 0, 52)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (297, 453, 0, 61)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (297, 456, 0, 82)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (298, 403, 0, 51)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (298, 410, 0, 59)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (298, 410, 0, 60)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (298, 429, 0, 36)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (299, 482, 0, 75)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (299, 483, 0, 4)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (299, 490, 0, 72)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (300, 482, 0, 46)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (300, 483, 0, 20)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (301, 426, 0, 57)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (301, 432, 0, 61)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (301, 438, 0, 88)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (302, 435, 0, 40)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (302, 481, 0, 15)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (303, 446, 0, 67)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (303, 453, 0, 84)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (303, 458, 0, 53)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (304, 454, 0, 55)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (304, 457, 0, 66)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (305, 481, 0, 6)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (305, 482, 0, 62)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (305, 483, 0, 25)
GO
INSERT [dbo].[goals] ([matchID], [playerID], [isOwnGoal], [minute]) VALUES (306, 324, 0, 58)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (1, 1, 4, CAST(N'2013-08-18 00:00:00' AS SmallDateTime), 1)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (2, 1, 3, CAST(N'2013-09-22 00:00:00' AS SmallDateTime), 5)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (3, 2, 1, CAST(N'2013-11-30 00:00:00' AS SmallDateTime), 13)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (4, 4, 1, CAST(N'2014-01-25 00:00:00' AS SmallDateTime), 18)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (5, 3, 1, CAST(N'2014-02-22 00:00:00' AS SmallDateTime), 22)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (6, 1, 2, CAST(N'2014-04-20 00:00:00' AS SmallDateTime), 30)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (7, 2, 4, CAST(N'2013-10-06 00:00:00' AS SmallDateTime), 7)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (8, 2, 3, CAST(N'2013-11-10 00:00:00' AS SmallDateTime), 11)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (9, 4, 2, CAST(N'2014-03-10 00:00:00' AS SmallDateTime), 24)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (10, 3, 2, CAST(N'2014-04-06 00:00:00' AS SmallDateTime), 28)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (11, 3, 4, CAST(N'2013-12-22 00:00:00' AS SmallDateTime), 16)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (12, 4, 3, CAST(N'2014-05-11 00:00:00' AS SmallDateTime), 33)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (13, 14, 1, CAST(N'2013-08-26 00:00:00' AS SmallDateTime), 2)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (14, 1, 10, CAST(N'2013-09-01 00:00:00' AS SmallDateTime), 3)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (15, 6, 1, CAST(N'2013-09-15 00:00:00' AS SmallDateTime), 4)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (16, 16, 1, CAST(N'2013-09-30 00:00:00' AS SmallDateTime), 6)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (17, 9, 1, CAST(N'2013-10-05 00:00:00' AS SmallDateTime), 7)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (18, 1, 7, CAST(N'2013-10-21 00:00:00' AS SmallDateTime), 8)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (19, 5, 1, CAST(N'2013-10-26 00:00:00' AS SmallDateTime), 9)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (20, 1, 12, CAST(N'2013-11-03 00:00:00' AS SmallDateTime), 10)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (21, 15, 1, CAST(N'2013-11-09 00:00:00' AS SmallDateTime), 11)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (22, 1, 18, CAST(N'2013-11-25 00:00:00' AS SmallDateTime), 12)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (23, 1, 17, CAST(N'2013-12-09 00:00:00' AS SmallDateTime), 14)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (24, 13, 1, CAST(N'2014-02-11 00:00:00' AS SmallDateTime), 15)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (25, 1, 8, CAST(N'2013-12-21 00:00:00' AS SmallDateTime), 16)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (26, 11, 1, CAST(N'2013-12-27 00:00:00' AS SmallDateTime), 17)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (27, 1, 14, CAST(N'2014-01-31 00:00:00' AS SmallDateTime), 19)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (28, 10, 1, CAST(N'2014-02-07 00:00:00' AS SmallDateTime), 20)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (29, 1, 6, CAST(N'2014-02-16 00:00:00' AS SmallDateTime), 21)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (30, 1, 16, CAST(N'2014-02-28 00:00:00' AS SmallDateTime), 23)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (31, 1, 9, CAST(N'2014-03-09 00:00:00' AS SmallDateTime), 24)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (32, 7, 1, CAST(N'2014-03-15 00:00:00' AS SmallDateTime), 25)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (33, 1, 5, CAST(N'2014-03-23 00:00:00' AS SmallDateTime), 26)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (34, 12, 1, CAST(N'2014-03-28 00:00:00' AS SmallDateTime), 27)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (35, 1, 15, CAST(N'2014-04-05 00:00:00' AS SmallDateTime), 28)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (36, 18, 1, CAST(N'2014-04-11 00:00:00' AS SmallDateTime), 29)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (37, 17, 1, CAST(N'2014-04-27 00:00:00' AS SmallDateTime), 31)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (38, 1, 13, CAST(N'2014-05-03 00:00:00' AS SmallDateTime), 32)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (39, 8, 1, CAST(N'2014-05-11 00:00:00' AS SmallDateTime), 33)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (40, 1, 11, CAST(N'2014-05-17 00:00:00' AS SmallDateTime), 34)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (41, 18, 2, CAST(N'2013-08-17 00:00:00' AS SmallDateTime), 1)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (42, 2, 9, CAST(N'2013-08-24 00:00:00' AS SmallDateTime), 2)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (43, 2, 17, CAST(N'2013-08-31 00:00:00' AS SmallDateTime), 3)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (44, 13, 2, CAST(N'2013-09-16 00:00:00' AS SmallDateTime), 4)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (45, 2, 8, CAST(N'2013-09-21 00:00:00' AS SmallDateTime), 5)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (46, 11, 2, CAST(N'2013-09-29 00:00:00' AS SmallDateTime), 6)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (47, 14, 2, CAST(N'2013-10-20 00:00:00' AS SmallDateTime), 8)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (48, 2, 10, CAST(N'2013-10-25 00:00:00' AS SmallDateTime), 9)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (49, 6, 2, CAST(N'2013-11-02 00:00:00' AS SmallDateTime), 10)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (50, 16, 2, CAST(N'2013-11-24 00:00:00' AS SmallDateTime), 12)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (51, 7, 2, CAST(N'2013-12-07 00:00:00' AS SmallDateTime), 14)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (52, 2, 5, CAST(N'2013-12-13 00:00:00' AS SmallDateTime), 15)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (53, 12, 2, CAST(N'2013-12-22 00:00:00' AS SmallDateTime), 16)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (54, 2, 15, CAST(N'2013-12-29 00:00:00' AS SmallDateTime), 17)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (55, 2, 18, CAST(N'2014-01-27 00:00:00' AS SmallDateTime), 18)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (56, 9, 2, CAST(N'2014-02-01 00:00:00' AS SmallDateTime), 19)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (57, 17, 2, CAST(N'2014-02-09 00:00:00' AS SmallDateTime), 20)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (58, 2, 13, CAST(N'2014-02-16 00:00:00' AS SmallDateTime), 21)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (59, 8, 2, CAST(N'2014-02-24 00:00:00' AS SmallDateTime), 22)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (60, 2, 11, CAST(N'2014-03-01 00:00:00' AS SmallDateTime), 23)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (61, 2, 14, CAST(N'2014-03-16 00:00:00' AS SmallDateTime), 25)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (62, 10, 2, CAST(N'2014-03-24 00:00:00' AS SmallDateTime), 26)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (63, 2, 6, CAST(N'2014-03-31 00:00:00' AS SmallDateTime), 27)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (64, 2, 16, CAST(N'2014-04-13 00:00:00' AS SmallDateTime), 29)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (65, 2, 7, CAST(N'2014-04-27 00:00:00' AS SmallDateTime), 31)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (66, 5, 2, CAST(N'2014-05-04 00:00:00' AS SmallDateTime), 32)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (67, 2, 12, CAST(N'2014-05-09 00:00:00' AS SmallDateTime), 33)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (68, 15, 2, CAST(N'2014-05-16 00:00:00' AS SmallDateTime), 34)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (69, 3, 10, CAST(N'2013-08-19 00:00:00' AS SmallDateTime), 1)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (70, 6, 3, CAST(N'2013-08-25 00:00:00' AS SmallDateTime), 2)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (71, 9, 3, CAST(N'2013-08-30 00:00:00' AS SmallDateTime), 3)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (72, 3, 16, CAST(N'2013-09-13 00:00:00' AS SmallDateTime), 4)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (73, 3, 7, CAST(N'2013-09-28 00:00:00' AS SmallDateTime), 6)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (74, 5, 3, CAST(N'2013-10-06 00:00:00' AS SmallDateTime), 7)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (75, 3, 12, CAST(N'2013-10-19 00:00:00' AS SmallDateTime), 8)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (76, 15, 3, CAST(N'2013-10-27 00:00:00' AS SmallDateTime), 9)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (77, 3, 18, CAST(N'2013-11-01 00:00:00' AS SmallDateTime), 10)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (78, 3, 17, CAST(N'2013-11-23 00:00:00' AS SmallDateTime), 12)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (79, 13, 3, CAST(N'2013-12-01 00:00:00' AS SmallDateTime), 13)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (80, 3, 8, CAST(N'2013-12-06 00:00:00' AS SmallDateTime), 14)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (81, 11, 3, CAST(N'2013-12-15 00:00:00' AS SmallDateTime), 15)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (82, 14, 3, CAST(N'2013-12-28 00:00:00' AS SmallDateTime), 17)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (83, 10, 3, CAST(N'2014-01-26 00:00:00' AS SmallDateTime), 18)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (84, 3, 6, CAST(N'2014-02-02 00:00:00' AS SmallDateTime), 19)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (85, 3, 9, CAST(N'2014-02-08 00:00:00' AS SmallDateTime), 20)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (86, 16, 3, CAST(N'2014-02-17 00:00:00' AS SmallDateTime), 21)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (87, 7, 3, CAST(N'2014-03-02 00:00:00' AS SmallDateTime), 23)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (88, 3, 5, CAST(N'2014-03-08 00:00:00' AS SmallDateTime), 24)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (89, 12, 3, CAST(N'2014-03-14 00:00:00' AS SmallDateTime), 25)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (90, 3, 15, CAST(N'2014-03-22 00:00:00' AS SmallDateTime), 26)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (91, 18, 3, CAST(N'2014-03-29 00:00:00' AS SmallDateTime), 27)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (92, 17, 3, CAST(N'2014-04-12 00:00:00' AS SmallDateTime), 29)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (93, 3, 13, CAST(N'2014-04-19 00:00:00' AS SmallDateTime), 30)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (94, 8, 3, CAST(N'2014-04-27 00:00:00' AS SmallDateTime), 31)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (95, 3, 11, CAST(N'2014-05-03 00:00:00' AS SmallDateTime), 32)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (96, 3, 14, CAST(N'2014-05-17 00:00:00' AS SmallDateTime), 34)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (97, 4, 7, CAST(N'2013-08-26 00:00:00' AS SmallDateTime), 2)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (98, 5, 4, CAST(N'2013-09-01 00:00:00' AS SmallDateTime), 3)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (99, 4, 12, CAST(N'2013-09-14 00:00:00' AS SmallDateTime), 4)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (100, 15, 4, CAST(N'2013-09-23 00:00:00' AS SmallDateTime), 5)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (101, 4, 18, CAST(N'2013-09-29 00:00:00' AS SmallDateTime), 6)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (102, 4, 17, CAST(N'2013-10-20 00:00:00' AS SmallDateTime), 8)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (103, 13, 4, CAST(N'2013-10-28 00:00:00' AS SmallDateTime), 9)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (104, 4, 8, CAST(N'2013-11-03 00:00:00' AS SmallDateTime), 10)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (105, 11, 4, CAST(N'2013-11-10 00:00:00' AS SmallDateTime), 11)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (106, 4, 9, CAST(N'2013-11-24 00:00:00' AS SmallDateTime), 12)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (107, 4, 14, CAST(N'2013-12-01 00:00:00' AS SmallDateTime), 13)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (108, 10, 4, CAST(N'2013-12-08 00:00:00' AS SmallDateTime), 14)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (109, 4, 6, CAST(N'2013-12-16 00:00:00' AS SmallDateTime), 15)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (110, 4, 16, CAST(N'2013-12-29 00:00:00' AS SmallDateTime), 17)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (111, 7, 4, CAST(N'2014-02-03 00:00:00' AS SmallDateTime), 19)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (112, 4, 5, CAST(N'2014-02-09 00:00:00' AS SmallDateTime), 20)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (113, 12, 4, CAST(N'2014-02-15 00:00:00' AS SmallDateTime), 21)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (114, 4, 15, CAST(N'2014-02-23 00:00:00' AS SmallDateTime), 22)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (115, 18, 4, CAST(N'2014-03-02 00:00:00' AS SmallDateTime), 23)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (116, 17, 4, CAST(N'2014-03-16 00:00:00' AS SmallDateTime), 25)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (117, 4, 13, CAST(N'2014-03-21 00:00:00' AS SmallDateTime), 26)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (118, 8, 4, CAST(N'2014-03-29 00:00:00' AS SmallDateTime), 27)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (119, 4, 11, CAST(N'2014-04-07 00:00:00' AS SmallDateTime), 28)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (120, 9, 4, CAST(N'2014-04-13 00:00:00' AS SmallDateTime), 29)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (121, 14, 4, CAST(N'2014-04-18 00:00:00' AS SmallDateTime), 30)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (122, 4, 10, CAST(N'2014-04-26 00:00:00' AS SmallDateTime), 31)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (123, 6, 4, CAST(N'2014-05-04 00:00:00' AS SmallDateTime), 32)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (124, 16, 4, CAST(N'2014-05-18 00:00:00' AS SmallDateTime), 34)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (125, 5, 8, CAST(N'2013-08-18 00:00:00' AS SmallDateTime), 1)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (126, 11, 5, CAST(N'2013-08-23 00:00:00' AS SmallDateTime), 2)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (127, 14, 5, CAST(N'2013-09-14 00:00:00' AS SmallDateTime), 4)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (128, 5, 10, CAST(N'2013-09-20 00:00:00' AS SmallDateTime), 5)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (129, 6, 5, CAST(N'2013-09-27 00:00:00' AS SmallDateTime), 6)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (130, 16, 5, CAST(N'2013-10-20 00:00:00' AS SmallDateTime), 8)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (131, 7, 5, CAST(N'2013-11-03 00:00:00' AS SmallDateTime), 10)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (132, 9, 5, CAST(N'2013-11-08 00:00:00' AS SmallDateTime), 11)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (133, 5, 12, CAST(N'2013-11-25 00:00:00' AS SmallDateTime), 12)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (134, 15, 5, CAST(N'2013-11-30 00:00:00' AS SmallDateTime), 13)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (135, 5, 18, CAST(N'2013-12-08 00:00:00' AS SmallDateTime), 14)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (136, 5, 17, CAST(N'2013-12-23 00:00:00' AS SmallDateTime), 16)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (137, 13, 5, CAST(N'2013-12-27 00:00:00' AS SmallDateTime), 17)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (138, 8, 5, CAST(N'2014-01-26 00:00:00' AS SmallDateTime), 18)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (139, 5, 11, CAST(N'2014-02-02 00:00:00' AS SmallDateTime), 19)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (140, 5, 14, CAST(N'2014-02-16 00:00:00' AS SmallDateTime), 21)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (141, 10, 5, CAST(N'2014-02-22 00:00:00' AS SmallDateTime), 22)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (142, 5, 6, CAST(N'2014-02-28 00:00:00' AS SmallDateTime), 23)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (143, 5, 16, CAST(N'2014-03-15 00:00:00' AS SmallDateTime), 25)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (144, 5, 7, CAST(N'2014-03-29 00:00:00' AS SmallDateTime), 27)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (145, 5, 9, CAST(N'2014-04-05 00:00:00' AS SmallDateTime), 28)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (146, 12, 5, CAST(N'2014-04-12 00:00:00' AS SmallDateTime), 29)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (147, 5, 15, CAST(N'2014-04-19 00:00:00' AS SmallDateTime), 30)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (148, 18, 5, CAST(N'2014-04-27 00:00:00' AS SmallDateTime), 31)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (149, 17, 5, CAST(N'2014-05-11 00:00:00' AS SmallDateTime), 33)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (150, 5, 13, CAST(N'2014-05-18 00:00:00' AS SmallDateTime), 34)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (151, 9, 6, CAST(N'2013-08-18 00:00:00' AS SmallDateTime), 1)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (152, 16, 6, CAST(N'2013-08-31 00:00:00' AS SmallDateTime), 3)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (153, 7, 6, CAST(N'2013-09-22 00:00:00' AS SmallDateTime), 5)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (154, 12, 6, CAST(N'2013-10-04 00:00:00' AS SmallDateTime), 7)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (155, 6, 15, CAST(N'2013-10-21 00:00:00' AS SmallDateTime), 8)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (156, 18, 6, CAST(N'2013-10-27 00:00:00' AS SmallDateTime), 9)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (157, 17, 6, CAST(N'2013-11-09 00:00:00' AS SmallDateTime), 11)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (158, 6, 13, CAST(N'2013-11-23 00:00:00' AS SmallDateTime), 12)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (159, 8, 6, CAST(N'2013-11-29 00:00:00' AS SmallDateTime), 13)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (160, 6, 11, CAST(N'2013-12-08 00:00:00' AS SmallDateTime), 14)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (161, 6, 14, CAST(N'2013-12-23 00:00:00' AS SmallDateTime), 16)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (162, 10, 6, CAST(N'2013-12-28 00:00:00' AS SmallDateTime), 17)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (163, 6, 9, CAST(N'2014-01-25 00:00:00' AS SmallDateTime), 18)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (164, 6, 16, CAST(N'2014-02-09 00:00:00' AS SmallDateTime), 20)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (165, 6, 7, CAST(N'2014-02-21 00:00:00' AS SmallDateTime), 22)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (166, 6, 12, CAST(N'2014-03-08 00:00:00' AS SmallDateTime), 24)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (167, 15, 6, CAST(N'2014-03-17 00:00:00' AS SmallDateTime), 25)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (168, 6, 18, CAST(N'2014-03-22 00:00:00' AS SmallDateTime), 26)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (169, 6, 17, CAST(N'2014-04-06 00:00:00' AS SmallDateTime), 28)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (170, 13, 6, CAST(N'2014-04-12 00:00:00' AS SmallDateTime), 29)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (171, 6, 8, CAST(N'2014-04-19 00:00:00' AS SmallDateTime), 30)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (172, 11, 6, CAST(N'2014-04-25 00:00:00' AS SmallDateTime), 31)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (173, 14, 6, CAST(N'2014-05-11 00:00:00' AS SmallDateTime), 33)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (174, 6, 10, CAST(N'2014-05-17 00:00:00' AS SmallDateTime), 34)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (175, 7, 11, CAST(N'2013-08-17 00:00:00' AS SmallDateTime), 1)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (176, 7, 14, CAST(N'2013-09-01 00:00:00' AS SmallDateTime), 3)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (177, 10, 7, CAST(N'2013-09-14 00:00:00' AS SmallDateTime), 4)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (178, 7, 16, CAST(N'2013-10-06 00:00:00' AS SmallDateTime), 7)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (179, 9, 7, CAST(N'2013-10-27 00:00:00' AS SmallDateTime), 9)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (180, 12, 7, CAST(N'2013-11-09 00:00:00' AS SmallDateTime), 11)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (181, 7, 15, CAST(N'2013-11-23 00:00:00' AS SmallDateTime), 12)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (182, 18, 7, CAST(N'2013-12-02 00:00:00' AS SmallDateTime), 13)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (183, 17, 7, CAST(N'2013-12-14 00:00:00' AS SmallDateTime), 15)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (184, 7, 13, CAST(N'2013-12-20 00:00:00' AS SmallDateTime), 16)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (185, 8, 7, CAST(N'2013-12-28 00:00:00' AS SmallDateTime), 17)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (186, 11, 7, CAST(N'2014-01-25 00:00:00' AS SmallDateTime), 18)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (187, 14, 7, CAST(N'2014-02-08 00:00:00' AS SmallDateTime), 20)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (188, 7, 10, CAST(N'2014-02-14 00:00:00' AS SmallDateTime), 21)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (189, 16, 7, CAST(N'2014-03-09 00:00:00' AS SmallDateTime), 24)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (190, 7, 9, CAST(N'2014-03-22 00:00:00' AS SmallDateTime), 26)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (191, 15, 7, CAST(N'2014-04-12 00:00:00' AS SmallDateTime), 29)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (192, 7, 18, CAST(N'2014-04-20 00:00:00' AS SmallDateTime), 30)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (193, 7, 17, CAST(N'2014-05-04 00:00:00' AS SmallDateTime), 32)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (194, 13, 7, CAST(N'2014-05-11 00:00:00' AS SmallDateTime), 33)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (195, 7, 8, CAST(N'2014-05-17 00:00:00' AS SmallDateTime), 34)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (196, 8, 12, CAST(N'2013-08-25 00:00:00' AS SmallDateTime), 2)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (197, 15, 8, CAST(N'2013-08-31 00:00:00' AS SmallDateTime), 3)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (198, 8, 18, CAST(N'2013-09-15 00:00:00' AS SmallDateTime), 4)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (199, 8, 17, CAST(N'2013-09-29 00:00:00' AS SmallDateTime), 6)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (200, 13, 8, CAST(N'2013-10-06 00:00:00' AS SmallDateTime), 7)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (201, 8, 9, CAST(N'2013-10-19 00:00:00' AS SmallDateTime), 8)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (202, 8, 11, CAST(N'2013-10-26 00:00:00' AS SmallDateTime), 9)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (203, 8, 14, CAST(N'2013-11-08 00:00:00' AS SmallDateTime), 11)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (204, 10, 8, CAST(N'2013-11-24 00:00:00' AS SmallDateTime), 12)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (205, 8, 16, CAST(N'2013-12-14 00:00:00' AS SmallDateTime), 15)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (206, 12, 8, CAST(N'2014-02-02 00:00:00' AS SmallDateTime), 19)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (207, 8, 15, CAST(N'2014-02-09 00:00:00' AS SmallDateTime), 20)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (208, 18, 8, CAST(N'2014-02-17 00:00:00' AS SmallDateTime), 21)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (209, 17, 8, CAST(N'2014-03-02 00:00:00' AS SmallDateTime), 23)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (210, 8, 13, CAST(N'2014-03-08 00:00:00' AS SmallDateTime), 24)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (211, 9, 8, CAST(N'2014-03-16 00:00:00' AS SmallDateTime), 25)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (212, 11, 8, CAST(N'2014-03-23 00:00:00' AS SmallDateTime), 26)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (213, 14, 8, CAST(N'2014-04-06 00:00:00' AS SmallDateTime), 28)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (214, 8, 10, CAST(N'2014-04-14 00:00:00' AS SmallDateTime), 29)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (215, 16, 8, CAST(N'2014-05-03 00:00:00' AS SmallDateTime), 32)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (216, 17, 9, CAST(N'2013-09-15 00:00:00' AS SmallDateTime), 4)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (217, 9, 16, CAST(N'2013-09-21 00:00:00' AS SmallDateTime), 5)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (218, 13, 9, CAST(N'2013-09-29 00:00:00' AS SmallDateTime), 6)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (219, 11, 9, CAST(N'2013-11-04 00:00:00' AS SmallDateTime), 10)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (220, 9, 12, CAST(N'2013-12-01 00:00:00' AS SmallDateTime), 13)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (221, 14, 9, CAST(N'2013-12-09 00:00:00' AS SmallDateTime), 14)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (222, 15, 9, CAST(N'2013-12-14 00:00:00' AS SmallDateTime), 15)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (223, 9, 10, CAST(N'2013-12-22 00:00:00' AS SmallDateTime), 16)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (224, 18, 9, CAST(N'2013-12-29 00:00:00' AS SmallDateTime), 17)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (225, 9, 17, CAST(N'2014-02-17 00:00:00' AS SmallDateTime), 21)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (226, 16, 9, CAST(N'2014-02-23 00:00:00' AS SmallDateTime), 22)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (227, 9, 13, CAST(N'2014-03-01 00:00:00' AS SmallDateTime), 23)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (228, 9, 11, CAST(N'2014-03-31 00:00:00' AS SmallDateTime), 27)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (229, 12, 9, CAST(N'2014-04-21 00:00:00' AS SmallDateTime), 30)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (230, 9, 14, CAST(N'2014-04-27 00:00:00' AS SmallDateTime), 31)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (231, 9, 15, CAST(N'2014-05-03 00:00:00' AS SmallDateTime), 32)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (232, 10, 9, CAST(N'2014-05-11 00:00:00' AS SmallDateTime), 33)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (233, 9, 18, CAST(N'2014-05-16 00:00:00' AS SmallDateTime), 34)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (234, 10, 16, CAST(N'2013-08-24 00:00:00' AS SmallDateTime), 2)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (235, 10, 12, CAST(N'2013-09-28 00:00:00' AS SmallDateTime), 6)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (236, 15, 10, CAST(N'2013-10-05 00:00:00' AS SmallDateTime), 7)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (237, 10, 18, CAST(N'2013-10-20 00:00:00' AS SmallDateTime), 8)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (238, 10, 17, CAST(N'2013-11-04 00:00:00' AS SmallDateTime), 10)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (239, 13, 10, CAST(N'2013-11-09 00:00:00' AS SmallDateTime), 11)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (240, 11, 10, CAST(N'2013-11-30 00:00:00' AS SmallDateTime), 13)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (241, 10, 14, CAST(N'2013-12-15 00:00:00' AS SmallDateTime), 15)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (242, 16, 10, CAST(N'2014-02-01 00:00:00' AS SmallDateTime), 19)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (243, 12, 10, CAST(N'2014-03-01 00:00:00' AS SmallDateTime), 23)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (244, 10, 15, CAST(N'2014-03-09 00:00:00' AS SmallDateTime), 24)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (245, 18, 10, CAST(N'2014-03-16 00:00:00' AS SmallDateTime), 25)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (246, 17, 10, CAST(N'2014-03-29 00:00:00' AS SmallDateTime), 27)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (247, 10, 13, CAST(N'2014-04-04 00:00:00' AS SmallDateTime), 28)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (248, 10, 11, CAST(N'2014-04-19 00:00:00' AS SmallDateTime), 30)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (249, 14, 10, CAST(N'2014-05-03 00:00:00' AS SmallDateTime), 32)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (250, 12, 11, CAST(N'2013-09-01 00:00:00' AS SmallDateTime), 3)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (251, 11, 15, CAST(N'2013-09-15 00:00:00' AS SmallDateTime), 4)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (252, 18, 11, CAST(N'2013-09-21 00:00:00' AS SmallDateTime), 5)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (253, 17, 11, CAST(N'2013-10-06 00:00:00' AS SmallDateTime), 7)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (254, 11, 13, CAST(N'2013-10-19 00:00:00' AS SmallDateTime), 8)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (255, 14, 11, CAST(N'2013-11-24 00:00:00' AS SmallDateTime), 12)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (256, 16, 11, CAST(N'2013-12-22 00:00:00' AS SmallDateTime), 16)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (257, 11, 12, CAST(N'2014-02-10 00:00:00' AS SmallDateTime), 20)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (258, 15, 11, CAST(N'2014-02-15 00:00:00' AS SmallDateTime), 21)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (259, 11, 18, CAST(N'2014-02-23 00:00:00' AS SmallDateTime), 22)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (260, 11, 17, CAST(N'2014-03-09 00:00:00' AS SmallDateTime), 24)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (261, 13, 11, CAST(N'2014-03-15 00:00:00' AS SmallDateTime), 25)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (262, 11, 14, CAST(N'2014-04-13 00:00:00' AS SmallDateTime), 29)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (263, 11, 16, CAST(N'2014-05-10 00:00:00' AS SmallDateTime), 33)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (264, 12, 13, CAST(N'2013-08-17 00:00:00' AS SmallDateTime), 1)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (265, 12, 14, CAST(N'2013-09-20 00:00:00' AS SmallDateTime), 5)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (266, 12, 16, CAST(N'2013-10-26 00:00:00' AS SmallDateTime), 9)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (267, 12, 15, CAST(N'2013-12-08 00:00:00' AS SmallDateTime), 14)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (268, 18, 12, CAST(N'2013-12-13 00:00:00' AS SmallDateTime), 15)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (269, 17, 12, CAST(N'2013-12-29 00:00:00' AS SmallDateTime), 17)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (270, 13, 12, CAST(N'2014-01-24 00:00:00' AS SmallDateTime), 18)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (271, 14, 12, CAST(N'2014-02-22 00:00:00' AS SmallDateTime), 22)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (272, 16, 12, CAST(N'2014-03-22 00:00:00' AS SmallDateTime), 26)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (273, 15, 12, CAST(N'2014-04-27 00:00:00' AS SmallDateTime), 31)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (274, 12, 18, CAST(N'2014-05-03 00:00:00' AS SmallDateTime), 32)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (275, 12, 17, CAST(N'2014-05-18 00:00:00' AS SmallDateTime), 34)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (276, 13, 15, CAST(N'2013-08-24 00:00:00' AS SmallDateTime), 2)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (277, 18, 13, CAST(N'2013-08-30 00:00:00' AS SmallDateTime), 3)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (278, 17, 13, CAST(N'2013-09-21 00:00:00' AS SmallDateTime), 5)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (279, 14, 13, CAST(N'2013-11-02 00:00:00' AS SmallDateTime), 10)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (280, 16, 13, CAST(N'2013-12-07 00:00:00' AS SmallDateTime), 14)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (281, 15, 13, CAST(N'2014-02-01 00:00:00' AS SmallDateTime), 19)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (282, 13, 18, CAST(N'2014-02-07 00:00:00' AS SmallDateTime), 20)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (283, 13, 17, CAST(N'2014-02-23 00:00:00' AS SmallDateTime), 22)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (284, 13, 14, CAST(N'2014-03-28 00:00:00' AS SmallDateTime), 27)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (285, 13, 16, CAST(N'2014-04-27 00:00:00' AS SmallDateTime), 31)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (286, 16, 14, CAST(N'2013-08-16 00:00:00' AS SmallDateTime), 1)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (287, 14, 15, CAST(N'2013-09-30 00:00:00' AS SmallDateTime), 6)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (288, 18, 14, CAST(N'2013-10-05 00:00:00' AS SmallDateTime), 7)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (289, 17, 14, CAST(N'2013-10-25 00:00:00' AS SmallDateTime), 9)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (290, 14, 16, CAST(N'2014-01-26 00:00:00' AS SmallDateTime), 18)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (291, 15, 14, CAST(N'2014-03-02 00:00:00' AS SmallDateTime), 23)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (292, 14, 18, CAST(N'2014-03-08 00:00:00' AS SmallDateTime), 24)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (293, 14, 17, CAST(N'2014-03-23 00:00:00' AS SmallDateTime), 26)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (294, 15, 17, CAST(N'2013-08-19 00:00:00' AS SmallDateTime), 1)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (295, 16, 15, CAST(N'2013-11-04 00:00:00' AS SmallDateTime), 10)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (296, 15, 18, CAST(N'2013-12-22 00:00:00' AS SmallDateTime), 16)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (297, 17, 15, CAST(N'2014-01-26 00:00:00' AS SmallDateTime), 18)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (298, 15, 16, CAST(N'2014-03-31 00:00:00' AS SmallDateTime), 27)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (299, 18, 15, CAST(N'2014-05-11 00:00:00' AS SmallDateTime), 33)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (300, 18, 16, CAST(N'2013-11-10 00:00:00' AS SmallDateTime), 11)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (301, 17, 16, CAST(N'2013-11-29 00:00:00' AS SmallDateTime), 13)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (302, 16, 18, CAST(N'2014-04-05 00:00:00' AS SmallDateTime), 28)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (303, 16, 17, CAST(N'2014-04-21 00:00:00' AS SmallDateTime), 30)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (304, 17, 18, CAST(N'2013-08-25 00:00:00' AS SmallDateTime), 2)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (305, 18, 17, CAST(N'2014-02-02 00:00:00' AS SmallDateTime), 19)
GO
INSERT [dbo].[match] ([matchID], [homeTeamID], [visitingTeamID], [dateOfMatch], [week]) VALUES (306, 7, 12, CAST(N'2014-04-05 00:00:00' AS SmallDateTime), 28)
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (1, N'TOLGA', N'ZENGÝN', N'Turkey', CAST(N'1983-10-10 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (2, N'OLCAY', N'ÞAHAN', N'Turkey', CAST(N'1987-05-26 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (3, N'ATIBA', N'HUTCHINSON', N'Canada', CAST(N'1983-02-08 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (4, N'VELÝ ', N'KAVLAK', N'Turkey', CAST(N'1988-11-03 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (5, N'HUGO MIGUEL', N'PEREIRA DE ALMEIDA', N'Portugal', CAST(N'1984-05-23 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (6, N'RAMON', N'DE MORAES MOTTA', N'Brazil', CAST(N'1988-05-06 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (7, N'GÖKHAN', N'TÖRE', N'Turkey', CAST(N'1992-01-20 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (8, N'OÐUZHAN', N'ÖZYAKUP', N'Turkey', CAST(N'1992-09-23 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (9, N'SERDAR', N'KURTULUÞ', N'Turkey', CAST(N'1987-07-23 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (10, N'PEDRO CAMILO', N'FRANCO ULLOA', N'Colombia', CAST(N'1991-04-23 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (11, N'ERSAN ADEM', N'GÜLÜM', N'Turkey', CAST(N'1987-05-17 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (12, N'MANUEL HENRIQUE', N'TAVARES FERNANDES', N'Portugal', CAST(N'1986-02-05 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (13, N'NECÝP', N'UYSAL', N'Turkey', CAST(N'1991-01-24 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (14, N'TOMAS', N'SIVOK', N'Czech Republic', CAST(N'1983-09-15 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (15, N'JULIEN', N'ESCUDE', N'France', CAST(N'1979-08-17 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (16, N'DANY ACHILLE', N'NOUNKEU TCHOUNKEU', N'France', CAST(N'1986-04-11 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (17, N'JERMAINE JUNIOR', N'JONES', N'Germany', CAST(N'1981-11-03 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (18, N'MUSTAFA', N'PEKTEMEK', N'Turkey', CAST(N'1988-08-11 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (19, N'FILIP', N'HOLOSKO', N'Slovakia', CAST(N'1984-01-17 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (20, N'ÝSMAÝL', N'KÖYBAÞI', N'Turkey', CAST(N'1989-07-10 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (21, N'UÐUR', N'BORAL', N'Turkey', CAST(N'1982-04-14 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (22, N'ÖMER HASAN', N'ÞÝÞMANOÐLU', N'Turkey', CAST(N'1989-08-01 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (23, N'KERÝM', N'KOYUNLU', N'Turkey', CAST(N'1993-11-19 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (24, N'MUHAMMED', N'DEMÝRCÝ', N'Turkey', CAST(N'1995-01-03 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (25, N'MICHAEL', N'ENERAMO', N'Nigeria', CAST(N'1985-11-20 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (26, N'BRUNO', N'FERREIRA BONFIM', N'Brazil', CAST(N'1989-01-19 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (27, N'MEHMET', N'AKGÜN', N'Turkey', CAST(N'1986-08-06 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (28, N'CENK', N'GÖNEN', N'Turkey', CAST(N'1988-02-21 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (29, N'ÝBRAHÝM', N'TORAMAN', N'Turkey', CAST(N'1981-11-20 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (30, N'GÖKHAN', N'SÜZEN', N'Turkey', CAST(N'1987-07-12 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (31, N'EMRE', N'TALÝ', N'Turkey', CAST(N'1995-08-14 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (32, N'SEZER', N'ÖZTÜRK', N'Turkey', CAST(N'1985-11-03 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (33, N'GÜNAY', N'GÜVENÇ', N'Turkey', CAST(N'1991-06-25 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (34, N'DIRK', N'KUIJT', N'Netherlands', CAST(N'1980-07-22 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (35, N'CANER', N'ERKÝN', N'Turkey', CAST(N'1988-10-04 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (36, N'VOLKAN', N'DEMÝREL', N'Turkey', CAST(N'1981-10-27 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (37, N'GÖKHAN', N'GÖNÜL', N'Turkey', CAST(N'1985-01-04 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (38, N'MOUSSA', N'SOW', N'France', CAST(N'1986-01-19 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (39, N'MEHMET', N'TOPAL', N'Turkey', CAST(N'1986-03-03 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (40, N'BRUNO EDUARDO', N'REGUFE ALVES', N'Portugal', CAST(N'1981-11-27 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (41, N'EMMANUEL CHINENYE', N'EMENIKE', N'Nigeria', CAST(N'1987-05-10 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (42, N'EGEMEN', N'KORKMAZ', N'Turkey', CAST(N'1982-11-03 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (43, N'ALPER', N'POTUK', N'Turkey', CAST(N'1991-04-08 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (44, N'BEKÝR', N'ÝRTEGÜN', N'Turkey', CAST(N'1984-04-20 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (45, N'RAUL JOSE', N'TRINDADE MEIRELES', N'Portugal', CAST(N'1983-03-17 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (46, N'PIERRE ACHILLE', N'WEBO KOUAMO', N'Cameroon', CAST(N'1982-01-20 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (47, N'EMRE', N'BELÖZOÐLU', N'Turkey', CAST(N'1980-09-07 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (48, N'CRISTIAN MARK J. N. O.', N'BARONI', N'Brazil', CAST(N'1983-06-25 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (49, N'MEHMET', N'TOPUZ', N'Turkey', CAST(N'1983-09-07 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (50, N'MICHAL', N'KADLEC', N'Czech Republic', CAST(N'1984-12-13 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (51, N'SELÇUK', N'ÞAHÝN', N'Turkey', CAST(N'1981-01-31 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (52, N'FEHMÝ MERT', N'GÜNOK', N'Turkey', CAST(N'1989-03-01 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (53, N'SAMUEL TOBIAS', N'HOLMEN', N'Sweden', CAST(N'1984-06-28 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (54, N'SALÝH', N'UÇAN', N'Turkey', CAST(N'1994-01-06 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (55, N'HASAN ALÝ', N'KALDIRIM', N'Turkey', CAST(N'1989-12-09 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (56, N'SERDAR', N'KESÝMAL', N'Turkey', CAST(N'1989-01-24 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (57, N'ÝBRAHÝM SERDAR', N'AYDIN', N'Turkey', CAST(N'1996-07-19 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (58, N'MUHAMMED', N'AKARSLAN', N'Turkey', CAST(N'1995-04-02 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (59, N'ERMAN', N'TAÞKIN', N'Turkey', CAST(N'1995-01-01 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (60, N'BURAK', N'YILMAZ', N'Turkey', CAST(N'1985-07-15 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (61, N'SELÇUK', N'ÝNAN', N'Turkey', CAST(N'1985-02-10 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (62, N'FELIPE ', N'MELO DE CARVALHO', N'Spain', CAST(N'1983-06-26 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (63, N'NESTOR FERNANDO', N'MUSLERA', N'Italy', CAST(N'1986-06-16 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (64, N'SEMÝH', N'KAYA', N'Turkey', CAST(N'1991-02-24 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (65, N'WESLEY', N'SNEÝJDER', N'Netherlands', CAST(N'1984-06-09 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (66, N'TEBILY DIDIER YVES', N'DROGBA', N'France', CAST(N'1978-03-11 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (67, N'HAKAN KADÝR', N'BALTA', N'Turkey', CAST(N'1983-03-23 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (68, N'AURELÝEN BAYARD', N'CHEDJOU FONGANG', N'France', CAST(N'1985-06-20 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (69, N'SABRÝ', N'SARIOÐLU', N'Turkey', CAST(N'1984-07-26 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (70, N'EMMANUEL', N'EBOUE', N'Ivory Coast', CAST(N'1983-06-04 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (71, N'ALEX', N'NICOLAO TELLES', N'Brazil', CAST(N'1992-12-15 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (72, N'YEKTA', N'KURTULUÞ', N'Turkey', CAST(N'1985-12-11 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (73, N'UMUT', N'BULUT', N'Turkey', CAST(N'1983-03-15 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (74, N'CEYHUN', N'GÜLSELAM', N'Turkey', CAST(N'1987-12-25 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (75, N'GÖKHAN', N'ZAN', N'Turkey', CAST(N'1981-09-07 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (76, N'VEYSEL', N'SARI', N'Turkey', CAST(N'1988-07-25 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (77, N'EMRE', N'ÇOLAK', N'Turkey', CAST(N'1991-05-20 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (78, N'ARMINDO', N'TUE NA BANGNA', N'Portugal', CAST(N'1994-10-24 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (79, N'ÝZET', N'HAJROVIC', N'Switzerland', CAST(N'1991-08-04 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (80, N'ERAY', N'ÝÞCAN', N'Turkey', CAST(N'1991-07-19 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (81, N'ALBERT ', N'RIERA ORTEGA', N'Spain', CAST(N'1982-04-15 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (82, N'ENGÝN', N'BAYTAR', N'Turkey', CAST(N'1983-07-11 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (83, N'NOUREDDINE', N'AMRABAT', N'Netherlands', CAST(N'1987-03-31 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (84, N'HAMÝT', N'ALTINTOP', N'Turkey', CAST(N'1982-12-08 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (85, N'AYDIN', N'YILMAZ', N'Turkey', CAST(N'1988-01-29 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (86, N'UFUK', N'CEYLAN', N'Turkey', CAST(N'1986-06-23 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (87, N'KORAY', N'GÜNTER', N'Turkey', CAST(N'1994-08-16 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (88, N'GUILLERMO ENIO', N'BURDISSO', N'Italy', CAST(N'1988-09-26 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (89, N'LUCAS ELIAS', N'ONTIVERO', N'Argentina', CAST(N'1994-09-09 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (90, N'SALÝH', N'DURSUN', N'Turkey', CAST(N'1991-07-12 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (91, N'UMUT', N'GÜNDOÐAN', N'Turkey', CAST(N'1990-06-12 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (92, N'OÐUZHAN', N'KAYAR', N'Turkey', CAST(N'1995-04-02 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (93, N'AYKUT', N'ERÇETÝN', N'Turkey', CAST(N'1982-09-14 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (94, N'ÝBRAHÝM', N'COÞKUN', N'Turkey', CAST(N'1995-03-03 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (95, N'OLCAN', N'ADIN', N'Turkey', CAST(N'1985-09-30 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (96, N'ONUR RECEP', N'KIVRAK', N'Turkey', CAST(N'1988-01-01 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (97, N'MUSTAFA', N'YUMLU', N'Turkey', CAST(N'1987-09-25 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (98, N'AYKUT', N'DEMÝR', N'Turkey', CAST(N'1988-10-22 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (99, N'PAULO HENRIQUE', N'CARNEIRO FILHO', N'Brazil', CAST(N'1989-03-13 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (100, N'JOSE', N'BOSINGWA DA SILVA', N'Portugal', CAST(N'1982-08-24 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (101, N'DEGUY ALAIN DIDIER', N'ZOKORA', N'Ivory Coast', CAST(N'1980-12-14 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (102, N'ADRIAN', N'MIERZEJEWSKI', N'Poland', CAST(N'1986-11-06 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (103, N'YUSUF', N'ERDOÐAN', N'Turkey', CAST(N'1992-08-07 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (104, N'FLORENT JOHAN ', N'MALOUDA', N'France', CAST(N'1980-06-13 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (105, N'KADÝR', N'KELEÞ', N'Turkey', CAST(N'1988-01-01 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (106, N'GUSTAVO', N'COLMAN', N'Argentina', CAST(N'1985-04-19 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (107, N'ZEKÝ', N'YAVRU', N'Turkey', CAST(N'1991-09-05 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (108, N'ALEXANDRU ', N'BOURCEANU ', N'Italy', CAST(N'1985-04-24 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (109, N'ÖZER', N'HURMACI', N'Turkey', CAST(N'1986-11-20 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (110, N'SOULEYMAN ', N'BAMBA', N'Ivory Coast', CAST(N'1985-01-13 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (111, N'MUSTAFA', N'AKBAÞ', N'Turkey', CAST(N'1990-05-30 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (112, N'EMRE', N'GÜRAL', N'Turkey', CAST(N'1989-04-05 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (113, N'CANER', N'OSMANPAÞA', N'Turkey', CAST(N'1988-01-15 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (114, N'SONER', N'AYDOÐDU', N'Turkey', CAST(N'1991-01-05 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (115, N'MARC', N'JANKO', N'Austria', CAST(N'1983-06-25 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (116, N'ABDULKADÝR', N'ÖZDEMÝR', N'Turkey', CAST(N'1991-03-25 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (117, N'ÞAHÝN', N'AYGÜNEÞ', N'Turkey', CAST(N'1990-10-01 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (118, N'FATÝH', N'ÖZTÜRK', N'Turkey', CAST(N'1986-12-22 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (119, N'ZEKÝ', N'AYVAZ', N'Turkey', CAST(N'1989-10-01 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (120, N'ÝBRAHÝM', N'DEMÝR', N'Turkey', CAST(N'1995-09-02 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (121, N'BAYE OUMAR', N'NIASSE', N'Senegal', CAST(N'1990-04-18 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (122, N'UÐUR', N'DEMÝROK', N'Turkey', CAST(N'1988-07-08 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (123, N'EMRAH', N'EREN', N'Turkey', CAST(N'1978-11-13 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (124, N'MERTER', N'YÜCE', N'Turkey', CAST(N'1985-02-18 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (125, N'GÜRAY', N'VURAL', N'Turkey', CAST(N'1988-06-11 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (126, N'ÝBRAHÝMA', N'SONKO', N'France', CAST(N'1981-01-22 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (127, N'BRUNO', N'MOMBRA ROSA', N'Brazil', CAST(N'1988-08-08 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (128, N'ÇAÐDAÞ', N'ATAN', N'Turkey', CAST(N'1980-02-28 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (129, N'BÝLAL', N'KISA', N'Turkey', CAST(N'1983-06-22 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (130, N'OÐUZ', N'DAÐLAROÐLU', N'Turkey', CAST(N'1979-08-18 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (131, N'KENAN', N'ÖZER', N'Turkey', CAST(N'1987-08-16 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (132, N'SERTAN', N'VARDAR', N'Turkey', CAST(N'1982-03-13 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (133, N'AHMET', N'CEBE', N'Turkey', CAST(N'1983-03-02 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (134, N'MEHMET', N'AKYÜZ', N'Turkey', CAST(N'1986-01-02 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (135, N'EMRAH', N'TUNCEL', N'Turkey', CAST(N'1987-09-14 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (136, N'SERKAN', N'YALÇIN', N'Turkey', CAST(N'1982-11-02 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (137, N'EMÝN', N'ALADAÐ', N'Turkey', CAST(N'1983-02-25 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (138, N'KERÝM', N'ZENGÝN', N'Turkey', CAST(N'1985-04-13 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (139, N'IVAN', N'SESAR', N'Bosnia and Herzegovina', CAST(N'1989-08-29 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (140, N'EVREN', N'ÖZYÝÐÝT', N'Turkey', CAST(N'1986-01-01 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (141, N'GUIRLAIN DESIRE', N'WATO KUATE', N'Cameroon', CAST(N'1995-09-19 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (142, N'ERKAN', N'TAÞKIRAN', N'Turkey', CAST(N'1985-04-22 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (143, N'ÝSMAÝL', N'KONUK', N'Turkey', CAST(N'1988-01-16 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (144, N'MUSTAFA', N'AÞAN', N'Turkey', CAST(N'1988-09-11 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (145, N'ALESSANDRO F. KARL-HENZ', N'RIEDLE', N'Germany', CAST(N'1991-08-14 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (146, N'ÖZGÜR CAN', N'ÖZCAN', N'Turkey', CAST(N'1988-04-10 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (147, N'SERKAN', N'CANSOY', N'Turkey', CAST(N'1995-02-23 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (148, N'CAN BARTU', N'GÜNEÞ', N'Turkey', CAST(N'1993-03-10 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (149, N'RIDVAN', N'ÖZKAN', N'Turkey', CAST(N'1994-02-01 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (150, N'LUCIANO', N'GUAYCOCHEA', N'Argentina', CAST(N'1992-04-24 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (151, N'KEREM', N'BULUT', N'Turkey', CAST(N'1992-02-03 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (152, N'RENATO', N'CIVELLI', N'Italy', CAST(N'1983-10-14 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (153, N'SEBASTIEN', N'FREY', N'France', CAST(N'1980-03-18 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (154, N'FERNANDO DANIEL', N'BELLUSCHI', N'Italy', CAST(N'1983-09-10 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (155, N'TAIWO', N'TAYE', N'Nigeria', CAST(N'1985-04-16 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (156, N'ÞENER', N'ÖZBAYRAKLI', N'Turkey', CAST(N'1990-01-23 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (157, N'ÞAMÝL', N'ÇÝNAZ', N'Turkey', CAST(N'1986-03-08 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (158, N'FERHAT', N'KÝRAZ', N'Turkey', CAST(N'1989-01-02 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (159, N'ÝBRAHÝM', N'ÖZTÜRK', N'Turkey', CAST(N'1981-06-21 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (160, N'SERDAR', N'AZÝZ', N'Turkey', CAST(N'1990-10-23 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (161, N'STANISLAV', N'SESTAK', N'Slovakia', CAST(N'1982-12-16 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (162, N'JOSE FERNANDO', N'VIANA DE SANTANA', N'Brazil', CAST(N'1987-03-27 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (163, N'KAZIM', N'KAZIM', N'Turkey', CAST(N'1986-08-26 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (164, N'MICHAEL', N'BASSER CHRETIEN', N'France', CAST(N'1984-07-10 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (165, N'PABLO MARTIN', N'BATALLA', N'Argentina', CAST(N'1984-01-16 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (166, N'BEKÝR', N'YILMAZ', N'Turkey', CAST(N'1988-03-06 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (167, N'VOLKAN', N'ÞEN', N'Turkey', CAST(N'1987-07-07 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (168, N'HARUN', N'TEKÝN', N'Turkey', CAST(N'1989-06-17 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (169, N'OZAN', N'TUFAN', N'Turkey', CAST(N'1995-03-23 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (170, N'SEBASTIAN ANDRES', N'PINTO PERURENA', N'Spain', CAST(N'1986-02-05 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (171, N'YASÝN', N'PEHLÝVAN', N'Austria', CAST(N'1989-01-05 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (172, N'RENATO ADRIANO', N'JACO DE MORAIS', N'Brazil', CAST(N'1984-09-15 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (173, N'SERCAN', N'YILDIRIM', N'Turkey', CAST(N'1990-04-05 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (174, N'ENES', N'ÜNAL', N'Turkey', CAST(N'1997-05-10 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (175, N'TAÞKIN', N'ÇALIÞ', N'Turkey', CAST(N'1993-07-25 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (176, N'OZAN', N'ÝPEK', N'Turkey', CAST(N'1986-10-10 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (177, N'OÐUZ HAN', N'AYNAOÐLU', N'Turkey', CAST(N'1992-03-22 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (178, N'MUSTAFA BATUHAN', N'ALTINTAÞ', N'Turkey', CAST(N'1996-03-14 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (179, N'DOÐANAY', N'KILIÇ', N'Turkey', CAST(N'1996-06-08 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (180, N'OKAN', N'KOCUK', N'Turkey', CAST(N'1995-07-27 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (181, N'BEKÝR', N'SEVGÝ', N'Turkey', CAST(N'1988-08-25 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (182, N'ONURCAN', N'PÝRÝ', N'Turkey', CAST(N'1994-09-28 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (183, N'OUSMANE VIERA', N'DIARRASSOUBA', N'Ivory Coast', CAST(N'1986-12-21 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (184, N'SERKAN', N'KIRINTILI', N'Turkey', CAST(N'1985-02-15 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (185, N'ALI ADNAN KADHIM', N'AL TAMEEMI', N'Iraq', CAST(N'1993-12-19 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (186, N'LUDOVIC', N'SYLVESTRE', N'France', CAST(N'1984-02-05 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (187, N'KIVANÇ', N'KARAKAÞ', N'Turkey', CAST(N'1985-03-03 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (188, N'KORAY ', N'ALTINAY ', N'Turkey', CAST(N'1991-10-11 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (189, N'TEVFÝK', N'KÖSE', N'Turkey', CAST(N'1988-07-12 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (190, N'LEONY LEONARD', N'KWEUKE', N'Cameroon', CAST(N'1987-07-12 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (191, N'GODFREYITAMA', N'OBOABONA', N'Nigeria', CAST(N'1990-09-16 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (192, N'KAÐAN', N'SÖYLEMEZGÝLLER', N'Turkey', CAST(N'1988-03-04 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (193, N'SEZER', N'ÖZMEN', N'Turkey', CAST(N'1992-07-07 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (194, N'FLORIN LUCIAN', N'CERNAT', N'Romania', CAST(N'1980-03-10 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (195, N'DENÝZ ', N'KADAH ', N'Turkey', CAST(N'1986-03-02 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (196, N'LOMANA TRESOR', N'LUALUA', N'Democ. Rep. of the Congo', CAST(N'1980-12-28 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (197, N'ORHAN', N'OVACIKLI', N'Turkey', CAST(N'1988-11-23 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (198, N'EREN', N'ALBAYRAK', N'Turkey', CAST(N'1991-04-23 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (199, N'AHMET GÖRKEM', N'GÖRK', N'Turkey', CAST(N'1983-06-30 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (200, N'ALI LIBAN ', N'ABDI', N'Somalia', CAST(N'1987-10-05 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (201, N'ÜMÝT ', N'KORKMAZ', N'Turkey', CAST(N'1985-09-17 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (202, N'HURÞUT', N'MERÝÇ', N'Turkey', CAST(N'1983-07-31 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (203, N'CUMALÝ', N'BÝÞÝ', N'Turkey', CAST(N'1993-06-15 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (204, N'ENGÝN', N'BAYTAR', N'Turkey', CAST(N'1983-07-11 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (205, N'AYKUT', N'AKGÜN', N'Turkey', CAST(N'1987-09-18 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (206, N'MEHMET GÜRKAN', N'ÖZTÜRK', N'Turkey', CAST(N'1989-03-26 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (207, N'ERAY', N'BÝRNÝÇAN', N'Turkey', CAST(N'1988-07-20 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (208, N'HASAN HAKAN', N'HACIBEKTAÞOÐLU', N'Turkey', CAST(N'1984-04-23 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (209, N'NECATÝ', N'YILMAZ', N'Turkey', CAST(N'1988-01-31 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (210, N'MARTIN', N'KAYONGO MUTUMBA', N'Sweden', CAST(N'1985-06-15 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (211, N'SERDAR', N'GÜRLER', N'Turkey', CAST(N'1991-09-14 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (212, N'DENÝZ', N'YILMAZ', N'Turkey', CAST(N'1988-02-26 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (213, N'ÇAÐLAR', N'BÝRÝNCÝ', N'Turkey', CAST(N'1985-10-02 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (214, N'TIDIANE', N'SANE', N'Senegal', CAST(N'1985-07-10 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (215, N'VANJA', N'IVESA', N'Croatia', CAST(N'1977-07-21 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (216, N'FABIO', N'ALVES DA SILVA', N'Brazil', CAST(N'1979-01-14 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (217, N'SERDAR', N'ÖZKAN', N'Turkey', CAST(N'1987-01-01 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (218, N'MEHMET', N'NAS', N'Turkey', CAST(N'1979-11-20 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (219, N'MARVÝN ROMEO', N'KWASÝE', N'Netherlands', CAST(N'1990-08-12 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (220, N'DENÝZ', N'ASLAN', N'Turkey', CAST(N'1989-02-09 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (221, N'TANJU', N'KAYHAN', N'Turkey', CAST(N'1989-07-22 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (222, N'ÖZGÜR', N'ÖZKAYA', N'Turkey', CAST(N'1988-02-08 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (223, N'ONUR', N'AYIK', N'Turkey', CAST(N'1990-01-28 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (224, N'PAPE HABIB', N'SOW', N'Senegal', CAST(N'1985-12-02 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (225, N'OGNJEN', N'VRANJES', N'Bosnia and Herzegovina', CAST(N'1989-10-24 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (226, N'ZÜLKÜF', N'ÖZER', N'Turkey', CAST(N'1988-05-10 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (227, N'RODRIGO ALVARO', N'TELLO VALENZUELA', N'Chile', CAST(N'1979-10-14 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (228, N'ÝBRAHÝM', N'KAÞ', N'Turkey', CAST(N'1986-09-20 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (229, N'BATUHAN', N'KARADENÝZ', N'Turkey', CAST(N'1991-04-24 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (230, N'NOYAN', N'ÖZ', N'Turkey', CAST(N'1991-09-13 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (231, N'FRANCO DARIO', N'CANGELE', N'Argentina', CAST(N'1984-07-16 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (232, N'MUHAMMED ALÝ', N'DOÐAN', N'Turkey', CAST(N'1995-08-10 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (233, N'MEHMET OKTAY', N'AYKURT', N'Turkey', CAST(N'1992-09-19 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (234, N'EROL ERDAL', N'ALKAN', N'Turkey', CAST(N'1994-02-16 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (235, N'ALÝ GUTDA', N'GÖKDEMÝR', N'Turkey', CAST(N'1991-09-17 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (236, N'MÜCAHÝT', N'ATALAY', N'Turkey', CAST(N'1991-10-26 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (237, N'MUHAMMET', N'AKYILDIZ', N'Turkey', CAST(N'1995-09-01 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (238, N'MÝRSAT', N'BUDAK', N'Turkey', CAST(N'1989-04-09 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (239, N'YUNUS', N'GÜL', N'Turkey', CAST(N'1995-02-02 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (240, N'RUUD JORGE', N'BOFFIN', N'Belgium', CAST(N'1987-11-05 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (241, N'JERRY', N'AKAMINKO', N'Ghana', CAST(N'1988-05-02 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (242, N'ERKAN', N'ZENGÝN', N'Turkey', CAST(N'1985-08-05 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (243, N'DIOMANSY MEHDI MOUSTAPHA', N'KAMARA', N'France', CAST(N'1980-11-08 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (244, N'OSMAN TARIK', N'ÇAMDAL', N'Turkey', CAST(N'1991-03-24 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (245, N'HÜRRÝYET', N'GÜCER', N'Turkey', CAST(N'1981-10-25 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (246, N'HENRÝ BÝENVENU', N'NTSAMA', N'Cameroon', CAST(N'1988-07-05 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (247, N'CRISTOBAL ANDRES', N'JORQUERA TORRES', N'Chile', CAST(N'1988-08-04 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (248, N'ERMAN', N'KILIÇ', N'Turkey', CAST(N'1983-09-20 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (249, N'AYTAÇ', N'KARA', N'Turkey', CAST(N'1993-03-23 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (250, N'DIEGO ANGELO', N'DE OLIVEIRA', N'Brazil', CAST(N'1986-02-17 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (251, N'ÖZGÜR', N'ÇEK', N'Turkey', CAST(N'1991-01-03 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (252, N'NECATÝ', N'ATEÞ', N'Turkey', CAST(N'1980-01-03 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (253, N'SEZGÝN', N'COÞKUN', N'Turkey', CAST(N'1984-08-23 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (254, N'SERVET', N'ÇETÝN', N'Turkey', CAST(N'1981-03-17 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (255, N'KAMÝL AHMET', N'ÇÖREKÇÝ', N'Turkey', CAST(N'1992-02-01 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (256, N'ADEWOLE RAHEEM  ', N'LAWAL', N'Nigeria', CAST(N'1990-05-04 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (257, N'SEROL', N'DEMÝRHAN', N'Turkey', CAST(N'1988-12-05 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (258, N'MEHMET ERKUT', N'ÞENTÜRK', N'Turkey', CAST(N'1994-05-06 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (259, N'HASAN HÜSEYÝN', N'ACAR', N'Turkey', CAST(N'1994-12-16 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (260, N'ONUR', N'BAYRAMOÐLU', N'Turkey', CAST(N'1990-01-04 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (261, N'SÝNAN', N'ÖREN', N'Turkey', CAST(N'1987-11-21 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (262, N'KAYACAN', N'ERDOÐAN', N'Turkey', CAST(N'1988-03-21 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (263, N'OKAN', N'AYDIN', N'Turkey', CAST(N'1994-05-08 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (264, N'BERTUL', N'KOCABAÞ', N'Turkey', CAST(N'1992-02-15 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (265, N'GÖKHAN', N'SÝVEREK', N'Turkey', CAST(N'1991-10-16 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (266, N'DENÝZ', N'TOPÇU', N'Turkey', CAST(N'1995-05-14 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (267, N'ÞENOL', N'CAN', N'Turkey', CAST(N'1983-04-03 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (268, N'CENK', N'TOSUN', N'Turkey', CAST(N'1991-06-07 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (269, N'MARIUS ', N'STANKEVICIUS', N'Lithuania', CAST(N'1981-07-15 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (270, N'HARIS', N'MEDUNJANIN', N'Bosnia and Herzegovina', CAST(N'1985-03-08 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (271, N'ABDOU RAZACK', N'TRAORE', N'Ivory Coast', CAST(N'1988-12-28 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (272, N'ZYDRUNAS ', N'KARCEMARSKAS', N'Lithuania', CAST(N'1983-05-24 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (273, N'BEKÝR OZAN', N'HAS', N'Turkey', CAST(N'1985-02-18 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (274, N'BINYA', N'AUGUSTIN GILLES', N'Cameroon', CAST(N'1984-08-29 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (275, N'MUSTAFA', N'DURAK', N'Turkey', CAST(N'1988-08-13 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (276, N'EKREM HAYYAM', N'DAÐ', N'Turkey', CAST(N'1980-12-05 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (277, N'TURGUT DOÐAN', N'ÞAHÝN', N'Turkey', CAST(N'1988-02-02 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (278, N'SERDAR', N'ÖZBAYRAKTAR', N'Turkey', CAST(N'1981-11-22 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (279, N'KEMAL', N'TOKAK', N'Turkey', CAST(N'1989-04-25 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (280, N'SERDAR', N'KULBÝLGE', N'Turkey', CAST(N'1980-07-07 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (281, N'MUHAMED', N'ILDIZ', N'Turkey', CAST(N'1991-05-14 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (282, N'MUHAMMET', N'DEMÝR', N'Turkey', CAST(N'1992-01-10 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (283, N'ÝBRAHÝM', N'AKIN', N'Turkey', CAST(N'1984-01-04 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (284, N'MAREK', N'SAPARA', N'Slovakia', CAST(N'1982-07-31 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (285, N'ORHAN', N'GÜLLE', N'Turkey', CAST(N'1992-01-15 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (286, N'BÝROL', N'HÝKMET', N'Turkey', CAST(N'1982-03-24 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (287, N'OÐULCAN', N'ÇAÐLAYAN', N'Turkey', CAST(N'1996-03-22 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (288, N'ERMAN', N'BULUCU', N'Turkey', CAST(N'1989-03-09 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (289, N'SERCAN', N'HACIOÐLU', N'Turkey', CAST(N'1992-01-22 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (290, N'KEREM', N'ERYILMAZ', N'Turkey', CAST(N'1990-04-29 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (291, N'ÝBRAHÝM HALÝL', N'KESER', N'Turkey', CAST(N'1997-07-02 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (292, N'ARMINDO', N'TUE NA BANGNA', N'Portugal', CAST(N'1994-10-24 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (293, N'JAKUP JÝMMY', N'DURMAZ', N'Turkey', CAST(N'1989-03-22 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (294, N'AHMET YILMAZ', N'ÇALIK', N'Turkey', CAST(N'1994-02-26 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (295, N'DUSKO', N'TOSIC', N'Serbia', CAST(N'1985-01-19 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (296, N'SORÝN BOGDAN', N'STANCU', N'Romania', CAST(N'1987-06-28 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (297, N'ERMIN', N'ZEC', N'Bosnia and Herzegovina', CAST(N'1988-02-18 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (298, N'ANTE', N'KULUSIC', N'Croatia', CAST(N'1986-06-06 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (299, N'DOÐA', N'KAYA', N'Turkey', CAST(N'1984-06-30 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (300, N'RAMAZAN', N'KÖSE', N'Turkey', CAST(N'1988-05-12 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (301, N'RADOSAV', N'PETROVIC', N'Serbia', CAST(N'1989-03-08 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (302, N'HAKAN', N'ASLANTAÞ', N'Turkey', CAST(N'1985-08-26 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (303, N'UÐUR', N'ÇÝFTÇÝ', N'Turkey', CAST(N'1992-05-04 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (304, N'ÖZGÜR', N'ÝLERÝ', N'Turkey', CAST(N'1987-11-17 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (305, N'OKTAY', N'DELÝBALTA', N'Turkey', CAST(N'1985-10-27 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (306, N'NÝZAMETTÝN', N'ÇALIÞKAN', N'Turkey', CAST(N'1987-03-20 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (307, N'JOHAN HELGE', N'DAHLIN', N'Sweden', CAST(N'1986-09-08 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (308, N'FATÝH SERKAN', N'KURTULUÞ', N'Turkey', CAST(N'1990-01-01 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (309, N'NEMANJA', N'TOMIC', N'Serbia', CAST(N'1988-01-21 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (310, N'FERHAT', N'KAPLAN', N'Turkey', CAST(N'1989-01-07 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (311, N'MERVAN', N'ÇELÝK', N'Turkey', CAST(N'1990-05-26 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (312, N'SEDAT', N'BAYRAK', N'Turkey', CAST(N'1981-04-10 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (313, N'DENÝZ', N'NAKÝ', N'Turkey', CAST(N'1989-07-09 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (314, N'ARTSIOM', N'RADZKOU', N'Belarus', CAST(N'1985-08-26 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (315, N'YUSUF EMRE', N'GÜLTEKÝN', N'Turkey', CAST(N'1993-03-12 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (316, N'FERHAT', N'GÖRGÜLÜ', N'Turkey', CAST(N'1991-10-28 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (317, N'MILAN', N'SMILJANIC', N'Serbia', CAST(N'1986-11-19 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (318, N'DOÐAN', N'SERTTAÞ', N'Turkey', CAST(N'1996-02-01 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (319, N'BOY', N'WATERMAN', N'Netherlands', CAST(N'1984-01-24 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (320, N'SAMBA', N'SOW', N'France', CAST(N'1989-04-29 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (321, N'LARRYS DESTIN', N'MABIALA', N'France', CAST(N'1987-10-08 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (322, N'ÝSHAK', N'DOÐAN', N'Turkey', CAST(N'1990-08-09 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (323, N'ÝLHAN', N'PARLAK', N'Turkey', CAST(N'1987-01-18 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (324, N'FURKAN', N'ÖZÇAL', N'Turkey', CAST(N'1990-09-03 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (325, N'YÝÐÝT', N'ÝNCEDEMÝR', N'Turkey', CAST(N'1985-03-09 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (326, N'UÐUR', N'UÇAR', N'Turkey', CAST(N'1987-04-05 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (327, N'AHMET ÝLHAN', N'ÖZEK', N'Turkey', CAST(N'1988-01-01 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (328, N'ERDEM', N'ÖZGENÇ', N'Turkey', CAST(N'1984-08-22 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (329, N'ERKAN', N'KAÞ', N'Turkey', CAST(N'1991-09-10 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (330, N'MICHAEL', N'ENERAMO', N'Nigeria', CAST(N'1985-11-20 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (331, N'HAKAN', N'ÖZMERT', N'Turkey', CAST(N'1985-06-03 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (332, N'MUSA', N'ÇAÐIRAN', N'Turkey', CAST(N'1992-11-17 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (333, N'JOSEPH ENEOJO', N'AKPALA', N'Belgium', CAST(N'1986-08-24 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (334, N'MURAT', N'AKÇA', N'Turkey', CAST(N'1990-07-13 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (335, N'JUGURTHA', N'HAMROUN', N'France', CAST(N'1989-01-27 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (336, N'SEBASTIEN NICOLAS', N'PUYGRENIER', N'France', CAST(N'1982-01-28 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (337, N'JONES', N'DA SILVA LOPES', N'Brazil', CAST(N'1988-10-14 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (338, N'MORTEN GAMST', N'PEDERSEN', N'Norway', CAST(N'1981-09-08 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (339, N'BEYKAN', N'ÞÝMÞEK', N'Turkey', CAST(N'1995-01-01 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (340, N'EMRE', N'ÖZKAN', N'Turkey', CAST(N'1988-12-24 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (341, N'ONUR', N'CENÝK', N'Turkey', CAST(N'1992-09-24 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (342, N'ATÝLLA AYBARS', N'GARHAN', N'Turkey', CAST(N'1991-05-17 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (343, N'ABDULAZÝZ', N'DEMÝRCAN', N'Turkey', CAST(N'1991-02-05 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (344, N'EREN', N'GÜNGÖR', N'Turkey', CAST(N'1988-04-02 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (345, N'BORA', N'KÖRK', N'Turkey', CAST(N'1980-06-09 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (346, N'EZEQUIEL OSCAR', N'SCARIONE', N'Argentina', CAST(N'1985-07-14 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (347, N'JAN ANDREAS', N'ISAKSSON', N'Sweden', CAST(N'1981-10-03 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (348, N'YALÇIN', N'AYHAN', N'Turkey', CAST(N'1982-05-01 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (349, N'ANDRE', N'DE CASTRO PEREIRA', N'Portugal', CAST(N'1988-04-02 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (350, N'RYAN GUNO', N'BABEL', N'Netherlands', CAST(N'1986-12-19 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (351, N'RYAN HENK', N'DONK', N'Netherlands', CAST(N'1986-03-30 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (352, N'ADEM', N'BÜYÜK', N'Turkey', CAST(N'1987-08-30 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (353, N'KEREM', N'ÞERAS', N'Turkey', CAST(N'1984-01-01 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (354, N'ABDULLAH ELYASA', N'SÜME', N'Turkey', CAST(N'1983-08-13 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (355, N'SANHARIB', N'MALKÝ', N'Turkey', CAST(N'1984-03-01 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (356, N'SANCAK', N'KAPLAN', N'Turkey', CAST(N'1982-05-25 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (357, N'TABARE', N'VIUDEZ MORA', N'Uruguay', CAST(N'1989-09-08 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (358, N'BARIÞ', N'BAÞDAÞ', N'Turkey', CAST(N'1990-01-17 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (359, N'ÝLHAN', N'EKER', N'Turkey', CAST(N'1983-01-01 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (360, N'TUNAY', N'TORUN', N'Turkey', CAST(N'1990-04-21 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (361, N'ERHAN', N'KARTAL', N'Turkey', CAST(N'1993-03-01 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (362, N'ORHAN', N'ÞAM', N'Turkey', CAST(N'1986-06-01 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (363, N'ALPASLAN', N'ÖZTÜRK', N'Turkey', CAST(N'1993-07-16 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (364, N'ÝBRAHÝM HALÝL', N'ÇOLAK', N'Turkey', CAST(N'1988-01-29 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (365, N'ÝLKER', N'AVCIBAY', N'Turkey', CAST(N'1978-10-01 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (366, N'MATIAS LIONEL', N'FRITZLER', N'Argentina', CAST(N'1986-08-23 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (367, N'KUBÝLAY', N'AKTAÞ', N'Turkey', CAST(N'1995-01-29 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (368, N'VOLKAN', N'YAMAN', N'Turkey', CAST(N'1982-08-27 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (369, N'ERTAÇ', N'ÖZBÝR', N'Turkey', CAST(N'1989-10-25 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (370, N'CEM', N'CAN', N'Turkey', CAST(N'1981-04-01 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (371, N'YASÝN', N'ÖZTEKÝN', N'Turkey', CAST(N'1987-03-19 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (372, N'ABDOU KADER', N'MANGANE', N'Senegal', CAST(N'1983-03-23 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (373, N'BAKAYE', N'TRAORE', N'France', CAST(N'1985-03-06 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (374, N'GEORGES CONSTANT', N'MANDJECK', N'Cameroon', CAST(N'1988-12-09 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (375, N'BOJAN', N'JORGACEVIC', N'Serbia', CAST(N'1982-02-12 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (376, N'EKREM', N'EKÞÝOÐLU', N'Turkey', CAST(N'1978-01-16 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (377, N'BJÖRN', N'VLEMINCKX', N'Belgium', CAST(N'1985-12-01 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (378, N'CENK AHMET', N'ALKILIÇ', N'Turkey', CAST(N'1987-12-09 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (379, N'EMRE', N'ÖZTÜRK', N'Turkey', CAST(N'1992-08-26 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (380, N'GÖKHAN', N'DEÐÝRMENCÝ', N'Turkey', CAST(N'1989-03-21 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (381, N'ARNALDO EDI', N'LOPES DA SÝLVA', N'Portugal', CAST(N'1982-07-07 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (382, N'MURAT', N'YILDIRIM', N'Turkey', CAST(N'1987-05-18 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (383, N'SENÝJAD', N'ÝBRÝCÝC', N'Bosnia and Herzegovina', CAST(N'1985-09-26 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (384, N'RANDALL', N'AZOFEIFA CORRALES', N'Costarica', CAST(N'1984-12-30 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (385, N'PAPA MALICKOU', N'DIAKHATE', N'France', CAST(N'1984-06-21 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (386, N'NUMAN', N'ÇÜRÜKSU', N'Turkey', CAST(N'1984-12-02 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (387, N'MEHMET', N'AKGÜN', N'Turkey', CAST(N'1986-08-06 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (388, N'YÝÐÝT ÝSMAÝL', N'GÖKOÐLAN', N'Turkey', CAST(N'1989-06-05 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (389, N'KERÝM', N'AVCI', N'Turkey', CAST(N'1989-12-16 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (390, N'JOSEF', N'ÇINAR', N'Turkey', CAST(N'1984-01-22 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (391, N'HÜSEYÝN', N'KALA', N'Turkey', CAST(N'1987-05-05 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (392, N'ÜSTÜN', N'BÝLGÝ', N'Turkey', CAST(N'1988-05-30 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (393, N'TURGAY', N'BAHADIR', N'Turkey', CAST(N'1984-01-15 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (394, N'VOLKAN', N'OKUMAK', N'Turkey', CAST(N'1989-08-10 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (395, N'YUSUF', N'BALCIOÐLU', N'Turkey', CAST(N'1993-01-01 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (396, N'ATÝLLA', N'KOCA', N'Turkey', CAST(N'1980-07-16 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (397, N'ZIRI', N'HAMMAR', N'Algeria', CAST(N'1992-07-25 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (398, N'PABLONICOLAS', N'MOUCHE', N'Argentina', CAST(N'1987-10-11 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (399, N'ABDULLAH', N'DURAK', N'Turkey', CAST(N'1987-04-01 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (400, N'SRDAN', N'MIJAILOVIC', N'Serbia', CAST(N'1993-11-10 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (401, N'ÖMER', N'BAYRAM', N'Turkey', CAST(N'1991-07-27 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (402, N'HENRIQUE', N'SERENO FONSECA', N'Portugal', CAST(N'1985-05-18 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (403, N'DIEGO MARVIN', N'BISESWAR', N'Netherlands', CAST(N'1988-03-08 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (404, N'SEFA', N'YILMAZ', N'Turkey', CAST(N'1990-02-14 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (405, N'ALPER', N'ULUDAÐ', N'Turkey', CAST(N'1990-12-11 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (406, N'ZURAB', N'KHIZANISHVILI', N'Georgia', CAST(N'1981-10-06 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (407, N'DEYVISON ROGERIO', N'DA SILVA', N'Brazil', CAST(N'1985-06-09 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (408, N'ALEXAHDROS', N'TZIOLIS', N'Greece', CAST(N'1985-02-13 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (409, N'SÝNAN', N'BOLAT', N'Turkey', CAST(N'1988-09-03 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (410, N'MERT', N'NOBRE', N'Turkey', CAST(N'1980-11-06 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (411, N'LEVENT', N'GÜLEN', N'Turkey', CAST(N'1994-03-16 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (412, N'MAHMUT ERTUÐRUL', N'TAÞKIRAN', N'Turkey', CAST(N'1989-11-05 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (413, N'MARKO', N'SIMIC', N'Serbia', CAST(N'1987-06-16 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (414, N'OKAY', N'YOKUÞLU', N'Turkey', CAST(N'1994-03-09 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (415, N'CÜNEYT', N'KÖZ', N'Turkey', CAST(N'1992-10-12 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (416, N'ONDREJ', N'VANEK', N'Czech Republic', CAST(N'1990-07-05 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (417, N'TANER', N'YALÇIN', N'Turkey', CAST(N'1990-02-18 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (418, N'ENGÝN', N'BEKDEMÝR', N'Turkey', CAST(N'1992-02-07 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (419, N'BÝLAL YENER', N'ARICA', N'Turkey', CAST(N'1992-02-28 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (420, N'SÝNAN', N'BAKIÞ', N'Turkey', CAST(N'1994-04-22 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (421, N'BABACAR MBAYE', N'DIOP', N'Senegal', CAST(N'1993-10-21 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (422, N'DENÝZ DOÐAN', N'MEHMET', N'Turkey', CAST(N'1992-09-19 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (423, N'ERDAL', N'AKDARI', N'Turkey', CAST(N'1993-06-05 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (424, N'MEHMET ', N'KALEM', N'Turkey', CAST(N'1993-01-20 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (425, N'SERKAN', N'BALCI', N'Turkey', CAST(N'1983-08-22 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (426, N'LAMÝNE', N'DIARRA', N'Senegal', CAST(N'1983-12-20 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (427, N'GÖKÇEK', N'VEDERSON', N'Turkey', CAST(N'1981-07-22 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (428, N'MELÝH', N'GÖKÇEK', N'Turkey', CAST(N'1981-07-20 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (429, N'UÐUR', N'ÝNCEMAN', N'Turkey', CAST(N'1981-05-25 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (430, N'FEHMÝ EMRE', N'GÜNGÖR', N'Turkey', CAST(N'1984-08-01 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (431, N'MUSA', N'NÝZAM', N'Turkey', CAST(N'1990-09-08 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (432, N'EMRAH', N'BAÞSAN', N'Turkey', CAST(N'1992-04-17 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (433, N'HAKAN', N'ARIKAN', N'Turkey', CAST(N'1982-08-17 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (434, N'MURAT', N'DURUER', N'Turkey', CAST(N'1988-01-15 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (435, N'KORAY', N'ARSLAN', N'Turkey', CAST(N'1983-10-01 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (436, N'SASO', N'FORNEZZI', N'Slovenia', CAST(N'1982-12-11 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (437, N'IGNACIO', N'INSA BOHIGUES', N'Spain', CAST(N'1986-06-09 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (438, N'PROMÝSE', N'ÝSAAC', N'Nigeria', CAST(N'1987-12-02 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (439, N'ÝBRAHÝM', N'DAÐAÞAN', N'Turkey', CAST(N'1984-06-15 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (440, N'REMZÝ GÝRAY', N'KAÇAR', N'Turkey', CAST(N'1985-03-15 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (441, N'MEHMET SEYFETTÝN', N'SEDEF', N'Turkey', CAST(N'1987-08-05 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (442, N'EYONG TAKANG', N'ENOH', N'Cameroon', CAST(N'1986-03-23 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (443, N'ZEKÝ', N'YILDIRIM', N'Turkey', CAST(N'1991-01-15 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (444, N'JOSEPH ', N'BOUM II', N'Cameroon', CAST(N'1989-09-26 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (445, N'KÖKSAL', N'YEDEK', N'Turkey', CAST(N'1985-01-17 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (446, N'SEMÝH', N'ÞENTÜRK', N'Turkey', CAST(N'1983-04-29 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (447, N'OZAN EVRÝM', N'ÖZENÇ', N'Turkey', CAST(N'1993-01-07 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (448, N'RAMAZAN', N'ÇEVÝK', N'Turkey', CAST(N'1992-04-01 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (449, N'SEDDAR', N'KARAMAN', N'Turkey', CAST(N'1994-01-03 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (450, N'ÝLKAY', N'DURMUÞ', N'Turkey', CAST(N'1994-05-01 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (451, N'FÝKRET', N'SEVÝLGEN', N'Turkey', CAST(N'1994-01-24 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (452, N'ABDURRAHMAN', N'KUYUCU', N'Turkey', CAST(N'1991-10-31 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (453, N'AATIF', N'CHAHECHOUHE', N'France', CAST(N'1986-07-02 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (454, N'BURHAN', N'EÞER', N'Turkey', CAST(N'1985-01-01 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (455, N'CICERO JOAO', N'DE CESARE', N'Italy', CAST(N'1980-06-24 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (456, N'ZÝYA', N'ERDAL', N'Turkey', CAST(N'1988-01-05 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (457, N'ÜMÝT', N'KURT', N'Turkey', CAST(N'1991-05-02 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (458, N'AYDIN', N'KARABULUT', N'Turkey', CAST(N'1988-01-25 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (459, N'KADÝR', N'BEKMEZCÝ', N'Turkey', CAST(N'1985-07-05 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (460, N'ADEM', N'KOÇAK', N'Turkey', CAST(N'1983-09-01 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (461, N'MANUEL MROUAN', N'DA COSTA TRINDADE', N'Portugal', CAST(N'1986-05-06 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (462, N'KORCAN', N'ÇELÝKAY', N'Turkey', CAST(N'1987-12-31 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (463, N'CHUKWUDI JOHN', N'UTAKA', N'Nigeria', CAST(N'1982-01-08 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (464, N'MEHDÝ TEWFÝK', N'TAOUIL', N'France', CAST(N'1983-05-20 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (465, N'HAKAN', N'ARSLAN', N'Turkey', CAST(N'1988-07-18 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (466, N'JAKUB', N'NAVRATIL', N'Czech Republic', CAST(N'1984-02-01 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (467, N'NÝHAT', N'ÞAHÝN', N'Turkey', CAST(N'1989-09-15 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (468, N'MAHMUT', N'BEZGÝN', N'Turkey', CAST(N'1986-03-01 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (469, N'CÝHAN', N'ÖZKARA', N'Turkey', CAST(N'1991-07-14 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (470, N'AYKUT', N'ÖZTÜRK', N'Turkey', CAST(N'1987-11-07 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (471, N'PEDRO HENRIQUE', N'OLDONI DO NASCIMENTO', N'Brazil', CAST(N'1985-09-26 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (472, N'FATÝH', N'KIRAN', N'Turkey', CAST(N'1993-03-26 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (473, N'EREN', N'AYDIN', N'Turkey', CAST(N'1982-01-16 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (474, N'AHMET', N'ÞAHBAZ', N'Turkey', CAST(N'1991-03-12 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (475, N'ABDURRAHMAN', N'DERELÝ', N'Turkey', CAST(N'1981-02-15 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (476, N'TÝMUR BAYRAM', N'ÖZGÖZ', N'Turkey', CAST(N'1987-05-29 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (477, N'NÝYAZÝ BATUHAN', N'SALMAN', N'Turkey', CAST(N'1994-02-23 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (478, N'CHARLES HUBERT', N'ITANDJE', N'France', CAST(N'1982-11-02 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (479, N'SELÝM', N'AY', N'Turkey', CAST(N'1991-07-31 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (480, N'ALÝ', N'ÇAMDALI', N'Turkey', CAST(N'1984-02-22 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (481, N'DJALMA BRAUNE MANUEL ABEL', N'CAMPOS', N'Angola', CAST(N'1987-05-30 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (482, N'THEOFANIS', N'GKEKAS', N'Greece', CAST(N'1980-05-23 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (483, N'HASAN SALÝH', N'KABZE', N'Turkey', CAST(N'1982-05-26 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (484, N'TOLGA', N'ÜNLÜ', N'Turkey', CAST(N'1989-09-10 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (485, N'MEHMET', N'GÜVEN', N'Turkey', CAST(N'1987-07-30 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (486, N'ALÝ', N'TURAN', N'Turkey', CAST(N'1983-09-06 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (487, N'ERGÜN', N'TEBER', N'Turkey', CAST(N'1985-09-01 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (488, N'MEHMET', N'USLU', N'Turkey', CAST(N'1988-02-25 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (489, N'TOMAS', N'BOREK', N'Czech Republic', CAST(N'1986-04-04 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (490, N'ALIAKSANDR', N'HLEB', N'Belarus', CAST(N'1981-05-01 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (491, N'ELVIS', N'KOKALOVIC', N'Croatia', CAST(N'1988-07-17 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (492, N'ERDAL', N'KILIÇASLAN', N'Turkey', CAST(N'1984-08-23 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (493, N'ERDÝNÇ', N'YAVUZ', N'Turkey', CAST(N'1978-10-04 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (494, N'RECEP', N'AYDIN', N'Turkey', CAST(N'1990-01-27 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (495, N'ÖMER ALÝ', N'ÞAHÝNER', N'Turkey', CAST(N'1992-01-02 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (496, N'MARC', N'KIBONG MBAMBA', N'Cameroon', CAST(N'1988-10-15 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (497, N'GUNNAR HEIDAR', N'THORVALDSSON', N'Iceland', CAST(N'1982-04-01 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (498, N'JAGOS', N'VUKOVIC', N'Serbia', CAST(N'1988-06-10 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (499, N'ÝSHAK', N'ÇAKMAK', N'Turkey', CAST(N'1992-11-20 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (500, N'KAYA', N'TARAKCI', N'Turkey', CAST(N'1981-04-23 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (501, N'OKAN', N'DERÝCÝ', N'Turkey', CAST(N'1993-04-16 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (502, N'AHMET SABRÝ', N'FENER', N'Turkey', CAST(N'1992-05-05 00:00:00' AS SmallDateTime), NULL, N'Goalkeeper')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (503, N'JOSEPH MICHAEL', N'YOBO', N'Nigeria', CAST(N'1980-09-06 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (504, N'SEMÝR ', N'STÝLÝC ', N'Bosnia and Herzegovina', CAST(N'1987-10-08 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (505, N'JAKSON AVELÝNO', N'COELHO', N'Brazil', CAST(N'1986-02-28 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (506, N'RAFÝK ', N'DJEBBOUR', N'France', CAST(N'1984-03-08 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (507, N'MÝLAN', N'BAROS', N'Czech Republic', CAST(N'1981-10-28 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (508, N'SERCAN', N'KAYA', N'Turkey', CAST(N'1988-03-15 00:00:00' AS SmallDateTime), NULL, N'Midfielder')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (509, N'DAVID ALBERTO', N'DEPETRÝS', N'Argentina', CAST(N'1988-11-11 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (510, N'ALFRED JOHN MOMAR', N'N''DÝAYE', N'France', CAST(N'1990-03-06 00:00:00' AS SmallDateTime), NULL, N'Defender')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (511, N'GÖKHAN ', N'ÜNAL', N'Turkey', CAST(N'1982-07-23 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (512, N'ARTEM VOLODÝMÝROVÝÇ', N'MÝLEVSKÝY', N'Russia', CAST(N'1985-01-12 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player] ([playerID], [firstName], [lastName], [nationality], [birthDate], [age], [position]) VALUES (513, N'SÝNAN', N'KALOÐLU', N'Turkey', CAST(N'1981-06-10 00:00:00' AS SmallDateTime), NULL, N'Forward')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (1, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (1, 4, N'12-13')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (2, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (3, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (4, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (5, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (6, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (7, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (8, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (9, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (10, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (11, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (12, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (13, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (14, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (15, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (16, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (17, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (18, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (18, 11, N'09-10')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (18, 11, N'10-11')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (19, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (20, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (21, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (22, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (23, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (24, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (25, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (26, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (27, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (28, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (29, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (29, 10, N'03-04')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (30, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (31, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (32, 1, N'12-13')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (32, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (32, 2, N'10-11')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (32, 2, N'11-12')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (33, 1, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (34, 2, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (35, 2, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (36, 2, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (37, 2, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (38, 2, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (39, 2, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (39, 3, N'09-10')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (40, 2, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (41, 2, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (42, 1, N'11-12')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (42, 2, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (42, 4, N'10-11')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (42, 6, N'07-08')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (43, 2, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (44, 2, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (45, 2, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (46, 2, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (47, 2, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (48, 2, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (49, 2, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (49, 15, N'08-09')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (50, 2, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (51, 2, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (52, 2, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (53, 2, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (54, 2, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (55, 2, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (56, 2, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (57, 2, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (58, 2, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (59, 2, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (60, 2, N'09-10')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (60, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (60, 4, N'10-11')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (60, 9, N'09-10')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (61, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (62, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (63, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (64, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (65, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (66, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (67, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (68, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (69, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (70, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (71, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (72, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (72, 13, N'10-11')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (73, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (73, 4, N'10-11')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (74, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (75, 1, N'08-09')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (75, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (76, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (77, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (78, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (79, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (80, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (81, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (82, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (82, 4, N'10-11')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (83, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (84, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (85, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (86, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (87, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (88, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (89, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (90, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (91, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (92, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (93, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (94, 3, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (95, 2, N'07-08')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (95, 4, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (95, 10, N'11-12')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (96, 4, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (97, 4, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (98, 4, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (99, 4, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (100, 4, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (101, 4, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (102, 4, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (103, 4, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (104, 4, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (105, 4, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (106, 4, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (107, 4, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (108, 4, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (109, 4, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (110, 4, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (111, 4, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (112, 4, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (113, 4, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (114, 4, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (115, 4, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (116, 4, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (117, 4, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (118, 4, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (119, 4, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (120, 4, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (121, 5, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (122, 5, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (123, 5, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (124, 5, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (125, 5, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (126, 5, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (127, 5, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (128, 5, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (129, 5, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (129, 12, N'11-12')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (129, 12, N'12-13')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (130, 5, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (131, 5, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (132, 5, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (133, 5, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (134, 5, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (135, 5, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (136, 5, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (137, 5, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (138, 5, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (139, 5, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (140, 5, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (141, 5, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (142, 5, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (143, 5, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (144, 5, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (145, 5, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (146, 5, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (147, 5, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (148, 5, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (149, 5, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (150, 5, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (151, 5, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (152, 6, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (153, 6, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (154, 6, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (155, 6, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (156, 6, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (157, 6, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (158, 6, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (159, 6, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (160, 6, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (161, 6, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (162, 6, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (163, 6, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (164, 6, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (165, 6, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (166, 6, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (167, 6, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (168, 6, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (169, 6, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (170, 6, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (171, 6, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (172, 6, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (173, 6, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (174, 6, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (175, 6, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (176, 6, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (177, 6, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (178, 6, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (179, 6, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (180, 6, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (181, 6, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (182, 6, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (183, 7, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (184, 7, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (185, 7, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (186, 7, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (187, 7, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (188, 7, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (189, 7, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (190, 7, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (191, 7, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (192, 7, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (193, 7, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (194, 7, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (195, 7, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (196, 7, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (197, 7, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (198, 7, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (199, 7, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (200, 7, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (201, 7, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (202, 7, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (203, 7, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (204, 7, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (205, 7, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (206, 7, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (207, 7, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (208, 7, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (209, 7, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (210, 7, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (211, 8, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (212, 8, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (213, 8, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (214, 8, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (215, 8, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (216, 8, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (217, 8, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (218, 8, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (219, 8, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (220, 8, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (221, 8, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (222, 8, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (223, 8, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (224, 8, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (225, 8, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (226, 8, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (227, 8, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (228, 8, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (229, 8, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (230, 8, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (231, 8, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (232, 8, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (233, 8, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (234, 8, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (235, 8, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (236, 8, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (237, 8, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (238, 8, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (239, 8, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (240, 9, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (241, 9, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (242, 9, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (243, 9, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (244, 9, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (245, 9, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (246, 9, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (247, 9, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (248, 9, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (249, 9, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (250, 9, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (251, 9, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (252, 9, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (253, 9, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (254, 9, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (255, 9, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (256, 9, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (257, 9, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (258, 9, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (259, 9, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (260, 9, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (261, 9, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (262, 9, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (263, 9, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (264, 9, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (265, 9, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (266, 9, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (267, 10, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (268, 10, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (269, 10, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (270, 10, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (271, 10, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (272, 10, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (273, 10, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (274, 10, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (275, 10, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (276, 10, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (277, 10, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (278, 10, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (279, 10, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (280, 10, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (281, 10, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (282, 10, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (283, 10, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (284, 10, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (285, 10, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (286, 10, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (287, 10, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (288, 10, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (289, 10, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (290, 10, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (291, 10, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (292, 10, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (293, 11, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (294, 11, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (295, 11, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (296, 11, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (297, 11, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (298, 11, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (299, 11, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (300, 11, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (301, 11, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (302, 11, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (303, 11, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (304, 11, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (305, 11, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (306, 11, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (307, 11, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (308, 11, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (309, 11, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (310, 11, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (311, 11, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (312, 11, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (313, 11, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (314, 11, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (315, 11, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (316, 11, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (317, 11, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (318, 11, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (319, 12, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (320, 12, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (321, 12, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (322, 12, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (323, 12, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (324, 12, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (325, 12, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (326, 12, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (327, 12, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (328, 12, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (329, 12, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (330, 12, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (331, 12, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (332, 12, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (333, 12, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (334, 12, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (335, 12, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (336, 12, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (337, 12, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (338, 12, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (339, 12, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (340, 12, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (341, 12, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (342, 12, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (343, 12, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (344, 12, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (345, 12, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (346, 13, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (347, 13, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (348, 13, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (349, 13, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (350, 13, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (351, 13, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (352, 13, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (353, 13, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (354, 13, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (355, 13, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (356, 13, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (357, 13, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (358, 13, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (359, 13, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (360, 13, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (361, 13, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (362, 13, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (363, 13, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (364, 13, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (365, 13, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (366, 13, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (367, 13, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (368, 13, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (369, 13, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (370, 14, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (371, 14, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (372, 14, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (373, 14, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (374, 14, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (375, 14, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (376, 14, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (377, 14, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (378, 14, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (379, 14, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (380, 14, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (381, 14, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (382, 14, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (383, 14, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (384, 14, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (385, 14, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (386, 14, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (387, 14, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (388, 14, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (389, 14, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (390, 14, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (391, 14, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (392, 14, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (393, 14, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (394, 14, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (395, 14, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (396, 14, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (397, 14, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (398, 15, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (399, 15, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (400, 15, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (401, 15, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (402, 15, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (403, 15, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (404, 15, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (405, 15, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (406, 15, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (407, 15, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (408, 15, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (409, 15, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (410, 15, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (411, 15, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (412, 15, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (413, 15, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (414, 15, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (415, 15, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (416, 15, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (417, 15, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (418, 15, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (419, 15, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (420, 15, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (421, 15, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (422, 15, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (423, 15, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (424, 15, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (425, 16, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (426, 16, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (427, 16, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (428, 16, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (429, 16, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (430, 16, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (431, 16, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (432, 16, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (433, 16, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (434, 16, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (435, 16, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (436, 16, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (437, 16, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (438, 16, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (439, 16, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (440, 16, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (441, 16, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (442, 16, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (443, 16, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (444, 16, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (445, 16, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (446, 16, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (447, 16, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (448, 16, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (449, 16, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (450, 16, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (451, 16, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (452, 16, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (453, 17, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (454, 17, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (455, 17, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (456, 17, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (457, 17, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (458, 17, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (459, 17, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (460, 17, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (461, 17, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (462, 17, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (463, 17, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (464, 17, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (465, 17, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (466, 17, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (467, 17, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (468, 17, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (469, 17, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (470, 17, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (471, 17, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (472, 17, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (473, 17, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (474, 17, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (475, 17, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (476, 17, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (477, 17, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (478, 18, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (479, 18, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (480, 18, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (481, 18, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (482, 18, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (483, 18, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (484, 18, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (485, 18, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (486, 18, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (487, 18, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (488, 18, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (489, 18, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (490, 18, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (491, 18, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (492, 18, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (493, 18, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (494, 18, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (495, 18, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (496, 18, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (497, 18, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (498, 18, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (499, 18, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (500, 18, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (501, 18, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (502, 18, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (503, 2, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (504, 10, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (505, 4, N'10-11')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (505, 15, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (506, 3, N'08-09')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (506, 16, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (507, 7, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (508, 4, N'11-12')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (508, 7, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (509, 7, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (510, 9, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (511, 2, N'10-11')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (511, 4, N'08-09')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (511, 11, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (512, 10, N'13-14')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (513, 1, N'03-04')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (513, 6, N'06-07')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (513, 6, N'07-08')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (513, 8, N'12-13')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (513, 12, N'11-12')
GO
INSERT [dbo].[player_team] ([playerID], [teamID], [season]) VALUES (513, 14, N'13-14')
GO
INSERT [dbo].[team] ([teamID], [name], [city]) VALUES (1, N'Beþiktaþ', N'Ýstanbul')
GO
INSERT [dbo].[team] ([teamID], [name], [city]) VALUES (2, N'Fenerbahçe', N'Ýstanbul')
GO
INSERT [dbo].[team] ([teamID], [name], [city]) VALUES (3, N'Galatasaray', N'Ýstanbul')
GO
INSERT [dbo].[team] ([teamID], [name], [city]) VALUES (4, N'Trabzonspor', N'Trabzon')
GO
INSERT [dbo].[team] ([teamID], [name], [city]) VALUES (5, N'Akhisar Belediye', N'Manisa')
GO
INSERT [dbo].[team] ([teamID], [name], [city]) VALUES (6, N'Bursaspor', N'Bursa')
GO
INSERT [dbo].[team] ([teamID], [name], [city]) VALUES (7, N'Çaykur Rizespor', N'Rize')
GO
INSERT [dbo].[team] ([teamID], [name], [city]) VALUES (8, N'Elazýðspor', N'Elazýð')
GO
INSERT [dbo].[team] ([teamID], [name], [city]) VALUES (9, N'Eskiþehirspor', N'Eskiþehir')
GO
INSERT [dbo].[team] ([teamID], [name], [city]) VALUES (10, N'Gaziantepspor', N'Gaziantep')
GO
INSERT [dbo].[team] ([teamID], [name], [city]) VALUES (11, N'Gençlerbirliði', N'Ankara')
GO
INSERT [dbo].[team] ([teamID], [name], [city]) VALUES (12, N'Kardemir Karabükspor', N'Karabük')
GO
INSERT [dbo].[team] ([teamID], [name], [city]) VALUES (13, N'Kasýmpaþa', N'Ýstanbul')
GO
INSERT [dbo].[team] ([teamID], [name], [city]) VALUES (14, N'Kayseri Erciyesspor', N'Kayseri')
GO
INSERT [dbo].[team] ([teamID], [name], [city]) VALUES (15, N'Kayserispor', N'Kayseri')
GO
INSERT [dbo].[team] ([teamID], [name], [city]) VALUES (16, N'Medical Park Antalyaspor', N'Antalya')
GO
INSERT [dbo].[team] ([teamID], [name], [city]) VALUES (17, N'Sivasspor', N'Sivas')
GO
INSERT [dbo].[team] ([teamID], [name], [city]) VALUES (18, N'Torku Konyaspor', N'Konya')
GO
ALTER TABLE [dbo].[goals]  WITH CHECK ADD  CONSTRAINT [FK_goals_match] FOREIGN KEY([matchID])
REFERENCES [dbo].[match] ([matchID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[goals] CHECK CONSTRAINT [FK_goals_match]
GO
ALTER TABLE [dbo].[goals]  WITH CHECK ADD  CONSTRAINT [FK_goals_player] FOREIGN KEY([playerID])
REFERENCES [dbo].[player] ([playerID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[goals] CHECK CONSTRAINT [FK_goals_player]
GO
ALTER TABLE [dbo].[match]  WITH CHECK ADD  CONSTRAINT [FK_match_team] FOREIGN KEY([homeTeamID])
REFERENCES [dbo].[team] ([teamID])
GO
ALTER TABLE [dbo].[match] CHECK CONSTRAINT [FK_match_team]
GO
ALTER TABLE [dbo].[match]  WITH CHECK ADD  CONSTRAINT [FK_match_team1] FOREIGN KEY([visitingTeamID])
REFERENCES [dbo].[team] ([teamID])
GO
ALTER TABLE [dbo].[match] CHECK CONSTRAINT [FK_match_team1]
GO
ALTER TABLE [dbo].[player_team]  WITH CHECK ADD  CONSTRAINT [FK_player-team_player] FOREIGN KEY([playerID])
REFERENCES [dbo].[player] ([playerID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[player_team] CHECK CONSTRAINT [FK_player-team_player]
GO
ALTER TABLE [dbo].[player_team]  WITH CHECK ADD  CONSTRAINT [FK_player-team_team] FOREIGN KEY([teamID])
REFERENCES [dbo].[team] ([teamID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[player_team] CHECK CONSTRAINT [FK_player-team_team]
GO
USE [master]
GO
ALTER DATABASE [TurkishSuperLeague] SET  READ_WRITE 
GO
