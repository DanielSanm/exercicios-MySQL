create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categorias (
	id_categorias int not null auto_increment,
	tipo_mercadoria varchar(255),
    prateleira varchar(255),
    
    primary key (id_categorias)
);

create table tb_produtos (
	id_produtos int not null auto_increment,
	nome varchar(255),
    preco decimal(10, 2),
    marca varchar(255),
    fk_tipo_produto int not null,
	
    primary key (id_produtos),
	foreign key (fk_tipo_produto) references tb_categorias (id_categorias)
);

insert into tb_categorias (tipo_mercadoria, prateleira)
values ("Remédio", "A"),
("Cosméticos", "B");

insert into tb_produtos (nome, preco, marca, fk_tipo_produto)
values ("Buscopan", 6.50, "Genérico", 1),
("Shampoo", 15.99, "Johnsons", 2),
("Sabonete", 6.00, "Dove", 2),
("anticoncepcional", 7.50, "EMS", 1),
("Neosadina", 21.90, "Neosadina", 1),
("Maquiagem", 50.00, "Capricho", 2),
("Dipirona", 2.99, "EMS", 1),
("Ibuprofeno", 12.99, "Advil", 1);

select * from tb_produtos
where preco > 20;

select * from tb_produtos
where preco between 3 and 10;

select * from tb_produtos 
where nome like "%B%"

select * from tb_produtos
inner join tb_categorias on tb_produtos.fk_tipo_produto = tb_categorias.id_categorias;

select * from tb_produtos
where fk_tipo_produto = 1; 		-- remedios
