--INDEX


create index IX_USER_Age
on [dbo].[USER]  (User_Age)


--TRIGGER 1

CREATE TRIGGER trg_IsExistsInWill_Watch ON WATCHED
INSTEAD OF INSERT
AS 
BEGIN
 
	DECLARE @UID as int;
  DECLARE @MID as int;
  select @UID=User_ID from inserted;
   select @MID=Movie_ID from inserted;
	IF EXISTS(SELECT WILL_WATCH.User_Id, WILL_WATCH.Movie_ID FROM WILL_WATCH WHERE WILL_WATCH.User_Id = @UID AND WILL_WATCH.Movie_ID = @MID )
	BEGIN
			select ('There is a record that User_Id: ' + convert(nvarchar(10),@UID) +' and Movie_ID: ' + convert(nvarchar(10),@MID) + ' is exist In WILL_WATCH TABLE So you can not add this record')
	END

	ELSE
		BEGIN
			INSERT INTO WATCHED VALUES(@UID,@MID);	
		END
END



--TRIGGER 2
CREATE TRIGGER trg_IsExistsInWatched ON WILL_WATCH
INSTEAD OF INSERT
AS 
BEGIN
 
	DECLARE @UID as int;
  DECLARE @MID as int;
  select @UID=User_ID from inserted;
   select @MID=Movie_ID from inserted;
	IF EXISTS(SELECT WATCHED.User_Id, WATCHED.Movie_ID FROM WATCHED WHERE WATCHED.User_Id = @UID AND WATCHED.Movie_ID = @MID )
	BEGIN
			select ('There is a record that User_Id: ' + convert(nvarchar(10),@UID) + ' and Movie_ID' + convert(nvarchar(10),@MID) + ' is exist In WATCH TABLE So you can not add this record')
	END

	ELSE
		BEGIN
			INSERT INTO WILL_WATCH VALUES(@UID,@MID);	
		END
END





