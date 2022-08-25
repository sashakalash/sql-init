create schema netology;

create table persons(
                        name varchar(100) default 'Unknown',
                        surname varchar(100) default 'Unknown',
                        age int check ( age >= 0 ),
                        phone_number varchar(20) default 'hidden',
                        city_of_living varchar(50),
                        primary key (name, surname, age)
);

insert into persons (name, surname, age, phone_number, city_of_living) values ('Aleksandr', 'Block', 145, '000000000', 'Saint Petersburg');
insert into persons (name, surname, age, city_of_living) values ('Jack', 'Black', 45, 'Los Angeles');
insert into persons (name, surname, age, city_of_living) values ('Jack', 'Sparow', 50, 'Moscow');
insert into persons (name, age, city_of_living) values ('Aleksandr III', 235, 'Saint Petersburg');
insert into persons (name, surname, age, phone_number, city_of_living) values ('Gnom', 'Gnomych', 11, '111111111', 'Moscow');

select * from persons
where age > 27
order by age DESC;