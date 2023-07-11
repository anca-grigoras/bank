create database bank;

use bank;

create table users(
    id int not null auto_increment,
    username varchar(45) not null,
    password varchar(45) not null,
    enabled int not null,
    primary key (id)
);

create table authorities(
    id int not null auto_increment,
    username varchar(45) not null,
    authority varchar(45) not null,
    primary key (id)
);

INSERT ignore INTO users values (NULL, 'happy', '12345', '1');
INSERT ignore INTO authorities values (NULL, 'happy', 'write');

CREATE TABLE `customer`(
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `pwd` varchar(200) NOT NULL,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `customer` (`email`, `pwd`, `role`)
 VALUES ('johndoe@example.com', '54321', 'admin');