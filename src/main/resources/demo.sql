create table customer(
    id bigint(20) not null auto_increment,
    name varchar(255) default null,
    contact varchar(255) default null,
    telephone varchar(255) default null,
    email varchar(255) default null,
    remark text,
    primary key(id)
)engine=innodb default charset=utf8;

insert into customer(id, name, contact, telephone, email, remark)
values (1, 'customer1', 'Jack', 13457856934, 'jack@gmail.com', null);
insert into customer(id, name, contact, telephone, email, remark)
values (2, 'customer2', 'Rose', 13646089763, 'rose@gmail.com', null);