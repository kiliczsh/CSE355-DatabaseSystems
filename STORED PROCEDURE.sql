------> FIRST STORED PROCEDURE <------
CREATE PROC numberOfAwardFILM
(
	@awardNumber int
	--@numberOfStudents int OUTPUT,
	--@timeConsumed int OUTPUT
)	
AS
Begin

select FILM_AWARD.Movie_ID,MOVIE.Movie_Name,Count(FILM_AWARD.Award_ID) as Award_Counter from FILM_AWARD 
join MOVIE
on FILM_AWARD.Movie_ID = MOVIE.Movie_ID
group by FILM_AWARD.Movie_ID,MOVIE.Movie_Name
HAVING COUNT(FILM_AWARD.Award_ID) >= @awardNumber

End

exec numberOfAwardFILM  2;
------> FIRST STORED PROCEDURE <------


------> SECOND STORED PROCEDURE <------
CREATE PROC OdulluFilmEkle
(
	@awardName nvarchar(50),
	@add_Movie_Name nvarchar(50),
	@add_Category_ID int,
	@add_Cast_ID int
)	
AS

declare
	@awardID int,
	@movieID int

Begin
	IF EXISTS(select * from AWARD where AWARD.Award_Name = @awardName)
	begin
		select @awardID = AWARD.Award_ID from AWARD where AWARD.Award_Name = @awardName		
	end
	ELSE
	begin
		select('eklemeye calisitigniz odul yoktu fakat biz odul tablosuna ekledik ve listen i olusturduk')
		insert INTO AWARD(Award_Name) values(@awardName)
		select @awardID = AWARD.Award_ID from AWARD where AWARD.Award_Name = @awardName		

	end

	insert INTO MOVIE(Movie_Name,Category_ID,Cast_ID) values( @add_Movie_Name,@add_Category_ID,@add_Cast_ID)
	select @movieID = MOVIE.Movie_ID from MOVIE where MOVIE.Movie_Name = @add_Movie_Name
	insert INTO FILM_AWARD(Movie_ID,Award_ID) values (@movieID,@awardID)
End

exec OdulluFilmEkle 'Cumali Oduller','^. his',2,2
select * from MOVIE
select * from AWARD
select * from FILM_AWARD
------> SECOND STORED PROCEDURE <------


------> THIRD STORED PROCEDURE <------
CREATE PROC birKullaniciSilindigindeIzledigiveizlemedigifilmeribosalt
(
	@delete_User_ID int
)	
AS

begin
	IF EXISTS(select * from WATCHED where WATCHED.User_ID = @delete_User_ID)
	begin
		DELETE FROM WATCHED where WATCHED.User_ID = @delete_User_ID
	end

	IF EXISTS(select * from WILL_WATCH where WILL_WATCH.User_ID = @delete_User_ID)
	begin
		DELETE FROM WILL_WATCH where WILL_WATCH.User_ID = @delete_User_ID
	end
	
	DELETE FROM [USER] where [USER].User_Id = @delete_User_ID

end

EXEC birKullaniciSilindigindeIzledigiveizlemedigifilmeribosalt 13
select * from [WATCHED]
select * from [WILL_WATCH]
SELECT * FROM [USER]

------> THIRD STORED PROCEDURE <------



------> FOURTH STORED PROCEDURE <------
CREATE PROC CastIleFilmEkleme
(
	@directorName nvarchar(50),
	@writerName nvarchar(50),
	@producerName nvarchar(50),

	@movieName nvarchar(50),
	@categoryID int
)	
AS

declare 
	@castID int


Begin
	
	IF EXISTS(select * from [CAST] where [CAST].Director = @directorName AND [CAST].Producer = @producerName AND [CAST].Writer =@writerName )
	begin
		select @castID = [CAST].Cast_ID from [CAST] where [CAST].Director = @directorName AND [CAST].Producer = @producerName AND [CAST].Writer =@writerName
	end

	else
	begin
		insert into [CAST](Director,Writer,Producer) values(@directorName,@writerName,@producerName)
		select @castID = [CAST].Cast_ID from [CAST] where [CAST].Director = @directorName AND [CAST].Producer = @producerName AND [CAST].Writer =@writerName 
	end

	insert into MOVIE(Movie_Name,Category_ID,Cast_ID) values(@movieName,@categoryID,@castID)
End

exec CastIleFilmEkleme 'Mehmet','Cumali','Demir','Demir Film',3
select * from [CAST]
select * from Movie
------> FOURTH STORED PROCEDURE <------




