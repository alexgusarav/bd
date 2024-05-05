--Длинный трек
SELECT name_track, duration  
FROM track
WHERE duration = (SELECT MAX(duration) FROM track);

--треки не менее 3,5 минут
SELECT name_track
FROM track
WHERE duration >= 210;

--сборники в период с 2018 по 2020
SELECT name_collection 
FROM collection
WHERE year_collection BETWEEN 2018 AND 2020;

--исполнители с именем из одного слова
SELECT name_performer 
FROM performer
WHERE name_performer NOT LIKE '% %';

--треки с названием 'мой' или 'my'
SELECT name_track 
FROM track
WHERE UPPER(name_track) LIKE '%MY%' OR UPPER(name_track) LIKE '%МОЙ%';

--колличество исполнителей в каждом жанре
SELECT name_genre, COUNT(g.id_genre) FROM genreperformer g 
JOIN genre g2 ON g2.id_genre = g.id_genre  
GROUP BY name_genre;

--количество треков в альбомах 2019-2020
SELECT COUNT(id_track) FROM track t 
JOIN album a ON t.id_album = a.id_album 
WHERE a.year_album BETWEEN 2019 AND 2020;

--средняя продолжительность треков по каждому альбому
SELECT name_album, AVG(duration) FROM track t 
JOIN album a ON a.id_album = t.id_album 
GROUP BY name_album;

--исполнители, которые не выпустили альбом в 2020
SELECT name_performer FROM performer p 
JOIN performeralbum p2 ON p.id_performer = p2.id_performer 
JOIN album a ON p2.id_album = a.id_album 
WHERE a.year_album != 2020;

--название сборника где есть исполнитель igor
SELECT DISTINCT name_collection FROM collection c 
JOIN structure_collection sc ON c.id_collection = sc.id_collection 
JOIN track t ON sc.id_track = t.id_track 
JOIN album a ON t.id_album = a.id_album 
JOIN performeralbum p ON a.id_album = p.id_album 
JOIN performer p2 ON p.id_performer = p2.id_performer 
WHERE p2.name_performer = 'Igor';
