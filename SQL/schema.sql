CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  user SMALLINT(10), 
  created_at DATE,
  content CHAR(160),
  room SMALLINT(3),
  PRIMARY KEY (id)
);

CREATE TABLE room (
  id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  name CHAR(20),
  PRIMARY KEY (id)
);

CREATE TABLE user (
  id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  name CHAR(12),
  room SMALLINT(3),
  PRIMARY KEY (id)
);

/* You can also create more tables, if you need them... */

/*  Execute this file from the command line by typing:
 *    mysql < schema.sql
 *  to create the database and the tables.*/
