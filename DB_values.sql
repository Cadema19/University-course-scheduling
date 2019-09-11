--Default users
insert into users (title, name, username, password, email, type)
    values ('Ms', 'Tanja Breinig', 'admin', 'coco2015', 'admin@cs.uni-saarland.de', 0)
;
insert into passphrase (passphrase) values ('defaultpass');

insert into users (title, name, username, password, email, type)
    values ('Mr', 'John Doe', 'doe', 'default', 'john.doe@cs.uni-saarland.de', 1)
;

--Weekdays
insert into weekdays (weekday_id, name) values (1, 'Monday');
insert into weekdays (weekday_id, name) values (2, 'Tuesday');
insert into weekdays (weekday_id, name) values (3, 'Wednesday');
insert into weekdays (weekday_id, name) values (4, 'Thursday');
insert into weekdays (weekday_id, name) values (5, 'Friday');

--Timeslots
insert into timeslots (timeslot_id, time) values (1, '08.00 - 10.00');
insert into timeslots (timeslot_id, time) values (2, '10.00 - 12.00');
insert into timeslots (timeslot_id, time) values (3, '12.00 - 14.00');
insert into timeslots (timeslot_id, time) values (4, '14.00 - 16.00');
insert into timeslots (timeslot_id, time) values (5, '16.00 - 18.00');

--Preference codes
insert into preference_codes (preference_id, comment) values (0, 'Does not fit');
insert into preference_codes (preference_id, comment) values (1, 'Neutral');
insert into preference_codes (preference_id, comment) values (2, 'Possible');
insert into preference_codes (preference_id, comment) values (3, 'Best fit');

--Default mark timeslot reason
insert into reasons (comment) values ('Advanced VC course');

--Semester types
insert into semester_types (id, semester) values (1, 'winter semester');
insert into semester_types (id, semester) values (2, 'summer semester');

--Lecture halls
insert into rooms (room_id, name, location, max_capability) values (1,'Lecture Hall I', 'E 1.3', 99);
insert into rooms (room_id, name, location, max_capability) values (2,'Lecture Hall II', 'E 1.3', 170);
insert into rooms (room_id, name, location, max_capability) values (3,'Lecture Hall III', 'E 1.3', 99);
insert into rooms (room_id, name, location, max_capability) values (4,'Guenter Hotz Hall', 'E 2.2', 450);
insert into rooms (room_id, name, location, max_capability) values (5,'Lecture Hall I', 'E 2.5', 314);

-- Basic courses
insert into basic_courses (id,course) values (1,'Perspektiven der Informatik');
insert into basic_courses (id,course) values (2,'Programmierung 1');
insert into basic_courses (id,course) values (3,'Theoretische Informatik');
insert into basic_courses (id,course) values (4,'Algorithmen und Datenstrukturen');
insert into basic_courses (id,course) values (5,'MfI 1');
insert into basic_courses (id,course) values (6,'MfI 3');

insert into basic_courses (id,course) values (7,'Programmierung 2');
insert into basic_courses (id,course) values (8,'Systemarchitektur');
insert into basic_courses (id,course) values (9,'Nebenlaeufige Programmierung');
insert into basic_courses (id,course) values (10,'Informationssysteme');
insert into basic_courses (id,course) values (11,'MfI 2');
insert into basic_courses (id,course) values (12,'PfI');

--Basic courses schedule
--Winter semester
insert into basic_schedule (weekday_id, timeslot_id, bcourse_id, room_id, semester_id)
values(1,4,1,5,1);
insert into basic_schedule (weekday_id, timeslot_id, bcourse_id, room_id, semester_id)
values(2,4,2,4,1);
insert into basic_schedule (weekday_id, timeslot_id, bcourse_id, room_id, semester_id)
values(4,2,2,4,1);
insert into basic_schedule (weekday_id, timeslot_id, bcourse_id, room_id, semester_id)
values(3,4,3,4,1);
insert into basic_schedule (weekday_id, timeslot_id, bcourse_id, room_id, semester_id)
values(5,2,3,4,1);
insert into basic_schedule (weekday_id, timeslot_id, bcourse_id, room_id, semester_id)
values(4,3,4,4,1);
insert into basic_schedule (weekday_id, timeslot_id, bcourse_id, room_id, semester_id)
values(3,2,5,4,1);
insert into basic_schedule (weekday_id, timeslot_id, bcourse_id, room_id, semester_id)
values(5,2,5,4,1);
insert into basic_schedule (weekday_id, timeslot_id, bcourse_id, room_id, semester_id)
values(3,1,6,5,1);
insert into basic_schedule (weekday_id, timeslot_id, bcourse_id, room_id, semester_id)
values(5,3,6,5,1);

--Basic courses schedule
--Summer semester
insert into basic_schedule (weekday_id, timeslot_id, bcourse_id, room_id, semester_id)
values(2,4,7,4,2);
insert into basic_schedule (weekday_id, timeslot_id, bcourse_id, room_id, semester_id)
values(5,1,7,4,2);
insert into basic_schedule (weekday_id, timeslot_id, bcourse_id, room_id, semester_id)
values(1,1,8,4,2);
insert into basic_schedule (weekday_id, timeslot_id, bcourse_id, room_id, semester_id)
values(3,1,8,4,2);
insert into basic_schedule (weekday_id, timeslot_id, bcourse_id, room_id, semester_id)
values(1,4,9,2,2);
insert into basic_schedule (weekday_id, timeslot_id, bcourse_id, room_id, semester_id)
values(2,2,9,2,2);
insert into basic_schedule (weekday_id, timeslot_id, bcourse_id, room_id, semester_id)
values(2,3,10,4,2);
insert into basic_schedule (weekday_id, timeslot_id, bcourse_id, room_id, semester_id)
values(4,2,10,4,2);
insert into basic_schedule (weekday_id, timeslot_id, bcourse_id, room_id, semester_id)
values(3,2,11,4,2);
insert into basic_schedule (weekday_id, timeslot_id, bcourse_id, room_id, semester_id)
values(5,2,11,4,2);
insert into basic_schedule (weekday_id, timeslot_id, bcourse_id, room_id, semester_id)
values(2,3,12,2,2);

--Default active constraints
insert into constr (id, active) values (1, 'c1 c2 c3 c4 c5 c6 c7');
