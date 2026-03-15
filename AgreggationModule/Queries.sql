-- SELECIONANDO MAIS DE UMA COLUNA;
SELECT column1, column2 -- AQUI SELECIONAMOS A COLUNA1 & COLUNA2
FROM movies 

__TRABALHANDO__O__AS:

-- RENOMEANDO UMA COLUNA;
SELECT name AS 'Titles' -- UTILIZAMOS A PALAVRA_CHAVE 'AS' QUE DEFINE QUE NAME AGORA SERA 'Title';
FROM movies;

-- FILTRANDO VALORES UNICOS EM UMA COLIUNA;
SELECT DISTINCT genre
FROM movies;

-- OPERADORES DE COMPARAÇÃO:
-- =igual a 
-- !=não é igual a
-- >maior que
-- <menor que
-- >=maior ou igual a
-- <=menor ou igual a


-- FILTRO SELECIONAR TODOS OS FILMES RECENTES APÒS 2014 
SELECT * 
FROM movies
WHERE year > 2014;


__TRABALHANDO__COM__LIKE:

-- COMPARANDO VALORES SEMELHANTES COM O COMANDO LIKE
SELECT * 
FROM movies
WHERE name LIKE 'Se_en'; -- AQUI PEGAMOS POR FEFERENCIA A UM PALAVRA DE INCIO E FIM, COMO UM FILTRO;

-- _ SIGNIFICA QUE PODEMOS RETONAR ALGUMAS PALAVRAS SEM QUEBRAS A BUSCA DE PADRÃO.

-- % - INDICA QUE QUEREMOS RETORNAR SOMENTE FILMES CUJA O NOME COMEÇE COM A LETRA 'A';
-- A% - INDICA TODOS OS FILMES QUE COMEÇAM COM A LETRA 'A';
-- %a - INDICA TODOS OS FILMES QUE TEMINAM COM A LETRA 'a';
-- %man% - INDICA TAMBEM QUE QUALQUER FILME QUE CONTENHA 'man';
SELECT * 
FROM movies
WHERE name LIKE 'A%';

__TRABALHANDO__COM__BETWEEN

-- BETWEEN - É UM CLAUSURA QUE RETORNA UM INTERVALO DE VALORES ENTRE UM BUSCA.
SELECT *
FROM movies
WHERE year BETWEEN 1990 AND 1999; -- FILTRO COM NUMEROS;

SELECT *
FROM movies
WHERE name BETWEEN 'A' AND 'J'; -- FILTRO COM TEXTO;

-- FILTRANDO VALORES DE TEXTO COM BETWEEN;
SELECT *
FROM movies
WHERE name BETWEEN 'D' AND 'G';

-- FILTRANDO VALORES DE NUMERO COM BETWEEN;
SELECT * 
FROM movies
WHERE year BETWEEN 1970 AND 1979;


__TRABALHANDO__COM_O__OR:

-- OR - Condição que permite filtrar uma ou mais condição, desde que exista alguma que seja verdadeira.

SELECT *
FROM movies
WHERE genre = 'romance'
    OR  genre = 'comedy';

__TRABALHANDO__COM__O__ORDER_BY:

-- ORDER BY - É um operador que nos auxilia na ordenação de dados. Seja em ordem numerica ou alfabetica.

-- ORDENANDO de A-Z:
SELECT *
FROM movies
ORDER BY name; -- ORDENARA OS NOME DE A-Z:

-- ORDENANDO DE Z-A:
SELECT *
FROM movies
ORDER BY year DESC;-- DESC - Descrecente
ORDER BY year ASC; -- ASC - Crescente

SELECT name, year,imdb_rating
FROM movies
ORDER BY imdb_rating DESC;

__TRABALHANDO__COM__LIMIT:

SELECT *
FROM movies
LIMIT 10; -- LIMITANDO UMA BUSCA NAS PRIMEIRAS 10 LINHAS.

-- RETORNANDO OS 3 FILMES COM AVALIAÇÔES MAIS ALTAS.
SELECT *
FROM movies
ORDER BY imdb_rating DESC LIMIT 3;


__TRABALHANDO__COM__CASE:

-- CASE - è uma clausula qeu usamos quando quermos fazer condiçoes em uma base de dados:

SELECT name,
 CASE
  WHEN imdb_rating > 8 THEN 'Fantastic'
  WHEN imdb_rating > 6 THEN 'Poorly Received'
  ELSE 'Avoid at All Costs'
 END
FROM movies;

SELECT name,
 CASE
  WHEN imdb_rating > 8 THEN 'Fantastic'
  WHEN imdb_rating > 6 THEN 'Poorly Received'
  ELSE 'Avoid at All Costs'
 END AS 'Review'
FROM movies;

SELECT name,
  CASE
    WHEN genre = 'romance' THEN 'Chill'
    WHEN genre = 'comedy' THEN 'Chill'
  ELSE 
    'Intense'
  END AS 'Mood'
FROM movies;
