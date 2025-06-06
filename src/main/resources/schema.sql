create table author(
    id uuid not null primary key,
    name varchar(100) not null,
    birth_date date not null,
    nationality varchar(50) not null,
    registration_date timestamp,
    update_date timestamp,
    id_user uuid
);

create table book (
    id uuid not null primary key,
    isbn varchar(20) not null,
    title varchar(150) not null,
    publication_date date not null,
    gender varchar(30) not null,
    price numeric(18,2),
    registration_date timestamp,
    update_date timestamp,
    id_user uuid,
    id_author uuid not null references author(id),
    constraint chk_gender check (gender in ('FICTION', 'FANTASY', 'MYSTERY', 'ROMANCE', 'BIOGRAPHY', 'SCIENCE'))
);