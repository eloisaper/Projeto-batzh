create database banco;
use banco;

create database banco;
use banco;

create table usuario (
	id_usuario int auto_increment primary key,
	nome_usuario varchar(25) not null,
	data_nasc date not null,
	email_usuario varchar(50) not null,
	senha_usuario varchar(08) not null,
    ano_cad_usuario varchar(04)
);

create table empresa (
	id_empresa int auto_increment primary key,
	nome_empresa varchar(25) not null,
	email_empresa varchar(50) not null,
	endereco_empresa varchar(100) not null,
	senha_empresa varchar(08),
	date_cad_empresa date,
    fk_id_emp_produto int,
    foreign key (fk_id_emp_produto) references empresa (id_empresa)
);

create table produto (
	id_prod int auto_increment primary key,
	nome_produto varchar(25),
	cat_produto int,
	val_produto float,
	fk_id_empresa int,
	foreign key (fk_id_empresa) references empresa (id_empresa)
);

create table categoria (
	id_categoria int auto_increment primary key,
	nome_categoria varchar(50) not null);

create table pedido (
	id_pedido int auto_increment primary key,
	val_pedido float,
	forma_pag int,
	date_pedido date,
	fk_id_emp_pedido varchar (8),
	foreign key (fk_id_emp_pedido) references empresa (id_empresa)
);

create table campus (
	id_campus int auto_increment,
	nome_campus varchar(20),
	endereco_campus varchar(100),
	cidade_campus varchar(25)
);

create table membros (
	id_membro int auto_increment primary key,
	nome_membro varchar(25) not null,
	fk_id_campus_membro int,
	foreign key (fk_id_campus_membro) references campus (id_campus),
	fk_id_empresa_membro int,
	foreign key (fk_id_empresa_membro) references empresa (id_empresa)
);