create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias (
	id_categoria bigint auto_increment,
    tipo_pizza varchar(255),
    tamanho_max varchar(255),
    
    primary key (id_categoria)
);

create table tb_produto (
	id_pizza int auto_increment,
    nome_pizza varchar(255),
    preco decimal(10,2),
    borda_recheada boolean,
    fk_tipo_pizza bigint,
    
    foreign key (fk_tipo_pizza) references tb_categorias (id_categoria),
    primary key (id_pizza)
);

insert into tb_categorias (tipo_pizza, tamanho_max)
values ("Doce", "G"),
("Salgada", "F");

insert into tb_produto (nome_pizza, preco, borda_recheada, fk_tipo_pizza)
values ("Calabresa", 65.9, true, 2),
("Frango Catupiry", 70.0, false, 2),
("Portuguesa", 68.0, true, 2),
("Palmito", 50.0, false, 2),
("Brigaeiro", 60.0, true, 1),
("Beijinho", 56.0, true, 1),
("Banana", 69.90, true, 1),
("Mousse", 55.0, true, 1);

select * from tb_categorias;
select * from tb_produto;

select * from tb_produto
where preco > 60;

select * from tb_produto
where nome_pizza like "%C%";

select * from tb_produto
where preco between 50 and 60

select * from tb_produto
inner join tb_categorias on tb_produto.fk_tipo_pizza = tb_categorias.id_categoria;

select * from tb_produto
where fk_tipo_pizza = 1;
