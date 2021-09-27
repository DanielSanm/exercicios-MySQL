create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categorias (
	id_categorias int not null auto_increment,
    tipo_material varchar(255),
    setor varchar(255),
    
    primary key (id_categorias)
);

create table tb_produtos (
	id_produtos int not null auto_increment,
    nome varchar(255),
    preco decimal(10,2),
    marca varchar(255),
    fk_tipo_material int not null,
    
    foreign key (fk_tipo_material) references tb_categorias (id_categorias),
	primary key (id_produtos)
);

insert into tb_categorias (tipo_material, setor)
values ("Pneumatico", "A"),
("Civil", "B"),
("Marcenaria", "C"),
("Metalúrgico", "D"),
("Hidráulico", "E");

insert into tb_produtos (nome, preco, marca, fk_tipo_material)
values ("Bomba de óleo",300.00, "WEG", 5),
("Saco de cimento", 28.90, "Eagle", 2),
("Cilindro hidráulico", 1890.90, "Awaltech", 5),
("Cilindro pneumatico", 130.89, "Awaltech", 1),
("Ferro de construção", 47.50, "ArcelorMittal", 2),
("Bocal de solda", 76.70, "Nordom", 4),
("Lixa", 9.30, "Tigre", 3),
("Maquina de solda", 1299.90, "FORTG", 4);

select * from tb_produtos
where preco > 50;

select * from tb_produtos
where preco between 3 and 60;

select * from tb_produtos
where nome like "%C%";

select * from tb_produtos
inner join tb_categorias on tb_produtos.fk_tipo_material = tb_categorias.id_categorias;

select * from tb_produtos 
where fk_tipo_material = 4; -- todos os materiais metalurgicos