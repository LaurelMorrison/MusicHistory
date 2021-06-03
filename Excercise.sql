/* 
1. Query all of the entries in the Genre table

SELECT * FROM Genre;

-------------------------------------------------
2. Query all the entries in the Artist table and order by the artist's name. HINT: use the ORDER BY keywords

Select * from Artist order by ArtistName;

-------------------------------------------------
3. Write a SELECT query that lists all the songs in the Song table and include the Artist name

SELECT s.*,
       a.ArtistName
  FROM Song s
       LEFT JOIN Artist a on s.ArtistId = a.id;

-------------------------------------------------
4. Write a SELECT query that lists all the Artists that have a Pop Album

SELECT a.ArtistName, g.Name, b.title
From Album b
Left Join Artist a on b.ArtistId = a.id
left join Genre g on b.GenreId = g.id
where name = 'rock';

-------------------------------------------------
5. Write a SELECT query that lists all the Artists that have a Jazz or Rock Album

SELECT a.ArtistName, g.Name, b.title
From Album b
Left Join Artist a on b.ArtistId = a.id
left join Genre g on b.GenreId = g.id
where name= 'rock' OR  name ='jazz'

-------------------------------------------------
6. Write a SELECT statement that lists the Albums with no songs

SELECT b.title
From Album b
left join Song s on s.AlbumId = b.id 
where s.AlbumId IS NULL

-------------------------------------------------
7. Using the INSERT statement, add one of your favorite artists to the Artist table.

Insert into Artist (ArtistName, YearEstablished) Values ('Fleetwood Mac', 2021);

-------------------------------------------------
8. Using the INSERT statement, add one, or more, albums by your artist to the Album table.

Select * from Artist
Select * from Genre
Select * from Album

Insert into Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) Values ('Rumors', 1977, 18, 'Studio Album', 29, 2);

-------------------------------------------------
9. Using the INSERT statement, add some songs that are on that album to the Song table.

Select * from Artist
Select * from Genre
Select * from Album
Select * from song

Insert into Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) values ('Go your own way', 334, '12/21/1977', 2, 29, 23);

-------------------------------------------------
10. Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.

SELECT b.Title, s.Title, a.ArtistName 
FROM Album b 
LEFT JOIN Song s ON s.AlbumId = b.Id
LEFT JOIN Artist a ON a.id = b.ArtistId
where ArtistName = 'fleetwood mac';

-------------------------------------------------
11. Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

SELECT b.Title, b.Id, count(s.title) '# of songs'
FROM Album b 
left JOIN Song s ON s.AlbumId = b.Id
Group by b.title, b.id 

-------------------------------------------------
12. Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

SELECT a.ArtistName, a.Id, count(s.title) '# of songs'
FROM Artist a 
left JOIN Song s ON s.ArtistId = a.Id
Group by a.ArtistName, a.id 

-------------------------------------------------
13. Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

SELECT g.Name, g.Id, count(s.title) '# of songs'
FROM Genre g 
left JOIN Song s ON s.GenreId = g.Id
Group by g.Name, g.id 

-------------------------------------------------
14. Write a SELECT query that lists the Artists that have put out records on more than one record label. Hint: When using GROUP BY instead of using a WHERE clause, use the HAVING keyword
*/

