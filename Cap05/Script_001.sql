-- Visão Geral de Distkeys e Sortkeys

--Guia do desenvolvedor de banco de dados
https://docs.aws.amazon.com/pt_br/redshift/latest/dg/welcome.html

--Criar banco de dados
create database VAREJO;

-- criar usuário
CREATE USER MESQUITA PASSWORD 'mudar123';

--Conecte-se no banco VAREJO com o usuário administrador, em nosso caso iA16

--Criar schema
create schema VENDAS authorization MESQUITA;
