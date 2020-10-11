CREATE DATABASE SpMedGroup

USE SpMedGroup

--Tabelas de Telefone
CREATE TABLE Telefone (
IdTelefone INT PRIMARY KEY IDENTITY,
NumTelefone VARCHAR (255) NOT NULL
);
--Tabela de endereços
CREATE TABLE Endereço (
IdEndereco	INT PRIMARY KEY IDENTITY,
Endereco	VARCHAR (255) NOT NULL UNIQUE
);
--Tabela de clínicas 
CREATE TABLE Clinica (
IdClinica		INT PRIMARY KEY IDENTITY,
Clinica			VARCHAR (255)NOT NULL, 
CNPJ			VARCHAR (255)NOT NULL UNIQUE,
RazaoSocial		VARCHAR (255)NOT NULL ,
IdEndereco	INT FOREIGN KEY REFERENCES Endereço (IdEndereco),
IdTelefone INT FOREIGN KEY REFERENCES Telefone (IdTelefone )
);



--Tabela der tipos de usuarios --
CREATE TABLE TiposUsuarios (
IdTiposUsuarios		INT PRIMARY KEY IDENTITY,
TipoUsuario			VARCHAR (255) NOT NULL UNIQUE
);
-- Tabelas de especialidades 
CREATE TABLE Especialidades (
IdEspecialidades		INT PRIMARY KEY IDENTITY,
TipoEspecialidade		VARCHAR (255) NOT NULL UNIQUE
);
-- Tabela de administrador
CREATE TABLE Administrador (
IdAdministrador		INT PRIMARY KEY IDENTITY,
Nome				VARCHAR (255)NOT NULL,
Senha				VARCHAR (255)NOT NULL,
Email				VARCHAR (255)NOT NULL,
CPF					VARCHAR (255)NOT NULL,
IdTiposUsuarios		INT FOREIGN KEY REFERENCES TiposUsuarios (idTiposUsuarios)
);
-- Tabela de médico
CREATE TABLE Medico (
IdMedico		INT PRIMARY KEY IDENTITY,
Nome			VARCHAR (255)NOT NULL,
CRM				VARCHAR (255)NOT NULL UNIQUE,
Email			VARCHAR (255)NOT NULL UNIQUE,
IdTiposUsuario	INT FOREIGN KEY REFERENCES TiposUsuarios (IdTiposUsuarios),
IdEspecialidades	INT FOREIGN KEY REFERENCES Especialidades (IdEspecialidades),
IdClinica			INT FOREIGN KEY REFERENCES Clinica (IdClinica)
);

--Tabelas de Prontuários
CREATE TABLE Prontuarios (
IdProntuarios	INT PRIMARY KEY IDENTITY,
Nome			VARCHAR (255)NOT NULL,
Email			VARCHAR (255)NOT NULL UNIQUE,
DataNascimento	DATE NOT NULL,
Telefone		VARCHAR (255) NOT NULL UNIQUE,
RG				VARCHAR (255) NOT NULL UNIQUE,
CPF				VARCHAR (255) NOT NULL UNIQUE,
Endereco		VARCHAR (255) NOT NULL,
IdTiposUsuarios INT FOREIGN KEY REFERENCES TiposUsuarios (IdTiposUsuarios)
);
--Tabelas de consulta
CREATE TABLE Consulta (
IdConsulta		INT PRIMARY KEY IDENTITY,
DataConsulta	DATE NOT NULL UNIQUE,
Situacao		VARCHAR (255) NOT NULL,
Descrição		Text,
IdMedico		INT FOREIGN KEY REFERENCES Medico (IdMedico),
IdProntuarios	INT FOREIGN KEY REFERENCES Prontuarios (IdProntuarios),
IdAdministrador INT FOREIGN KEY REFERENCES Administrador (IdAdministrador)
);

