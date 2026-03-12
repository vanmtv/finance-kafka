create
database products;

create table products
(
    id         serial         not null primary key,
    name       varchar(100)   not null,
    unit_price decimal(16, 2) not null
);

create
database clients;

create table clients
(
    id         serial       not null primary key,
    name       varchar(150) not null,
    documentId char(11)     not null,
    street     varchar(100),
    number     varchar(10),
    city       varchar(100),
    email      varchar(100),
    phone      varchar(20)
);

create
database orders;
create table order_items
(
    id         serial         not null primary key,
    order_id   bigint         not null references rders (id),
    product_id bigint         not null,
    quantity   int            not null,
    unit_price decimal(16, 2) not null
);