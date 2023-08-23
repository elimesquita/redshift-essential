CREATE TABLE departamento(
    id_departamento int PRIMARY KEY,
    nome_departamento varchar(80)
)


--Sintaxe 001
CREATE TABLE usuario(
    id_usuario int PRIMARY KEY,
    nome_usuario varchar(120),
    email_usuario varchar(120),
    id_departamento int,
FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento)
)

--Sintaxe 002
CREATE TABLE usuario(
    id_usuario int PRIMARY KEY,
    nome_usuario varchar(120),
    email_usuario varchar(120),
    id_departamento int,
FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento)
);


--Validando as tabelas
SELECT * FROM departamento;
SELECT * FROM usuario;


--Inserindo Dados nas Tabelas:
--Tabela de Departamento
INSERT INTO departamento(id_departamento,nome_departamento) VALUES(1,'Engenharia de Dados');
INSERT INTO departamento(id_departamento,nome_departamento) VALUES(1,'Arquitetura de Dados');
UPDATE departamento SET id_departamento = 2 WHERE nome_departamento = 'Arquitetura de Dados';
INSERT INTO departamento(id_departamento,nome_departamento) VALUES(3,'Ciência de Dados');
INSERT INTO departamento VALUES(4,'Devops');
INSERT INTO departamento VALUES(5,'Vendas');

--Tabela de Usuário
INSERT INTO usuario(id_usuario, nome_usuario, email_usuario,id_departamento) VALUES (1,'Eliézio Mesquita', 'eliezio.mesquita@ia16.com.br','1');
INSERT INTO usuario(id_usuario, nome_usuario, email_usuario,id_departamento) VALUES (1,'Jose Silva', 'eliezio.mesquita@ia16.com.br','2');
INSERT INTO usuario(id_usuario, nome_usuario, email_usuario,id_departamento) VALUES (1,'Carlos Souza', 'eliezio.mesquita@ia16.com.br','3');
INSERT INTO usuario VALUES (1,'Maria Mendes', 'eliezio.mesquita@ia16.com.br','4');
INSERT INTO usuario VALUES (1,'João Machado', 'eliezio.mesquita@ia16.com.br','6');

## Importante
As restrições de chave externa são somente informativas. 
Elas não são impostas pelo sistema, mas são usadas pelo 
planejador. (Executor de Query)

--https://docs.aws.amazon.com/pt_br/redshift/latest/dg/r_CREATE_TABLE_NEW.html

--Validando as Constraint
SELECT 
    table_name,
    constraint_name, 
    constraint_type
FROM information_schema.table_constraints;

SELECT 
    constraint_name, 
    constraint_type
FROM information_schema.table_constraints
WHERE constraint_schema ='public'
AND table_name = 'usuario';

-- Deletando Linhas

DELETE FROM departamento where id_departamento = 1;
SELECT * FROM departamento;

-- Drop e Validação de Constraint
DROP TABLE departamento;
DROP TABLE departamento CASCADE;

DROP TABLE usuario;
DROP TABLE usuario CASCADE;
