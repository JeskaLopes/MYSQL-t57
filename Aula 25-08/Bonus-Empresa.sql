CREATE DATABASE db_genpresa;

USE db_genpresa;

CREATE TABLE tb_departamentos(

	id bigint auto_increment primary key,
	departamento varchar(255)
);

INSERT INTO tb_departamentos(departamento)
VALUES("Financeiro");

INSERT INTO tb_departamentos(departamento)
VALUES("RH");

INSERT INTO tb_departamentos(departamento)
VALUES("Tecnologia");

INSERT INTO tb_departamentos(departamento)
VALUES("Administração");

SELECT * FROM tb_departamentos;

CREATE TABLE tb_funcionarios(
	id bigint auto_increment primary key,
	nome_funcionario varchar(255),
    cargo varchar(255),
    localidade varchar(255),
    salario decimal(10,2),
    departamento_id bigint,
    
    FOREIGN KEY(departamento_id) REFERENCES tb_departamentos(id)
);

INSERT INTO tb_funcionarios(nome_funcionario, cargo, localidade, salario,departamento_id)
VALUES("Maria Freitas","Analista Fiscal","SP",2500, 1);

INSERT INTO tb_funcionarios(nome_funcionario, cargo, localidade, salario,departamento_id)
VALUES("Aldair Jr.","Assistente Fiscal","SP",1500, 1);

INSERT INTO tb_funcionarios(nome_funcionario, cargo, localidade, salario,departamento_id)
VALUES("José Bonifácio","Gerente de Pessoas","Rio de Janeiro",3100, 2);

INSERT INTO tb_funcionarios(nome_funcionario, cargo, localidade, salario,departamento_id)
VALUES("Judith Lopes","Desenvolvedora Java","Recife",5100, 3);

INSERT INTO tb_funcionarios(nome_funcionario, cargo, localidade, salario,departamento_id)
VALUES("Amália Santos","Desenvolvedora Java","SP",5100, 3);

INSERT INTO tb_funcionarios(nome_funcionario, cargo, localidade, salario,departamento_id)
VALUES("Roberto Silva","DBA Jr.","MG",3200, 3);

INSERT INTO tb_funcionarios(nome_funcionario, cargo, localidade, salario,departamento_id)
VALUES("Adriana Carvalho","CEO","SP",10000, 4);

SELECT * FROM tb_funcionarios;