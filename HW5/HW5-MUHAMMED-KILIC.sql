-- Database Systems
-- 150115048 -Muhammed Kılıç



create table triggerHW5 ( logID int identity(1,1) primary key,logTime datetime, logType char(1),
beforeState nvarchar(500),afterState nvarchar(500),);
go
create trigger trg_rearrange on goals
after insert,update,delete as
begin 
if @@ROWCOUNT=0
	return;
	declare @logType char(1);
	declare @beforestate nvarchar(500);
	declare @afterstate  nvarchar(500);

	if exists(select * from deleted)
		begin
		   if exists(select * from inserted)
		     begin
		       set @logType='U';
			   select @afterstate=Convert( nvarchar(50),i.matchID)+';'+convert(nvarchar(50),i.playerID)+';'+convert(nvarchar(1),i.isOwnGoal)+';'+convert(nvarchar(50),i.minute)+'''' from inserted i;    
			   select @beforestate= convert(nvarchar(50),d.matchID)+';'+convert(nvarchar(50),d.playerID)+';'+convert(nvarchar(1),d.isOwnGoal)+';'+convert(nvarchar(50),d.minute)+''''  from deleted d;
			   end
		  else 
		      begin
		       set @logType='D';
			   select @beforestate= convert(nvarchar(50),d.matchID)+';'+convert(nvarchar(50),d.playerID)+';'+convert(nvarchar(1),d.isOwnGoal)+';'+convert(nvarchar(50),d.minute)+''''  from deleted d;
			   end
		end
		else
			begin
			set @logType='I';
			select @afterstate=Convert( nvarchar(50),i.matchID)+';'+convert(nvarchar(50),i.playerID)+';'+convert(nvarchar(1),i.isOwnGoal)+';'+convert(nvarchar(50),i.minute)+''''  from inserted i;    
            end

			insert into transactionLog(logTime,logType,beforeState,afterState)
						values(GETDATE(),@logType,@beforestate,@afterstate)
		end
		
		go
