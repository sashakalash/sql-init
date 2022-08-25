create table netology.persons
(
    name           varchar(100) default 'Unknown' not null,
    surname        varchar(100) default 'Unknown' not null,
    age            int                            not null,
    phone_number   varchar(20)  default 'hidden'  null,
    city_of_living varchar(50)                    null,
    primary key (name, surname, age),
    check (`age` >= 0)
);

