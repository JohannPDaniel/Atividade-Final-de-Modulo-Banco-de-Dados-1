CREATE TABLE 
    IF NOT EXISTS users (
        id serial PRIMARY KEY NOT NULL,
        nome varchar(255) NOT NULL,
        email varchar(150) NOT NULL,
        username varchar(150) NOT NULL,
        senha varchar(150) NOT null
    );

CREATE TABLE 
    IF NOT EXISTS tweets (
        id serial PRIMARY KEY NOT NULL,
        CONTENT varchar(255) NOT NULL,
        TYPE varchar(100) NOT NULL,
        user_id int NOT NULL REFERENCES users (id)
    );

CREATE TABLE 
    IF NOT EXISTS likes (
        id serial PRIMARY KEY NOT NULL,
        user_id int NOT NULL REFERENCES users (id),
        tweet_id int NOT NULL REFERENCES tweets (id)
    );

CREATE TABLE 
    IF NOT EXISTS re_tweets (
        id serial PRIMARY KEY NOT NULL,
        tweet_id int NOT NULL REFERENCES tweets (id),
        user_id int NOT NULL REFERENCES users (id)
    );

CREATE TABLE
    IF NOT EXISTS followers (
        id serial PRIMARY KEY NOT NULL,
        user_id int NOT NULL REFERENCES users (id),
        follower_id int NOT NULL REFERENCES followers (id)
    );