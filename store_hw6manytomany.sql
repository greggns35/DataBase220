create table customer_hw6many
(
    id          int auto_increment
        primary key,
    firstname   varchar(20) null,
    lastname    varchar(20) null,
    destination varchar(20) null,
    constraint id
        unique (id)
);

create table orders_hw6many
(
    id         int auto_increment,
    Amount     double      null,
    CustomerID int         null,
    items      varchar(20) null,
    constraint id
        unique (id),
    constraint orders_hw6many_ibfk_1
        foreign key (CustomerID) references customer_hw6many (id)
);

create index CustomerID
    on orders_hw6many (CustomerID);

create table producthw6
(
    id          int auto_increment
        primary key,
    order_id    int null,
    customer_id int null,
    constraint id
        unique (id)
);


