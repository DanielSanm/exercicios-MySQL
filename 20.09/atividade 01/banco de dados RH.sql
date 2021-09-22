-- criando banco de dados do RH
create database db_rh;

-- selecionando o banco db_rh
use db_rh;

-- criando tabela funcionarios
create table tb_funcionarios (
	id bigint auto_increment,
	nome varchar(40) not null,
    idade bigint not null,
    salario decimal(6,2),
    cpf bigint(11) not null,
    casado boolean,
    
    primary key (id)
);

-- inserindo dados na tabela
insert into tb_funcionarios (nome, idade, salario, cpf, casado)
values ("Daniel", 21, 2300.00, 42432943432, false);
insert into tb_funcionarios (nome, idade, salario, cpf, casado)
values ("Paula", 18, 1203.00, 42432432765, true);
insert into tb_funcionarios (nome, idade, salario, cpf, casado)
values ("Camila", 45, 9034.30, 56465943423, true);
insert into tb_funcionarios (nome, idade, salario, cpf, casado)
values ("Carlos", 34, 8754.23, 23765943436, false);
insert into tb_funcionarios (nome, idade, salario, cpf, casado)
values ("Pedro", 25, 4353.65, 67843294646, true);

-- mostrando salarios maior que 2000
select * from tb_funcionarios where salario > 2000

-- mostrando salarios menor que 2000
select * from tb_funcionarios where salario < 2000

