CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  user number(10) NOT NULL, 
  created_at date NOT NULL,
  text varchar(160),
  room number(3) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE room (
  id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  name varchar(20) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE user (
  id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  name varchar(12) NOT NULL,
  room number(3) NOT NULL,
  PRIMARY KEY (id)
);


/* You can also create more tables, if you need them... */

/*  Execute this file from the command line by typing:
 *    mysql < schema.sql
 *  to create the database and the tables.*/
