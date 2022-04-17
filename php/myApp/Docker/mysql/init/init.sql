DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id int(10) unsigned not null auto_increment,
  name varchar(255) not null,
  primary key (id)
);

insert into users (name) values ('hogeo'), ('fugao');