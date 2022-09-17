create database controle_funcionarios;
use  controle_funcionarios;
-- drop database controle_funcionarios;

CREATE TABLE funcionario (
	idFuncionario int auto_increment primary key,
	Nome_Funcionario nchar(25),
	NomeMeio_funcionario nchar(25),
	Sobrenome_funcionario nchar(25),
	endereco nchar(25),
    CPF char(11) not null,
	telefone int,
	idRank int NOT NULL,
  constraint unique_cpf_client unique (CPF)
  );
alter table funcionario auto_increment = 1;

CREATE TABLE Entrada_Setor (
	idSetor int NOT NULL primary key,
    idFuncionario int NOT NULL,
	Horario_entrada datetime NOT NULL,
 constraint fk_funcionario_registro foreign key (idFuncionario) references funcionario(idFuncionario)
);

CREATE TABLE saida_setor (
	idSaida int NOT NULL primary key,
	idFuncionario int NOT NULL,
	horario_saida int NOT NULL,
  constraint fk_funcionario_registro_saida foreign key (idFuncionario) references funcionario(idFuncionario)
  
);
CREATE TABLE Ranks (
	idRank int NOT NULL primary key,
    idFuncionario int NOT NULL,
	titulo nchar NOT NULL,
	custo_por_hora nchar NOT NULL,
constraint fk_Rank_funcionario foreign key (idFuncionario) references funcionario(idFuncionario)
 
);

CREATE TABLE Registro (
	idRegistro int NOT NULL primary key,
    Customer_nome nchar(25) NOT NULL,
	Customer_meioNome nchar(25) NOT NULL,
	Customer_telefone int NOT NULL,
	Data_Registro datetime NOT NULL,
	idTipo int NOT NULL,
	idFuncionario int NOT NULL,
    constraint fk_Registro_funcionario foreign key (idFuncionario) references funcionario(idFuncionario)
  

);

CREATE TABLE tipo_de_trabalho (
	idTipo int NOT NULL primary key,
    idFuncionario int NOT NULL,
	Titulo_Tipo nchar NOT NULL,
	Custo_por_hora int NOT NULL,
  constraint fk_tipo_trabalho_funcionario foreign key (idFuncionario) references funcionario(idFuncionario)

);

