/* Exemplo comentario*/

/**
Exemplo comentario de bloco 
*/


/*EXERCICIO ESCOLA */
/*Comando de criação de banco de dados*/
CREATE DATABASE db_escola_generation;

/*Seleciona o banco de dados a ser usado*/
USE db_escola_generation;

/*Comando para criação de tabela*/
CREATE TABLE tb_alunes(
    id bigint auto_increment primary key,
	nome varchar(255),
    data_nascimento date,
    turma int,
    
    /*o tipo de dado decimal lê se: Primeiro numero informado indica a quantiade de caracteres total do campo contando com os nºs depois da virgula, o segundo numero informa os numeros aceitos depois da virgula*/
    nota decimal(4,2)
);


/*Inserir dados na tabela (8 registros)*/
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Batatinha","1997-09-17", 57, 5);

/*Seleciona todos os dados da tabela de alunes*/
SELECT * FROM tb_alunes;

/*Seleciona todos os dados da tabela de alunes ONDE a nota for maior que 7*/
SELECT * FROM tb_alunes WHERE nota > 7;


/*Seleciona todos os dados da tabela de alunes ONDE a nota for menor que 7*/
SELECT * FROM tb_alunes WHERE nota < 7;

/*Query de atualização*/
UPDATE tb_alunes SET nota = 7 WHERE id=3;

