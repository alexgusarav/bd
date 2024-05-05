INSERT INTO genre(name_genre)
VALUES ('pop');

INSERT INTO genre(name_genre)
VALUES ('rock');

INSERT INTO genre(name_genre)
VALUES ('chanson');

INSERT INTO performer(name_performer)
VALUES ('Ivan Ivanov');

INSERT INTO performer(name_performer)
VALUES ('Petr Petrov');

INSERT INTO performer(name_performer)
VALUES ('Igor');

INSERT INTO performer(name_performer)
VALUES ('Denis');

INSERT INTO album(name_album, year_album)
VALUES ('Red', 2018);

INSERT INTO album(name_album, year_album)
VALUES ('Blue', 2017);

INSERT INTO album(name_album, year_album)
VALUES ('Black', 2020);

INSERT INTO track(name_track, duration, id_album)
VALUES ('My rools', 215, 1);

INSERT INTO track(name_track, duration, id_album)
VALUES ('Мой город', 220, 1);

INSERT INTO track(name_track, duration, id_album)
VALUES ('Prestige', 180, 2);

INSERT INTO track(name_track, duration, id_album)
VALUES ('Land', 240, 3);

INSERT INTO track(name_track, duration, id_album)
VALUES ('Industriya', 190, 3);

INSERT INTO track(name_track, duration, id_album)
VALUES ('Glass', 150, 3);

INSERT INTO collection(name_collection, year_collection)
VALUES ('new-coll', 2017);

INSERT INTO collection(name_collection, year_collection)
VALUES ('coll-01', 2019);

INSERT INTO collection(name_collection, year_collection)
VALUES ('coll-02', 2020);

INSERT INTO collection(name_collection, year_collection)
VALUES ('coll-03', 2021);

INSERT INTO genreperformer(id_genre, id_performer)
VALUES (1, 1);

INSERT INTO genreperformer(id_genre, id_performer)
VALUES (2, 2);

INSERT INTO genreperformer(id_genre, id_performer)
VALUES (3, 3);

INSERT INTO genreperformer(id_genre, id_performer)
VALUES (2, 3);

INSERT INTO genreperformer(id_genre, id_performer)
VALUES (1, 4);

INSERT INTO genreperformer(id_genre, id_performer)
VALUES (3, 4);

INSERT INTO performeralbum(id_performer, id_album)
VALUES (1, 1);

INSERT INTO performeralbum(id_performer, id_album)
VALUES (2, 2);

INSERT INTO performeralbum(id_performer, id_album)
VALUES (3, 3);

INSERT INTO performeralbum(id_performer, id_album)
VALUES (4, 3);

INSERT INTO structure_collection(id_collection, id_track)
VALUES (1, 1);

INSERT INTO structure_collection(id_collection, id_track)
VALUES (1, 2);

INSERT INTO structure_collection(id_collection, id_track)
VALUES (2, 1);

INSERT INTO structure_collection(id_collection, id_track)
VALUES (2, 2);

INSERT INTO structure_collection(id_collection, id_track)
VALUES (3, 1);

INSERT INTO structure_collection(id_collection, id_track)
VALUES (4, 4);

INSERT INTO structure_collection(id_collection, id_track)
VALUES (4, 5);

