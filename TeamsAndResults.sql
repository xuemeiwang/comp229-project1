CREATE TABLE [dbo].[Teams](
	[TeamID] [int] IDENTITY (100, 1) NOT NULL,
	[TeamName] [varchar](50) NOT NULL,
	[TeamDescription] [varchar](500) NOT NULL,
	[GameID] [int] NOT NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[TeamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY];

CREATE TABLE [dbo].[Results](
	[GameID] [int] NOT NULL,
	[WeekNumber] [int] NOT NULL,
	[TeamID1] [int] NOT NULL,
	[TeamScore1] [int] NOT NULL,
	[TeamID2] [int] NOT NULL,
	[TeamScore2] [int] NOT NULL,
	[Spectator] [int] NOT NULL,
 CONSTRAINT [PK_Results] PRIMARY KEY (GameID, WeekNumber) 
);

CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY (100, 1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY];


INSERT INTO Teams (TeamName, TeamDescription, GameID) VALUES ('Arsenal', 'Victory Grows Through Harmony', 1);
INSERT INTO Teams (TeamName, TeamDescription, GameID) VALUES ('Bournemouth', 'Beauty And Healyh',1);
INSERT INTO Teams (TeamName, TeamDescription, GameID) VALUES ('Burnley','The Price Is The Cost Of Our Labours',2);
INSERT INTO Teams (TeamName, TeamDescription, GameID) VALUES ('Chelsea','Keep The Blue Flag Flying High',2);
INSERT INTO Teams (TeamName, TeamDescription, GameID) VALUES ('Crystal_Palace','Fly As Eagle',3);
INSERT INTO Teams (TeamName, TeamDescription, GameID) VALUES ('Everton','Nothing But The Best Is Good Enough',3);
INSERT INTO Teams (TeamName, TeamDescription, GameID) VALUES ('Hull_City','We Are Back',4);
INSERT INTO Teams (TeamName, TeamDescription, GameID) VALUES ('Leicester_City','Foxes Never Quit',4);


INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (1,1,100,2,101,1,50000);
INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (1,2,100,2,101,3,51000);
INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (1,3,100,2,101,2,52000);
INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (1,4,100,4,101,1,53000);

INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (2,1,102,2,103,3,50000);
INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (2,2,102,3,103,3,51000);
INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (2,3,102,4,103,2,52000);
INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (2,4,102,4,103,3,53000);

INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (3,1,104,2,105,2,50000);
INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (3,2,104,4,105,3,51000);
INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (3,3,104,2,105,2,52000);
INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (3,4,104,4,105,5,53000);

INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (4,1,106,2,107,4,50000);
INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (4,2,106,5,107,3,51000);
INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (4,3,106,2,107,1,52000);
INSERT INTO Results (GameID, WeekNumber, TeamID1, TeamScore1, TeamID2, TeamScore2, Spectator)
 VALUES (4,4,106,4,107,4,53000);