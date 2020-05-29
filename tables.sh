#!/bin/bash

sqlite3 schedule.db < Person.sql
echo "Person table DONE"

sqlite3 schedule.db < Subject.sql
echo "Subject table DONE"

sqlite3 schedule.db < Level.sql
echo "Level table DONE"

sqlite3 schedule.db < Course.sql
echo "Course table DONE"

sqlite3 schedule.db < PersonCourse.sql
echo "PersonCourse table DONE"

