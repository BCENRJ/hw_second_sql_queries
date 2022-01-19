CREATE TABLE IF NOT EXISTS singer(
id serial PRIMARY KEY,
name varchar(30)
);

CREATE TABLE IF NOT EXISTS album (
id serial PRIMARY KEY,
name varchar(50),
release_year integer,
singerID integer REFERENCES singer(id)
);

CREATE TABLE IF NOT EXISTS track(
id serial PRIMARY KEY,
name varchar(50),
duration_minutes numeric(3,2) CHECK(duration_minutes > 0),
albumID integer REFERENCES album(id)
);

CREATE TABLE IF NOT EXISTS genre(
id serial PRIMARY KEY,
name varchar(30),
singerID integer REFERENCES singer(id)
);