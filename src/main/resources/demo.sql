drop database if exists demo;
create database demo;
use demo;

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


create table user(
    id bigint(20) not null auto_increment,
    username varchar(255) not null,
    password varchar(255) not null,
    primary key (id)
)engine=innodb default charset=utf8;

create table role(
    id bigint(20) not null auto_increment,
    role_name varchar(255) not null,
    primary key (id)
)engine=innodb default charset=utf8;

create table permission(
    id bigint(20) not null auto_increment,
    permission_name varchar(255) not null,
    primary key (id)
)engine=innodb default charset=utf8;

create table user_role(
    id bigint(20) not null auto_increment,
    user_id bigint(20) not null,
    role_id bigint(20) not null,
    primary key (id)
)engine=innodb default charset=utf8;

create table role_permission(
    id bigint(20) not null auto_increment,
    role_id bigint(20) not null,
    permission_id bigint(20) not null,
    primary key (id)
)engine=innodb default charset=utf8;
# password 需要通过MD5加密
insert into user(id, username, password) values(1, 'root', '63a9f0ea7bb98050796b649e85481845');
insert into user(id, username, password) value (2, 'normal', 'fea087517c26fadd409bd4b9dc642555');

insert into role(id, role_name) values(1, 'admin');
insert into role(id, role_name) values(2, 'user');

insert into permission(id, permission_name) values(1, 'customer:view');
insert into permission(id, permission_name) values(2, 'customer:edit');
insert into permission(id, permission_name) values(3, 'customer:delete');

insert into user_role(id, user_id, role_id) values(1, 1, 1);
insert into user_role(id, user_id, role_id) values(2, 2, 2);

insert into role_permission(id, role_id, permission_id) values(1, 1, 1);
insert into role_permission(id, role_id, permission_id) values(2, 1, 2);
insert into role_permission(id, role_id, permission_id) values(3, 1, 3);
insert into role_permission(id, role_id, permission_id) values(4, 2, 1);