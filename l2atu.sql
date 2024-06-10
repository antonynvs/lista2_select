use avaliacao_222b;

--  Selecionar Livros Disponíveis: Encontre todos os livros que estão disponíveis para empréstimo.

select *
from livros
where disponivel = true;

-- Selecionar por Editora: Liste todos os livros publicados pela editora "HarperCollins".

select *
from livros
where editora = "HarperCollins";

-- Selecionar por Ano de Publicação: Encontre todos os livros publicados entre 2000 e 2010.

select *
from livros
where ano_publicacao > 2000 and ano_publicacao < 2010;

-- Selecionar com COUNT e HAVING: Conte quantos livros cada autor tem na tabela e mostre apenas os autores com mais de 3 livros.

SELECT autor, COUNT(*) AS quantidade_de_livros
FROM livros
GROUP BY autor
HAVING COUNT(*) > 3;

-- Selecionar com LIKE: Encontre todos os livros cujo título contém a palavra "Senhor".

select titulo
from livros
where titulo like '%Senhor%';

-- Selecionar com IN: Liste todos os livros que estão na categoria "Fantasia", "Ficção Científica" ou "Fábula".

SELECT titulo, autor, categoria
FROM livros
WHERE categoria IN ('Fantasia', 'Ficção Científica', 'Fábula');


-- Selecionar com DISTINCT: Encontre todos os diferentes idiomas em que os livros foram escritos.

SELECT DISTINCT idioma
FROM livros;


-- Selecionar com BETWEEN: Liste todos os livros cujo número de páginas está entre 200 e 400.

select *
from livros
where quantidade_paginas between 200 and 400;

-- Selecionar com EXISTS: Verifique se existem livros na categoria "História".

SELECT 1
FROM livros
WHERE EXISTS (
    SELECT 1
    FROM livros
    WHERE categoria = 'História'
);


-- Selecionar Títulos e Anos de Publicação: Liste os títulos e anos de publicação de todos os livros, ordenados pelo ano de publicação.

select titulo, ano_publicacao
from livros
order by ano_publicacao