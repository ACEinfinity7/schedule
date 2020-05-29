DROP TABLE IF EXISTS PersonCourse;

CREATE TABLE PersonCourse(
  personCourseId INTEGER NOT NULL UNIQUE PRIMARY KEY,
  personId INTEGER,
  courseId INTEGER,
  FOREIGN KEY (personId) REFERENCES Person(personId),
  FOREIGN KEY (courseId) REFERENCES Course(courseId)

);
