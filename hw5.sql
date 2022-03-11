create table customer_order_association
(
    id          int auto_increment
        primary key,
    order_id    int null,
    customer_id int null,
    constraint id
        unique (id)
);

create table customers
(
    id            int auto_increment
        primary key,
    firstname     varchar(20) null,
    lastname      varchar(20) null,
    company       varchar(20) null,
    order_product date        null,
    constraint id
        unique (id)
);

create table orders
(
    id         int auto_increment
        primary key,
    product    varchar(20) null,
    cost       int         null,
    customerId int         null,
    constraint id
        unique (id)
);

create table store_order_association
(
    id          int auto_increment
        primary key,
    order_id    int null,
    customer_id int null,
    constraint id
        unique (id)
);


