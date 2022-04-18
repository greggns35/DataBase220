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
    Amount     double null,
    CustomerID int    null,
    constraint id
        unique (id),
    constraint orders_ibfk_1
        foreign key (CustomerID) references customer (id)
);

create index CustomerID
    on orders (CustomerID);

create table product
(
    id          int auto_increment
        primary key,
    order_id    int null,
    customer_id int null,
    constraint id
        unique (id)
);


