USE SpMedGroup

INSERT INTO Telefone (NumTelefone)
VALUES ('Av. Bar�o Limeira, 532, S�o Paulo, SP')

INSERT INTO Endere�o (Endereco)
VALUES ('(11)	99999-9999')

INSERT INTO Clinica (Clinica,CNPJ,RazaoSocial,IdEndereco,IdTelefone)
VALUES ('Clinica Possarle', '86.400.902/0001-30','SP Medical Group',1,1)

INSERT INTO TiposUsuarios (TipoUsuario)
VALUES ('Administrador'),('M�dico'),('Prontu�rio')

INSERT INTO Especialidades (TipoEspecialidade)
VALUES 
('Acunputura')
,('Anestesiologia')
,('Angiologia')
,('Cardiologia')
,('Cirurgia Cardiovascular')
,('Cirurgia da M�o')
,('Cirurgia do Aparelho Digestivo')
,('Cirurgia Geral')
,('Cirurgia Pedi�trica')
,('Cirurgia Pl�stica')
,('Cirurgia Tor�cica')
,('Cirurgia Vascular')
,('Dermatologia')
,('Radioterapia')
,('Urologia')
,('Pediatria')
,('Psiquiatria')

INSERT INTO Administrador (Nome,Senha,Email,CPF,IdTiposUsuarios)
VALUES	('Bonabitacola','Senai123','Bona@admin.com.br','123.456.789-10',1)

INSERT INTO Medico (Nome,CRM,Email,IdTiposUsuario,IdEspecialidades,IdClinica)
VALUES ('Ricardo Lemos','54356-SP','ricardo.lemos@spmedicalgroup.com.br',2,2,1)
,('Roberto Possarle','53452-SP','roberto.possarle@spmedicalgroup.com.br',2,17,1)
,('Helena Strada','65463-SP','helena.souza@spmedicalgroup.com.br',2,16,1)

INSERT INTO Prontuarios (Nome,Email,DataNascimento,Telefone,RG,CPF,Endereco,IdTiposUsuarios)
VALUES 
('Ligia','ligia@gmail.com','13/10/1983','11 3456-7654','43522543-5','94839859000','Rua Estado de Israel 240,�S�o Paulo, Estado de S�o Paulo, 04022-000',3)
,('Alexandre','alexandre@gmail.com','23/07/2001','11 98765-6543','32654345-7','73556944057','Av. Paulista, 1578 - Bela Vista, S�o Paulo - SP, 01310-200',3)
,('Fernando','fernando@gmail.com','10/10/1978','11 97208-4453','54636525-3','16839338002','Av. Ibirapuera - Indian�polis, 2927,  S�o Paulo - SP, 04029-200',3)
,('Henrique','henrique@gmail.com','13/10/1985','11 3456-6543','54366362-5','14332654765','R. Vit�ria, 120 - Vila Sao Jorge, Barueri - SP, 06402-030',3)
,('Jo�o','jo�o@gmail.com','27/08/1975','11 7656-6377','132544444-1','91305348010','R. Ver. Geraldo de Camargo, 66 - Santa Luzia, Ribeir�o Pires - SP, 09405-380',3)
,('Bruno','bruno@gmail.com','21/03/1972','11 95436-8769','54566266-7','79799299004','Alameda dos Arapan�s, 945 - Indian�polis, S�o Paulo - SP, 04524-001',3)
,('Mariana','mariana@gmail.com','05/03/2018','11 956478764','54566266-8','13771913039','R Sao Antonio, 232 - Vila Universal, Barueri - SP, 06407-140',3)

INSERT INTO Consulta (IdMedico,IdProntuarios,IdAdministrador,DataConsulta,Situacao)
VALUES 
(3,7,1,'20/01/2020  15:00:00','Realizada')
,(2,2,1,'06/01/2020  10:00:00','Cancelada')
,(2,3,1,'07/02/2020  11:00:00','Realizada')
,(2,2,1,'06/02/2018  10:00:00','Realizada')
,(1,4,1,'07/02/2019  11:00:45','Cancelada')
,(3,7,1,'08/03/2020  15:00:00','Agendada')
,(1,4,1,'09/03/2020  11:00:45','Agendada')