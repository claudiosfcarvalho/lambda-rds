-- DDL
-- criar schema
create schema if not exists rds_running;

use rds_running;

-- criar a tabela de usuários
drop table if exists usuario;
create table usuario (
    id integer primary key auto_increment,
    nome varchar(100) not null,
    email varchar(100) not null
);

-- criar a tabela de treino
drop table if exists treino;
create table treino (
    id integer primary key auto_increment,
    tipo_treino varchar(100) not null,
    descricao varchar(1000) not null
);

-- criar a tabela de planilha de treino
drop table if exists planilha_treino;
create table planilha_treino (
    id integer primary key auto_increment,
    id_treino integer not null primary key,
    data_inicio date not null,
    data_fim date not null,
    foreign key (id_treino) references treino(id)
);

-- criar a tabela de treinos para usuários
drop table if exists treino_usuario;
create table treino_usuario (
    id integer primary key auto_increment,
    id_usuario integer not null,
    id_planilha_treino integer not null,
    foreign key (id_usuario) references usuario(id),
    foreign key (id_planilha_treino) references planilha_treino(id)
);


-- DML
-- inserir dados
insert into usuario (nome, email) values ('Claudio', 'claudio@email.com');

insert into treino (tipo_treino, descricao) values ('Treino de força membros superiores A', 'Treino de força para corredores - Básico A');
insert into treino (tipo_treino, descricao) values ('Treino de força membros inferiores B', 'Treino de força para corredores - Básico B');
insert into treino (tipo_treino, descricao) values ('Treino educativo corredores', 'Treino de força para corredores - Intermediário A');
insert into treino (tipo_treino, descricao) values ('Treino de corrida continuo 5k', '2km Aquecimento, 2km corrida continua intensa, 1km desaquecimento');
insert into treino (tipo_treino, descricao) values ('Treino de corrida continuo 8k', '1km Aquecimento, 6km corrida continua intensa, 1km desaquecimento');
insert into treino (tipo_treino, descricao) values ('Treino de corrida continuo 10k', '1km Aquecimento, 8km corrida continua intensa, 1km desaquecimento');
insert into treino (tipo_treino, descricao) values ('Treino de corrida continuo 12k', '1km Aquecimento, 10km corrida continua intensa, 1km desaquecimento');
insert into treino (tipo_treino, descricao) values ('Treino de corrida continuo 15k', '1km Aquecimento, 13km corrida continua intensa, 1km desaquecimento');
insert into treino (tipo_treino, descricao) values ('Treino de corrida continuo 20k', '1km Aquecimento, 18km corrida continua intensa, 1km desaquecimento');
insert into treino (tipo_treino, descricao) values ('Treino de corrida intervalado 5k', '1km Aquecimento, 5x1km corrida forte, 1km desaquecimento');
insert into treino (tipo_treino, descricao) values ('Treino de corrida intervalado 10k', '1km Aquecimento, 8x1km corrida forte, 1km desaquecimento');
insert into treino (tipo_treino, descricao) values ('Treino de corrida intervalado 15k', '1km Aquecimento, 13x1km corrida forte, 1km desaquecimento');
insert into treino (tipo_treino, descricao) values ('Treino de corrida intervalado 20k', '1km Aquecimento, 18x1km corrida forte, 1km desaquecimento');
insert into treino (tipo_treino, descricao) values ('Treino de corrida intervalado 25k', '1km Aquecimento, 23x1km corrida forte, 1km desaquecimento');
insert into treino (tipo_treino, descricao) values ('Treino de corrida longo 5k', '10min Aquecimento educativo parado, 5km corrida continua');
insert into treino (tipo_treino, descricao) values ('Treino de corrida longo 10k', '10min Aquecimento educativo parado, 10km corrida continua');
insert into treino (tipo_treino, descricao) values ('Treino de corrida longo 15k', '10min Aquecimento educativo parado, 15km corrida continua');
insert into treino (tipo_treino, descricao) values ('Treino de corrida longo 20k', '10min Aquecimento educativo parado, 20km corrida continua');
insert into treino (tipo_treino, descricao) values ('Treino de corrida longo 25k', '10min Aquecimento educativo parado, 25km corrida continua');
insert into treino (tipo_treino, descricao) values ('Treino de corrida longo 30k', '10min Aquecimento educativo parado, 30km corrida continua');
insert into treino (tipo_treino, descricao) values ('Treino de corrida longo 35k', '10min Aquecimento educativo parado, 35km corrida continua');
insert into treino (tipo_treino, descricao) values ('Treino de corrida longo 40k', '10min Aquecimento educativo parado, 40km corrida continua');

insert into planilha_treino (id_treino, data_inicio, data_fim) values (1, '2021-01-01', '2021-01-31');
insert into planilha_treino (id_treino, data_inicio, data_fim) values (2, '2021-02-01', '2021-02-28');

insert into treino_usuario (id_usuario, id_planilha_treino) values (1, 1);