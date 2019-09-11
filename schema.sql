-- Script, initializing the DB

create table if not exists users (
    id integer primary key autoincrement,
    title text,
    name text not null,
    username text not null,
    password text not null,
    email text not null,
    type integer not null,
    reset text not null default ""
);

create table if not exists passphrase(
    id integer primary key,
        passphrase text
);

create table if not exists sessions (
    id integer primary key autoincrement,
    semester integer not null,
    years text not null,
    current integer not null default 0,
	FOREIGN KEY(semester) REFERENCES semester_types(id)
);

create table if not exists courses(
    id integer primary key autoincrement,
    course text not null,
    field text not null,
    students_number integer not null default 0
);

create table if not exists weekdays (
    weekday_id integer primary key autoincrement,
    name text not null
);

create table if not exists timeslots (
    timeslot_id integer primary key autoincrement,
    time text not null
);

create table if not exists preference_codes (
    preference_id integer primary key unique,
    comment text not null
);

create table if not exists preferences (
    entry_id integer primary key autoincrement,
    user_id integer not null,
    weekday_id integer not null,
    timeslot_id integer not null,
    preference_id integer not null,
    course_id integer not null,
    hours text,
    semester_id integer not null,
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(weekday_id) REFERENCES weekdays(weekday_id),
    FOREIGN KEY(timeslot_id) REFERENCES timeslots(timeslot_id),
    FOREIGN KEY(preference_id) REFERENCES preference_codes(preference_id),
    FOREIGN KEY(semester_id) REFERENCES sessions(id)
);

create table if not exists busy_timeslots (
    entry_id integer primary key autoincrement,
    weekday_id integer not null,
    timeslot_id integer not null,
    reason_id integer not null,
    semester_id integer not null,
    FOREIGN KEY(weekday_id) REFERENCES weekdays(weekday_id),
    FOREIGN KEY(timeslot_id) REFERENCES timeslots(timeslot_id),
    FOREIGN KEY(reason_id) REFERENCES reasons(reason_id),
    FOREIGN KEY(semester_id) REFERENCES sessions(id)
);

create table if not exists reasons (
    reason_id integer primary key autoincrement,
    comment text not null
);

create table if not exists schedule (
    weekday_id integer not null,
    timeslot_id integer not null,
    course_id integer not null,
	room_id integer not null,
    semester_id integer not null,
    PRIMARY KEY(weekday_id, timeslot_id, course_id, room_id, semester_id),
    FOREIGN KEY(weekday_id) REFERENCES weekdays(weekday_id),
    FOREIGN KEY(timeslot_id) REFERENCES timeslots(timeslot_id),
    FOREIGN KEY(course_id) REFERENCES courses(id),
    FOREIGN KEY(semester_id) REFERENCES sessions(id),
    FOREIGN KEY(room_id) REFERENCES rooms(room_id)
);

create table if not exists basic_schedule (
    weekday_id integer not null,
    timeslot_id integer not null,
    bcourse_id integer not null,
	room_id integer not null,
    semester_id integer not null,
    PRIMARY KEY(weekday_id, timeslot_id, bcourse_id, room_id, semester_id),
    FOREIGN KEY(weekday_id) REFERENCES weekdays(weekday_id),
    FOREIGN KEY(timeslot_id) REFERENCES timeslots(timeslot_id),
    FOREIGN KEY(bcourse_id) REFERENCES basic_courses(id),
    FOREIGN KEY(semester_id) REFERENCES semester_types(id),
    FOREIGN KEY(room_id) REFERENCES rooms(room_id)
);
create table if not exists semester_types (
    id integer primary key,
    semester text not null
);

create table if not exists rooms (
    room_id integer primary key autoincrement,
    name text not null,
    location text not null,
	max_capability integer not null
);

create table if not exists basic_courses(
    id integer primary key autoincrement,
    course text not null
);

create table if not exists constr(
    id integer primary key,
    active text
);

