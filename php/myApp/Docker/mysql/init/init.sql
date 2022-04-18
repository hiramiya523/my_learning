DROP TABLE IF EXISTS first_db.users;

CREATE TABLE first_db.users (
  id int(10) unsigned not null auto_increment,
  name varchar(255) not null,
  primary key (id)
);

insert into users (name) values ('hogeo'), ('fugao');
