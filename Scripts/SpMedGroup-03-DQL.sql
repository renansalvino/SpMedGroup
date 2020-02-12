USE SpMedGroup

--Exercicio 13
GO
CREATE FUNCTION BuscarEspecialidade (@Especialidade INT)
Returns table
return
SELECT * FROM Medico
WHERE IdEspecialidades = @Especialidade
GO

SELECT * FROM BuscarEspecialidade (17) as Especialidades

SELECT Nome,CRM,Email,Clinica,TipoEspecialidade
FROM Medico 
INNER JOIN Especialidades
ON Medico.IdEspecialidades = Especialidades.IdEspecialidades
Inner join Clinica
On Medico.IdClinica = Clinica.IdClinica

-- Exercicio 12 -- 
SELECT COUNT (IdProntuarios)as 'Numero de Pacientes' FROM Prontuarios

