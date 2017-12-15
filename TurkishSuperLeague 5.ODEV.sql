create TRIGGER trg_rearrange ON goals
AFTER DELETE, UPDATE, INSERT
AS 
BEGIN
declare

	@match_ID_old int,
	@playerID_old int,
	@isOwnGoal_old bit,
	@minute_old tinyint,
	@temp_old nvarchar(500),

	@match_ID int,
	@playerID int,
	@isOwnGoal bit,
	@minute tinyint,
	@temp nvarchar(500)

	IF EXISTS(select * from inserted) AND NOT EXISTS(select * from deleted)
	Begin
		select @match_ID = matchID from inserted
		select @playerID = playerID from inserted
		select @isOwnGoal = isOwnGoal from inserted
		select @minute = minute from inserted
		select @temp = CAST(@match_ID as nvarchar(500)) + ';' + CAST(@playerID as nvarchar(500)) + ';' + CAST(@isOwnGoal as nvarchar(500)) + ';' + CAST(@minute as nvarchar(500))
		--select (@temp)
		INSERT INTO transactionLog(logTime,logType,beforeState,afterState) values(GETDATE(),'I',NULL,@temp)
		
	End

	ELSE IF EXISTS(select * from deleted) AND NOT EXISTS(select * from inserted)
	Begin
		select @match_ID = matchID from deleted
		select @playerID = playerID from deleted
		select @isOwnGoal = isOwnGoal from deleted
		select @minute = minute from deleted
		select @temp = CAST(@match_ID as nvarchar(500)) + ';' + CAST(@playerID as nvarchar(500)) + ';' + CAST(@isOwnGoal as nvarchar(500)) + ';' + CAST(@minute as nvarchar(500))

		INSERT INTO transactionLog(logTime,logType,beforeState,afterState) values(GETDATE(),'D',@temp,NULL)
		

	End

	ELSE IF EXISTS(select * from deleted) AND EXISTS(select * from inserted)
	Begin
		select @match_ID_old = matchID from deleted
		select @playerID_old = playerID from deleted
		select @isOwnGoal_old = isOwnGoal from deleted
		select @minute_old = minute from deleted
		select @temp_old = CAST(@match_ID_old as nvarchar(500)) + ';' + CAST(@playerID_old as nvarchar(500)) + ';' + CAST(@isOwnGoal_old as nvarchar(500)) + ';' + CAST(@minute_old as nvarchar(500))
		
		select @match_ID = matchID from inserted
		select @playerID = playerID from inserted
		select @isOwnGoal = isOwnGoal from inserted
		select @minute = minute from inserted
		select @temp = CAST(@match_ID as nvarchar(500)) + ';' + CAST(@playerID as nvarchar(500)) + ';' + CAST(@isOwnGoal as nvarchar(500)) + ';' + CAST(@minute as nvarchar(500))
		INSERT INTO transactionLog(logTime,logType,beforeState,afterState) values(GETDATE(),'U',@temp_old,@temp)

	End


END

delete from goals where matchID = 305

INSERT INTO goals(matchID,playerID,isOwnGoal,minute) values (305,483,0,59)

UPDATE goals
SET matchID =  306, playerID = 484,isOwnGoal = 1,minute = 60
WHERE matchID = 305 AND playerID = 483 AND isOwnGoal = 0 AND minute= 59;

delete from goals where matchID = 306

select * from goals
select * from transactionLog


 CREATE VIEW playerTeam_V
 AS
 select player.firstName,player.lastName, team.name as Team_Name
  from player_team
  join player
  on player.playerID = player_team.playerID
  join team
  on player_team.teamID = team.teamID
 
 
 select firstName, lastName,  count(DISTINCT Team_Name) as Total_Num_Of_Dist_Team from playerTeam_V 
 group by firstName, lastName
 order by firstName,lastName asc




