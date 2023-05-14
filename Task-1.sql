create table if not EXISTS Collections (
	id SERIAL primary key,
	name VARCHAR (60) not null,
	year_of_issue date not null
);

create table if not EXISTS Albums (
	album_id SERIAL primary key,
	name VARCHAR (60) not null,
	year_of_issue date not null
);

create table if not EXISTS Tracks (
	track_id SERIAL primary key,
	name VARCHAR (60) not null,
	duration time not null,
	album_id integer not null references Albums(album_id)
);

create table if not EXISTS Performers (
	performer_id SERIAL primary key,
	alias VARCHAR (60) not null
);

create table if not EXISTS Genres (
	genre_id SERIAL primary key,
	name VARCHAR (60) not null
);

create table if not EXISTS Track_Collection (
	id SERIAL primary key,
	collection_id integer not null references Collections(id),
	track_id integer not null references Tracks(track_id)
);

create table if not EXISTS Album_Performer (
	id SERIAL primary key,
	performer_id integer not null references Performers(performer_id),
	album_id integer not null references Albums(album_id)
);

create table if not EXISTS Ganre_Performer (
	id SERIAL primary key,
	performer_id integer not null references Performers(performer_id),
	genre_id integer not null references Genres(genre_id)
);