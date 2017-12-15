-------> FIRST VIEW <------- 
-- View Table 1: Statistics for each category number of users who are over 18 and willing to watch.

CREATE VIEW viewTable1 AS
SELECT m.Category_ID "Category ID", COUNT( ww.User_ID) "Willing to Watch" , AVG(u.User_Age) "Average Age"
FROM MOVIE m, WILL_WATCH ww, [USER] u
WHERE ww.Movie_ID= m.Movie_ID AND ww.User_ID= u.User_ID AND u.User_Age > 18 
GROUP BY m.Category_ID

-------> FIRST VIEW <------- 



-------> SECOND VIEW <------- 

-- View Table 2: Movies in a category(11) that has more than two followers and earned two awards.

CREATE VIEW viewTable2 AS
SELECT  m.Movie_Name "Movie Name",m.Category_ID Category ,COUNT(DISTINCT fm.Award_ID) Awards, COUNT( w.User_ID) Follower
FROM MOVIE m, FILM_AWARD fm , WATCHED w, [USER] u
WHERE fm.Movie_ID = m.Movie_ID AND w.Movie_ID= m.Movie_ID AND w.User_ID= u.User_ID AND m.Category_ID=11
GROUP BY m.Movie_Name, w.Movie_ID , m.Category_ID
HAVING COUNT(DISTINCT fm.Award_ID) >= 2 AND COUNT( w.User_ID) >= 2
-------> SECOND VIEW <------- 




-------> THIRD VIEW <------- 
-- 	View Table 3: Other movies seen by a user that have been watched and have same director in cast. 
CREATE  VIEW viewTable3 as
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
-------> THIRD VIEW <------- 


select * from MOVIE



-------> FOURTH VIEW <------- 
-- View Table 4: Movies a user watched with less than 2 awards except who watched movies with more than 2 awards.
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
-------> FOURTH VIEW <------- 