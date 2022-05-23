create table class
(
    id            int auto_increment
        primary key,
    Class_subject varchar(20) not null,
    constraint id
        unique (id)
);

create table student
(
    id        int auto_increment
        primary key,
    firstname varchar(20) not null,
    lastname  varchar(20) not null,
    gradeId   int         not null,
    constraint id
        unique (id)
);

create table student_address
(
    id        int auto_increment,
    Num       int         not null,
    Street    varchar(20) not null,
    Town      varchar(20) not null,
    Zip       int         not null,
    graded    int         not null,
    studentID int         not null,
    constraint id
        unique (id),
    constraint student_address_ibfk_1
        foreign key (id) references student (id)
);

create table student_class
(
    id        int auto_increment
        primary key,
    ClassID   int not null,
    StudentID int not null,
    constraint id
        unique (id)
);


