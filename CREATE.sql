CREATE TABLE IF NOT EXISTS genre(
	id_genre SERIAL PRIMARY KEY, 
	name_genre VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS performer(
	id_performer SERIAL PRIMARY KEY,
	name_performer VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS genreperformer(
	id_genre INTEGER REFERENCES genre(id_genre),
	id_performer INTEGER REFERENCES performer(id_performer),
	CONSTRAINT pk01 PRIMARY KEY (id_genre, id_performer)
);

CREATE TABLE IF NOT EXISTS album(
	id_album SERIAL PRIMARY KEY,
	name_album VARCHAR(40) NOT NULL,
	year_album INTEGER
);

CREATE TABLE IF NOT EXISTS performeralbum(
	id_album INTEGER REFERENCES album(id_album),
	id_performer INTEGER REFERENCES performer(id_performer),
	CONSTRAINT pk02 PRIMARY KEY (id_album, id_performer)
);

CREATE TABLE IF NOT EXISTS track(
	id_track SERIAL PRIMARY KEY,
	name_track VARCHAR(40) NOT NULL,
	duration INTEGER NOT NULL,
	id_album INTEGER REFERENCES album(id_album)
);

CREATE TABLE IF NOT EXISTS collection(
	id_collection SERIAL PRIMARY KEY,
	name_collection VARCHAR(40) NOT NULL,
	year_collection INTEGER
);

CREATE TABLE IF NOT EXISTS structure_collection(
	id_collection INTEGER NOT NULL REFERENCES collection(id_collection),
	id_track INTEGER NOT NULL REFERENCES track(id_track),
	CONSTRAINT pk03 PRIMARY KEY (id_collection, id_track)
); 