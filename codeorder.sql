#设置客户端连接服务器的编码为utf-8
SET NAMES UTF8;
 #丢弃数据库，如果存在
DROP DATABASE IF EXISTS co;
 #创建数据库，设置存储的编码
CREATE DATABASE co CHARSET=UTF8;
 #进入数据库
USE co;
#创建用户列表
CREATE TABLE co_user(
	uid INT PRIMARY KEY,
	uname VARCHAR(32),
	upwd  VARCHAR(32),
	avatar VARCHAR(128)
);
#创建购物车列表
CREATE TABLE co_cart(
	table_id INT PRIMARY KEY,
	menu_id INT not null,
	count INT not null,
	soup_id INT not null
);
#创建桌号表
CREATE TABLE co_assess(
	t_id INT PRIMARY KEY,
	t_name VARCHAR(32) not null,
	soup_id int ,
	soup_name VARCHAR(32)
);
#创建点餐单表
CREATE TABLE co_order(
	order_id INT PRIMARY KEY,
	order_oid INT not null,
	order_total DECIMAL(10,2) not null,
	time DATE not null,
	order_table int not null,
	count VARCHAR(32) not null
);
#创建菜单分类表
CREATE TABLE co_menu_class(
	class_id INT PRIMARY KEY,
	class_name VARCHAR(32)
);
#创建菜单表
CREATE TABLE co_menu(
	m_id INT PRIMARY KEY,
	image VARCHAR(128),
	detail VARCHAR(128),
	price DECIMAL(6,2) not null,
	spec VARCHAR(64) not null,
	m_name VARCHAR(32) not null
);
#创建评价表
CREATE TABLE co_evaluate(
	e_id INT PRIMARY KEY,
	evaluate VARCHAR(320)
)




