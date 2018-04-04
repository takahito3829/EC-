SET names utf8;
SET foreign_key_checks = 0;
DROP DATABASE IF EXISTS CatWith;
CREATE DATABASE IF NOT EXISTS CatWith;

use CatWith;

drop table if exists login_user_transaction;

create table login_user_transaction(
	id int not null primary key auto_increment,
	login_id varchar(16)unique,
	login_pass varchar(16),
	user_name varchar(50),
	insert_date datetime,
	updated_date datetime
);

-- -----------↓お問合わせテーブル↓----------------------------
CREATE TABLE inquiry_info(
family_name varchar(32) NOT NULL, -- 姓
first_name varchar(32) NOT NULL,-- 名
family_name_kana varchar(32) NOT NULL,-- 姓かな
first_name_kana varchar(32) NOT NULL, -- 名かな
email varchar(32) NOT NULL,-- メールアドレス

phone_number varchar(32) NOT NULL,--
area varchar(32) NOT NULL,--
content varchar(32) NOT NULL --

);

drop table if exists item_info_transaction;

create table item_info_transaction(
	id int not null primary key auto_increment,
	item_name varchar(30),
	item_price int,
	item_stock int,
	insert_date datetime,
	update_date datetime
);

drop table if exists user_buy_item_transaction;

create table user_buy_item_transaction(
	id int not null primary key auto_increment,
	item_transaction_id int,
	total_price int,
	total_count int,
	user_master_id varchar(16),
	pay varchar(30),
	insert_date datetime,
	delete_date datetime
);

INSERT INTO item_info_tran

