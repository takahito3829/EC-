SET names utf8;
SET foreign_key_checks = 0;
DROP DATABASE IF EXISTS WithCats;
CREATE DATABASE IF NOT EXISTS WithCats;

use WithCats;

-- -----------↓会員情報テーブル↓----------------------------
CREATE TABLE user_info(
id int PRIMARY KEY NOT NULL AUTO_INCREMENT,-- ID
user_id varchar(16) UNIQUE KEY NOT NULL,-- ユーザーID
password varchar(16) NOT NULL,-- パスワード
family_name varchar(32) NOT NULL, -- 姓
first_name varchar(32) NOT NULL,-- 名
family_name_kana varchar(32) NOT NULL,-- 姓かな
first_name_kana varchar(32) NOT NULL, -- 名かな
sex tinyint NOT NULL DEFAULT 0, -- 性別 (0:男性 1:女性)
email varchar(32) NOT NULL,-- メールアドレス
logined tinyint NOT NULL DEFAULT 0-- ログインフラグ (0:未ログイン、1:ログイン済み)
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