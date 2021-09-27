create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categorias (
	id_categorias int not null auto_increment,
    curso varchar(255),
    duracao_horas int,
    
    primary key (id_categorias)
);

create table tb_cursos (
	id_cursos int not null auto_increment,
	nome_curso varchar(255),
    preco_curso decimal(10,2),
    professor_curso varchar(255),
    fk_nome_curso int not null,
    
    foreign key (fk_nome_curso) references tb_categorias (id_categorias),
    primary key (id_cursos)
);

insert into tb_categorias (curso, duracao_horas)
values ("Java", 50),
("C++", 50),
("C#", 60),
("PHP", 30),
("MySQL", 24);

insert into tb_cursos (nome_curso, preco_curso, professor_curso, fk_nome_curso)
values ("Java orientado a objetos", 229.90, "Daniel Santos", 1),
("PHP basico ao avançado", 129.90, "Leonardo", 4),
("C++ básico ao avançado", 150.00, "Rafael", 2),
("C# para desktop windows", 99.90, "Elias", 3),
("C# para .NET", 89.90, "Carlos", 3),
("MySQL completo", 58.90, "Loiane", 5),
("PHP Orientado a objetos", 80.50, "Bruna", 4),
("C++ para navegadores", 55.60, "Paula", 2);

select * from tb_cursos
where preco_curso > 100;

select * from tb_cursos
where preco_curso between 90 and 300;

select  * from tb_cursos
where nome_curso like "%J%";

select * from tb_cursos
inner join tb_categorias on tb_cursos.fk_nome_curso = tb_categorias.id_categorias;

select * from tb_cursos
where fk_nome_curso = 4 	-- filtra cursos de PHP