DROP TABLE IF EXISTS Person;

CREATE TABLE Person(
  personId INTEGER NOT NULL UNIQUE PRIMARY KEY,
  firstName TEXT,
  lastName TEXT,
  gender TEXT,
  grade INTEGER

);
