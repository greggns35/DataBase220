create table customer
(
    id        int auto_increment
        primary key,
    firstname varchar(20) null,
    lastname  varchar(20) null,
    street    varchar(20) null,
    constraint id
        unique (id)
)
    auto_increment = 5;

create table orders
(
    id         int auto_increment,
    CustomerID int         null,
    Amount     double      null,
    Item       varchar(20) null,
    constraint id
        unique (id),
    constraint orders_ibfk_1
        foreign key (CustomerID) references customer (id)
)
    auto_increment = 6;

create index CustomerID
    on orders (CustomerID);


