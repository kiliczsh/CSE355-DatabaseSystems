------> FIRST STORED PROCEDURE <------
CREATE PROC numberOfAwardFilm
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

EXEC numberOfAwardFilm  2;
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

EXEC OdulluFilmEkle 'Cumali Oduller','6. his',2,2
SELECT * FROM MOVIE
SELECT * FROM AWARD
SELECT * FROM FILM_AWARD
------> SECOND STORED PROCEDURE <------


------> THIRD STORED PROCEDURE <------
CREATE PROC birKullaniciSilindigindeIzledigiveizlemedigifilmeribosalt
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

EXEC birKullaniciSilindigindeIzledigiveizlemedigifilmeribosalt 13
SELECT * FROM [WATCHED]
SELECT * FROM [WILL_WATCH]
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

EXEC CastIleFilmEkleme 'Mehmet','Cumali','Demir','Demir Film',3
SELECT * FROM [CAST]
SELECT * FROM Movie
------> FOURTH STORED PROCEDURE <------




