﻿/* 

1. Query all of the entries in the Genre table

SELECT * FROM Genre;

2. Query all the entries in the Artist table and order by the artist's name. HINT: use the ORDER BY keywords

Select * from Artist order by ArtistName;

3. Write a SELECT query that lists all the songs in the Song table and include the Artist name

SELECT s.*,
       a.ArtistName
  FROM Song s
       LEFT JOIN Artist a on s.ArtistId = a.id;

4. Write a SELECT query that lists all the Artists that have a Pop Album

Write a SELECT query that lists all the Artists that have a Pop Album

SELECT a.ArtistName, g.Name, b.title
From Album b
Left Join Artist a on b.ArtistId = a.id
left join Genre g on b.GenreId = g.id
where name = 'rock';
*/