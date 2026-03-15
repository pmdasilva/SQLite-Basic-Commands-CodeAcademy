
__TRABALHANDO__COM__BETWEEN__FUNÇÕES__ AGGREGATE:

-- SOME FUNCTION OF AGGREGATE
COUNT() -- count the number of rows
SUM() -- sum of all the value in that column.
: the sum of the values in a column
MAX()/MIN() -- the largest/smallest value
AVG() -- average of the values in a column
ROUND() -- round the values in the column


__TRABALHANDO__COM_A_FUNÇÂO_SUM():

-- RETORNANDO TODOS OS APPS QUE SÂO GRATUITOS;
SELECT COUNT(*) 
FROM fake_apps
WHERE price == 0;

-- SOMANDO TODOS OS VALORES DE DOWNLOAD;
SELECT SUM(downloads)
FROM fake_apps;

-- SELECIONADO O MAXIMO DE DOWNLOADS;
SELECT MAX(downloads)
FROM fake_apps;

-- SELECIONADO O MINIMO DE DOWNLOADS;
SELECT MIN(downloads)
FROM fake_apps;

-- RETORNANDO O VALOR DO APLICATIVO MAIS CARO;
SELECT MAX(price)
FROM fake_apps;

-- CALCULANDO A MEDIA DE DOWNLOADS;
SELECT AVG(downloads)
FROM fake_apps;

-- CALCULANDO A MEDIA DE PREÇOS;
SELECT AVG(price)
FROM fake_apps;

-- ARREDONDANDO OS VALORES DE UMA COLUNA PARA 0.0;
SELECT name, ROUND(price, 0)
FROM fake_apps;

SELECT name, ROUND(price, 0)
FROM fake_apps;

-- ARREDONDANDO O VALOR DE PREÇO PARA 2 CASAS DECIMAIS;
SELECT ROUND(AVG(price),2)
FROM fake_apps;

__TRABALHANDO_COM_ORDERBY_I

-- SELECIONANDO TODOS OS PREÇOS QUE TIVERAM DOWNLOADS ACIMA DE 20000.
SELECT price, COUNT(*) 
FROM fake_apps
WHERE downloads > 20000
GROUP BY price;

-- SOMANDO TODAS AS CATEGORIAS E RETORNANDO POR CATEGORIA;
SELECT category, SUM(downloads) 
FROM fake_apps
GROUP BY category;

__TRABALHANDO__COM_GROUPBY_II:

-- SELECIONANDO E ARREDONDANDO UM VALOR:
SELECT ROUND(imdb_rating),
   COUNT(name)
FROM movies
GROUP BY ROUND(imdb_rating)
ORDER BY ROUND(imdb_rating);

-- SELECIONANDO POR REFERENCIA:
SELECT ROUND(imdb_rating),
   COUNT(name)
FROM movies
GROUP BY 1
ORDER BY 1;

SELECT ROUND(imdb_rating),
   COUNT(name)
FROM movies
GROUP BY 1
ORDER BY 1;

SELECT category, 
   price,
   ROUND(AVG(downloads))
FROM fake_apps
GROUP BY 1, price;







