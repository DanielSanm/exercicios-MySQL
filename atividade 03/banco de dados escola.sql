-- criando banco de dados escola
create database db_escola;

-- selecioando o banco db_escola
use db_escola;

-- criando tabela de atributos do estudadntes
create table tb_estudantes (
	id bigint auto_increment,
    nome varchar(50) not null,
    idade bigint not null,
    turma varchar(25) not null,
    notaFinal bigint not null,
    aprovado boolean,
    
    primary key (id)
);

-- inserindo atributos dos estudantes
insert into tb_estudantes (nome, idade, turma, notaFinal, aprovado)
values ("Daniel", 12, "6A", 9, true);
insert into tb_estudantes (nome, idade, turma, notaFinal, aprovado)
values ("Bianca", 11, "5A", 4, false);
insert into tb_estudantes (nome, idade, turma, notaFinal, aprovado)
values ("Carlos", 13, "7A", 5, true);
insert into tb_estudantes (nome, idade, turma, notaFinal, aprovado)
values ("Roberta", 14, "8A", 7, true);
insert into tb_estudantes (nome, idade, turma, notaFinal, aprovado)
values ("Rafaela", 11, "5A", 2, false);
insert into tb_estudantes (nome, idade, turma, notaFinal, aprovado)
values ("Paulo", 12, "6A", 9, true);
insert into tb_estudantes (nome, idade, turma, notaFinal, aprovado)
values ("Sara", 13, "7A", 10, true);
insert into tb_estudantes (nome, idade, turma, notaFinal, aprovado)
values ("Rodolfo", 12, "6A", 8, true);

-- notas maior que 7
select * from tb_estudantes where notaFinal > 7

-- notas menor que 7
select * from tb_estudantes where notaFinal < 7

