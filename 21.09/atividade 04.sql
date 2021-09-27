create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categorias (
	id_categorias int not null auto_increment,
	tipo_mercadoria varchar(255),
	setor_mercadoria varchar(255),
    
	primary key (id_categorias)
);

create table tb_produtos (
	id_produtos int not null auto_increment,
    nome varchar(255),
    preco decimal(10,2),
    marca varchar(255),
    fk_tipo_mercadoria int not null,
    
    foreign key (fk_tipo_mercadoria) references tb_categorias (id_categorias),
    primary key (id_produtos)
);

insert into tb_categorias (tipo_mercadoria, setor_mercadoria)
values ("aves", "A"),
("legumes", "B"),
("Doces", "C"),
("Limpeza", "D"),
("Massas", "E");

insert into tb_produtos (nome, preco, marca, fk_tipo_mercadoria)
values ("Cenoura", 2.99, "Pro Valer", 2),
("Goiabada", 2.85, "Predilecta", 3),
("Coxa e sobrecoxa", 10.50, "JBS", 1),
("Alvejante", 12.79, "Candida", 4),
("Asinha", 42.90, "Sadia", 1),
("BIS", 3.00, "Lacta", 3),
("Espaguete", 4.30, "Galo", 5),
("Detergente", 1.49, "Limpol", 4);

select * from tb_produtos
where preco > 10;

select * from tb_produtos
where preco between 3 and 10;

select * from tb_produtos
where nome like "%C%";

select * from tb_produtos
inner join tb_categorias on tb_produtos.fk_tipo_mercadoria = tb_categorias.id_categorias;

select * from tb_produtos
where fk_tipo_mercadoria = 1;	 -- aves
