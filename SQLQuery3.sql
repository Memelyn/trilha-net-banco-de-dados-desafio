--1
SELECT 
Nome,
Ano
FROM FILMES

--2
ORDER BY Ano 

--3
SELECT 
Nome,
Ano,
Duracao
FROM FILMES
WHERE Nome = 'De Volta para o Futuro'

--4
SELECT 
Nome,
Ano,
Duracao
FROM FILMES
WHERE Ano = 1997

--5
SELECT 
Nome,
Ano,
Duracao
FROM FILMES
WHERE Ano LIKE '2%'

--6 
SELECT 
Nome,
Ano,
Duracao
FROM FILMES
WHERE Duracao > 100 AND duracao < 150
ORDER BY Duracao

--7 
SELECT 
Ano,
Count (*) Quantidade
FROM FILMES
GROUP BY Ano
ORDER BY MAX(Duracao) DESC

--8
SELECT 
PrimeiroNome,
UltimoNome
FROM Atores
WHERE Genero = 'M'

--9
SELECT 
PrimeiroNome,
UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT 
Filmes.Nome,
Generos.Genero
FROM Filmes
INNER JOIN Generos ON Filmes.Id = Generos.Id

--11
SELECT 
Filmes.Nome,
Generos.Genero
FROM Filmes
INNER JOIN Generos ON Filmes.Id = Generos.Id
WHERE Genero = 'Mistério'



--12
SELECT 
Filmes.Nome,
Atores.PrimeiroNome,
Atores.UltimoNome,
ElencoFilme.Papel
FROM Filmes
INNER JOIN Atores ON Filmes.Id = Atores.Id
INNER JOIN ElencoFilme ON ElencoFilme.Id = Atores.Id
WHERE Genero = 'Mistério'