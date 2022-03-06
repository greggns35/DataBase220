create table customers
(
    id        int auto_increment
        primary key,
    firstname varchar(20) null,
    lastname  varchar(20) null,
    company   varchar(20) null,
    constraint id
        unique (id)
);

create table orders
(
    id          int auto_increment
        primary key,
    product     varchar(20) null,
    cost        int         null,
    customersId int         null,
    constraint id
        unique (id)
);


