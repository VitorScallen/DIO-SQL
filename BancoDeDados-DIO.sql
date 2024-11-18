/* Buscar o nome e ano dos filmes */
SELECT NOME, ANO FROM FILMES

/* Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano */
SELECT NOME, ANO FROM FILMES
ORDER BY ANO

/* Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração */
SELECT NOME, ANO, DURACAO FROM FILMES
WHERE NOME = 'De Volta para o Futuro'

/* Buscar os filmes lançados em 1997 */
 SELECT NOME FROM FILMES
 WHERE ANO = '1997'

 /* Buscar os filmes lançados APÓS o ano 2000 */
 SELECT NOME, ANO, DURACAO FROM FILMES
 WHERE ANO > '2000'

/* Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente */
SELECT NOME, ANO, DURACAO FROM FILMES
WHERE DURACAO > '100' AND DURACAO < '150'

/* Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente */
SELECT Ano, COUNT(*) AS FilmeQuantidade
FROM Filmes
GROUP BY Ano
ORDER BY COUNT(*) DESC; -- Ordena pela quantidade de filmes em ordem decrescente

/* Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome */

SELECT PRIMEIRONOME, ULTIMONOME FROM ATORES
WHERE GENERO = 'M'

/* Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome */
SELECT PrimeiroNome, UltimoNome FROM Atores 
WHERE Genero = 'F' 
ORDER BY PrimeiroNome;

/* Buscar o nome do filme e o gênero */
SELECTf.Nome,g.Genero
FROM FILMES f
JOIN GENEROS g ON f.Id = g.ID;

/* Buscar o nome do filme e o gênero do tipo "Mistério" */
SELECT 
    f.Nome,g.Genero,a.PrimeiroNome,a.UltimoNome, e.Papel
FROM Filmes f
JOIN 
    Generos g ON f.Id= g.Id
JOIN 
    ElencoFilme e ON f.idAtor = e.IdAtor
select * from ElencoFilme