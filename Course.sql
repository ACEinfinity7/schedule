DROP TABLE IF EXISTS Course;

CREATE TABLE Course(
  courseId INTEGER NOT NULL UNIQUE PRIMARY KEY,
  courseName TEXT,
  period INTEGER,
  levelId INTEGER,
  subjectId INTEGER,
  FOREIGN KEY (levelId) REFERENCES Level(levelId),
  FOREIGN KEY (subjectId) REFERENCES Subject(subjectId)

);
