-- criando banco de dados
create database empresa_xpt;
-- usando banco de dado
use empresa_xpt;
-- criando tabela
create table funcionarios(
	nome varchar (60), 
    cpf char (12),
    cargo varchar(60),
    salario float,
    naicimento date
    );
insert into funcionarios( nome, cpf,cargo ,salario, naicimento)
values ( 'gabriel',11111111-11,'TI',2000,'1999-09-04'),
	('jorge',222222222-22,'obra',3000,'1998-05-05');
select*from funcionarios;


select nome,  naicimento from funcionarios;

-- • Consulte todas as colunas de todos os funcionários;

-- • Consulte somente as colunas nome, cargo e salário de todos os funcionários.
select nome, cargo, salario from funcionarios;

-- • Consulte as colunas salario e cargo detodos os funcionários
select salario, cargo from funcionarios;

-- where condiçao para seleção de um registro

select*from funcionarios where cargo= "Arquiteto de Software";

-- • Consulte todas as colunas dos funcionários que são do cargo de gerete de projeto;

select nome, cargo, salario from funcionarios where cargo = "Gerente de Projetos";

-- • Consulte as colunas salario e cargo e salario dos funcionários que são Professor;

select salario, cargo from funcionarios where cargo =  "Professor";

-- • Consulte nome cargo e salario de quem recebe acima de 10000 reais.

select nome, cargo , salario from funcionarios where salario  > 1000;

-- Consulte nome de quem recebe abaixo do salário mínimo no estado do RJ

select nome from  funcionarios where nome > 1000;

-- • Consulte os cargos que o salário é maior ou igual a 28 mil reais;

select cargo, salario from funcionarios where salario >= 28000;

-- • Procure no Sistema a funcionária Monica Yates;

select*from funcionarios where nome = "Monica Yates";

-- Procure no Sistema o cargo e salario da funcionária Jennifer Gardner;

select*from funcionarios where nome = "Jennifer Gardner";

-- criando alias ( apelido) para colunas:

select  
	nome as 'Nomeo Completo ',
    salario as 'Salario', 
    naicimento as 'Data de Nascimento'
	from funcionarios;

-- Qual é a data de nascimento do Russell Cole?

select naicimento from funcionarios where nome = 'Russell Cole';

-- Qual o nome e o cargo do funcionário com CPF 84716339531?

select nome, cargo, cpf from funcionarios where cpf = 84716339531;

-- Consulte todas as colunas de todos os funcionários com os funcionários em ordem alfabética;
select*from funcionarios  order by nome asc; 

-- Consulte somente as colunas nome, cargo e salário de todos os funcionários ordenado pelo salário do maior para menor;

select*from funcionarios order by salario desc;

-- Consulte as colunas salario e cargo de todos os funcionários ordenado do mais velho até o mais novo.

select*from funcionarios order by naicimento asc;

-- • Consulte o nome completo e cargo dos 5 funcionários com maior salário;

select*from funcionarios order by salario desc limit  5; 

select*from funcionarios order by naicimento asc limit 1;

select*from funcionarios order by salario asc limit 10;
