DROP DATABASE IF EXISTS coffee_management;
CREATE DATABASE IF NOT EXISTS coffee_management 
USE coffee_management;

DROP TABLE IF EXISTS menu_category_mst;
CREATE TABLE IF NOT EXISTS menu_category_mst (
  menuCategoryId int(11) NOT NULL AUTO_INCREMENT,
  name varchar(50) NOT NULL,
  description text,
  PRIMARY KEY (menuCategoryId)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Menu category';

DROP TABLE IF EXISTS menu_mst;
CREATE TABLE IF NOT EXISTS menu_mst (
  menuId int(11) NOT NULL AUTO_INCREMENT,
  menuCategoryId int(11) NOT NULL,
  name varchar(50) NOT NULL,
  price int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (menuId)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Menu';

DROP TABLE IF EXISTS order_detail_trs;
CREATE TABLE IF NOT EXISTS order_detail_trs (
  orderId int(11) NOT NULL,
  menuId int(11) NOT NULL,
  quantity int(11) NOT NULL,
  PRIMARY KEY (orderId,menuId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Order detail';

DROP TABLE IF EXISTS order_trs;
CREATE TABLE IF NOT EXISTS order_trs (
  orderId int(11) NOT NULL AUTO_INCREMENT,
  userId int(11) NOT NULL,
  date datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (orderId)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Order';

DROP TABLE IF EXISTS user;
CREATE TABLE IF NOT EXISTS user (
  userId int(11) NOT NULL AUTO_INCREMENT,
  username varchar(200) NOT NULL,
  permission int(11) NOT NULL DEFAULT '2' COMMENT '1: admin, 2: staff',
  password varchar(200) NOT NULL,
  address varchar(200) NOT NULL,
  phone varchar(20) NOT NULL,
  avatar text NOT NULL,
  PRIMARY KEY (userId)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='User';
