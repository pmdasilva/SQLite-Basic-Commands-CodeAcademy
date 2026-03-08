# APRENDA SQL

Criar uma tabela
Neste projeto, você criará sua própria friendstabela e adicionará/excluirá dados dela!

As instruções fornecidas são apenas uma orientação geral. Sinta-se à vontade para adicionar mais colunas, inserir mais dados e criar mais tabelas.

Após concluir as instruções de cada tarefa abaixo, clique no botão "Salvar" para verificar seu progresso. Se nada aparecer na guia "Resultados da Consulta" à direita, verifique novamente seu trabalho em busca de erros de sintaxe.

Se você ficar preso durante este projeto ou quiser ver um desenvolvedor experiente resolvendo-o, clique em " Desatar o problema" para assistir a um vídeo explicativo.

## Tarefas
- 9/9 completo​​
- Marque as tarefas como concluídas, riscando-as da lista.

### 1 .Crie uma tabela friendscom três colunas:

- id que armazenaINTEGER
- name que armazenaTEXT
- birthday que armazenaDATE

RESOLUÇÃO:
CREATE TABLE friends (
  id INTEGER,
  name TEXT,
  birthday DATA
);

### 2 .Abaixo do seu código atual, adicione Ororo Munroe a friends.
- O aniversário dela é 30 de maio de 1940.

RESOLUÇÃO:
INSERT INTO friends(id, name, birthday)
VALUES (1,'Ororo Munroe','30-05-1940');

### 3 .Vamos garantir que Ororo foi adicionado ao banco de dados:
Verifique duas coisas:
- A tabela foi friendscriada?
- Ororo Munroe foi adicionado à lista?

RESOLUÇÃO:
SELECT * 
FROM friends;

### 4 .Vamos em frente!
- Adicione dois de seus amigos à mesa.
- Insira um id, name, e birthdaypara cada um deles.

RESOLUÇÃO:
INSERT INTO friends(id, name, birthday)
VALUES (2,'Marcelo Ozie','05-12-1949');

INSERT INTO friends(id, name, birthday)
VALUES (3,'Anie Lizard','17-04-1987');

### 5 .Ororo Munroe acaba de perceber que consegue controlar o clima e decidiu mudar de nome. Seu novo nome é "Tempestade".

- Atualize o registro dela em friends.

RESOLUÇÃO:
UPDATE friends
SET name = "Tempestade"
WHERE name = 'Ororo Munroe';

### 6 .Adicione uma nova coluna chamada email.
RESOLUÇÂO:
ALTER TABLE friends
ADD COLUMN email TEXT;

### 7 .Atualize o endereço de e-mail de todos os membros da sua mesa.

- O e-mail de Storm é storm@codecademy.com.

RESOLUÇÂO:
UPDATE friends
SET email = 'storm@codecademy.com'
WHERE id = 1;

UPDATE friends
SET email = 'storm@codecademy.com'
WHERE id = 2;

UPDATE friends
SET email = 'storm@codecademy.com'
WHERE id = 3;

### 8 .Espere, a Tempestade é fictícia…

- Retire-a de lá friends.

RESOLUÇÂO:
DELETE FROM friends 
WHERE id
IN (1);

### 9 .
- Excelente trabalho! 
