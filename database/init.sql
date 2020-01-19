create database cs_courses;

grant all privileges on database cs_courses to postgres;

\c cs_courses

create sequence hibernate_sequence start 1 increment 1;

create table achievement (
    id int8 not null,
    exercise varchar(255) not null,
    level integer default 1,
    progression float8 not null,
    score int4 not null,
    session_id varchar(255),
    timestamp date,
    student_id int8 not null,
    primary key (id)
);

create table section (
    id int8 not null,
    name varchar(255),
    primary key (id)
);

create table student (
    id int8 not null,
    name varchar(255) not null,
    section_id int8,
    primary key (id)
);

alter table if exists student
   add constraint UK_7pb8owoegbhhcrpopw4o1ykcr unique (name);

alter table if exists achievement
   add constraint FK9ihd6yxt6kpu0t6rg7joajmio
   foreign key (student_id)
   references student;

alter table if exists student
   add constraint FKj1c0de75pterue04btw6w5mh8
   foreign key (section_id)
   references section;
