create table customer
(
    id         int auto_increment
        primary key,
    CustomerID int         not null,
    firstname  varchar(20) null,
    lastname   varchar(20) null,
    street     varchar(20) null,
    constraint id
        unique (id)
);

create table orders
(
    id      int auto_increment,
    OrderID int         null,
    Amount  double      null,
    Item    varchar(20) null,
    constraint id
        unique (id)
);


