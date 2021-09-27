create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe (
	id_classe bigint auto_increment,
    nomeClasse varchar(255) not null,
    idade bigint not null,
    sexo varchar(255) not null,
    
    primary key (id_classe)
);

create table tb_personagem (
	id_personagem bigint auto_increment,
	nome varchar(255) not null,
    poderAtaque varchar(255) not null,
    poderDefesa varchar(255) not null,
    arma varchar(255) not null,
    classe bigint null,
    
    
    primary key (id_personagem),
	foreign key (classe) references tb_classe (id_classe)
);

insert into tb_classe (nomeClasse, idade, sexo) 
values ("guerreiro", 34, "masculino"),
("Mago", 21, "feminino"),
("Monstro", 70, "masculino"),
("Assassino", 26, "masculino"),
("Arqueiro", 23, "feminino");

select * from tb_classe;

insert into tb_personagem (nome, poderAtaque, poderDefesa, arma, classe)
value ("Daniel", 3000, 2100, "espada", 1),
("Gabriel", 1000, 5000, "cajado", 1),
("Voldemort", 2500, 6000, "varinha", 2),
("Harry", 8000, 1050, "machado", 3),
("Kevin", 4500, 4600, "Arco", 5),
("Spencer", 7300, 3400, "Adagas", 4),
("Cortana", 6500, 900, "facão", 4),
("Pedro", 900, 900, "espada", 1);

select * from tb_personagem where poderAtaque > 2000;

select * from tb_personagem where poderDefesa between 1000 and 2000;

select * from tb_personagem where nome like "%C%";

select tb_personagem.nome, tb_personagem.arma, tb_classe.nomeClasse from tb_personagem
inner join tb_classe on tb_personagem.classe = tb_classe.id_classe
where tb_personagem.classe = 1;
