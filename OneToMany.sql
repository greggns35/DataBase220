create table customer
(
    id        int auto_increment
        primary key,
    firstname varchar(20) null,
    lastname  varchar(20) null,
    constraint id
        unique (id)
);

create table orders
(
    id         int auto_increment,
    CustomerID int    null,
    Amount     double null,
    constraint id
        unique (id),
    constraint orders_ibfk_1
        foreign key (CustomerID) references customer (id)
);

create index CustomerID
    on orders (CustomerID);


