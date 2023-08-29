create database banco;
use banco;

create table usuario (
	id_usuario int auto_increment primary key,
	nome_usuario varchar(25) not null,
	data_nasc date not null,
	email_usuario varchar(50) not null,
	senha_usuario varchar(08) not null
ano_cad_usuario varchar(04));

create table empresa (
	id_empresa int auto_increment primary key,
	nome_empresa varchar(25) not null,
	email_empresa varchar(50) not null,
	endereco_empresa varchar(100) not null,
	senha_empresa varchar(08)
date_cad_empresa varchar date);

create table produto (
	id_prod int auto_increment primary key,
	nome_produto varchar(25),
	cat_produto int,
	val_produto float,
	fk_cod_empresa varchar(04),
foreign key (fk_cod_empresa) references empresa (cod_empresa));

create table categoria (
	id_categoria int auto_increment primary key,
	nome_categoria varchar(50) not null);

alter table produto (
	add constraint (fk_cod_emp_produto),
	foreign key (fk_cod_emp_produto) references empresa (cod_empresa) on delete cascade on update cascade);

create table pedido (
	cod_pedido varchar(15) primary key,
	val_pedido float,
	forma_pag int,
	date_pedido date,
fk_cod_emp_pedido varchar (8),
foreign key (fk_cod_emp_emp_pedido) references empresa (cod_empresa)
);

create table campus (
	id_campus int auto_increment,
	cod_campus varchar,
nome_campus varchar(20),
endereco_campus varchar(100)
cidade_campus varchar(25));

create table membros (
	id_membro int auto_increment primary key,
	nome_membro varchar(25) not null,
	fk_cod_campus_membro varchar,
	foreign key (fk_cod_campus_membro) references campus (cod_campus),
fk_codigo_empresa_membro      varchar(08),
	foreing key (fk_codigo_empresa_membro) references empresa (cod_empresa)
);
