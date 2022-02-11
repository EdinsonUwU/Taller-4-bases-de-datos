
-- RESTART SERIAL FIELDS FOR TESTING

/*
ALTER SEQUENCE "course_offering_sec_id_seq" RESTART;

ALTER SEQUENCE "enrols_sec_id_seq" RESTART;

ALTER SEQUENCE "teaches_sec_id_seq" RESTART;


DROP SEQUENCE IF EXISTS "course_id_seq" CASCADE;
DROP SEQUENCE IF EXISTS "student_id_seq" CASCADE;



-- DELETE RECORDS FOR TESTING

TRUNCATE  "student","instructor","course","course_offering", "enrols", "teaches", "requires" CASCADE;

*/
/* Insert student values*/
INSERT INTO student (name,program)
VALUES
  ('Noah Cotton','Math'),
  ('Deborah Ewing','physics'),
  ('Kelly Colon','CS'),
  ('Reese Woodard','CS'),
  ('Igor Smith','Electrical Engineering');


SELECT * FROM "student";
/* Insert instructor values*/

INSERT INTO instructor (instructor_id, name, dept, title) 
VALUES 
    (8813011, 'Janean', 'Research and Development', 'Desktop Support Technician'),
    (3707630, 'Vivienne', 'Business Development', 'Research Assistant III'),
    (1169176, 'Auberta', 'Training', 'Marketing Assistant'),
    (3772342, 'Rossy', 'Accounting', 'Assistant Professor'),
    (0974263, 'Jarrett', 'Product Management', 'Desktop Support Technician');


/* Insert course values*/
INSERT INTO course (title,syllabus,credits)
VALUES
  ('Statistics','pensum 2010',3),
  ('Operative Systems','pensum 2020',2),
  ('Databases','pensum 2010',4),
  ('Sport','pensum 2020',3),
  ('Complexity','pensum 2020',4);


/* Insert course_offering*/

INSERT INTO course_offering (course_id,year,semester,time,classroom)
VALUES
  (837827, '2022-01-08',7,'11:53 PM','240B'),
  (837850,'2022-01-02',2,'4:58 PM','240c'),
  (837873,'2022-01-10',7,'11:11 AM','240a'),
  (837896,'2022-01-10',6,'12:01 AM','240Bx'),
  (837919, '2022-01-03',3,'4:23 PM','240Bd');

/* Insert enrols*/

INSERT INTO enrols (student_id,course_id,semester,year,grade)
VALUES
  (7488,837827,7,'2022-01-10', 4.23),
  (7656, 837850,2,'2022-01-10',4.56),
  (7824,837873 ,7,'2022-01-10',2.9),
  (7992,837896 ,6,'2022-01-10',3.23),
  (8160, 837919,3,'2022-01-10',1.19);

/* Insert teaches*/
INSERT INTO teaches (course_id,semester,year,instructor_id)
VALUES
  (837827,7,'2022-01-10',8813011),
  (837850,2,'2022-01-10',3707630),
  (837873,7,'2022-01-10',1169176),
  (837896,6,'2022-01-10',3772342),
  (837919,3,'2022-01-10',0974263);

/* Insert requires*/
INSERT INTO requires (main_course,prerequisite)
VALUES
  (837827, 837850),
  (837919, 837896),
  (837827, 837850),
  (837873, 837919),
  (837919, 837873);

  -- SELECT FOR CHECK THE CONTENT OF EACH TABLE TESTING

SELECT * FROM "student";
SELECT * FROM "instructor";
SELECT * FROM "course";
SELECT * FROM "course_offering";
SELECT * FROM "enrols";
SELECT * FROM "teaches";
SELECT * FROM "requires";