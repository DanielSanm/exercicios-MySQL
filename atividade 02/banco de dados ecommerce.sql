-- criando banco de dados e-commerce
create database db_ecommerce;

-- selecioando o banco db_ecommerce
use db_ecommerce;

-- crriando a tabela com os atributos
create table tb_produtos (
	id bigint auto_increment,
    nome varchar(50) not null,
    preco decimal(10,2),
    marca varchar(25) not null,
    modelo varchar(25) not null,
    quantEstq bigint not null,
    
    primary key (id)
)

-- inserindo dados do produtos
insert into tb_produtos (nome, preco, marca, modelo, quantEstq)
values ("TV", 2300.99, "Samsung", "LED", 10);
insert into tb_produtos (nome, preco, marca, modelo, quantEstq)
values ("Geladeira", 4340.45, "Consul", "Frost-free", 5);
insert into tb_produtos (nome, preco, marca, modelo, quantEstq)
values ("Notebook", 5400.99, "Samsung", "Gamer", 12);
insert into tb_produtos (nome, preco, marca, modelo, quantEstq)
values ("Boneca", 49.99, "Estrela", "Barbie", 100);
insert into tb_produtos (nome, preco, marca, modelo, quantEstq)
values ("Carrinho", 59.50, "Hotweels", "Camaro", 200);
insert into tb_produtos (nome, preco, marca, modelo, quantEstq)
values ("Fone", 65.00, "LG", "intrauricular", 50);
insert into tb_produtos (nome, preco, marca, modelo, quantEstq)
values ("Celular", 2100.90, "Motorola", "Moto G5", 15);
insert into tb_produtos (nome, preco, marca, modelo, quantEstq)
values ("Fogão", 3200.90, "Brastemp", "6 bocas", 10);

-- valor maior que 500
select * from tb_produtos where preco > 500

-- valor menor que 500
select * from tb_produtos where preco < 500