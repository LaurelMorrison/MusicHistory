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

*/
