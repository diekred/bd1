-- 1. Seleciona os usuários nascidos antes de 1990 KAIO
SELECT nome, sobrenome
FROM usuarios
WHERE datanascimento < '1990-01-01';

-- 2. Seleciona nick e email de usuários cujo nick começa com "S" LEONARDO
SELECT nick, email
FROM usuarios
WHERE nick LIKE 'S%';

-- 3. Seleciona nick e último login, ordenado do mais recente ao mais antigo ALEXANDRE
SELECT nick, ultimologin
FROM usuarios
ORDER BY ultimologin DESC;

-- 4. Seleciona nome, sobrenome e email de usuários com email do Gmail, ordenados por nome ALEXANDRE
SELECT nome, sobrenome, email
FROM usuarios
WHERE email LIKE '%gmail.com'
ORDER BY nome;

-- 5. Seleciona nome de usuário e texto do post (junção entre usuários e posts) KAIO
SELECT u.nome, p.texto
FROM usuarios u, posts p
WHERE u.id = p.usuarioid;

-- 6. Seleciona nick e legenda das fotos (junção entre usuários e fotos), ordenado por data de postagem LEONARDO
SELECT u.nick, f.legenda
FROM usuarios u, foto f
WHERE u.id = f.usuarioid
ORDER BY f.datapostagem DESC;

-- 7. Seleciona nome, texto do post e comentário (junção entre usuários, posts e comentários) ALEXANDRE
SELECT u.nome, p.texto, c.texto AS comentario
FROM usuarios u, posts p, comentarios c
WHERE u.id = p.usuarioid AND p.id = c.postid;

-- 8. Une nick e email de todos os usuários, sem duplicação LEONARDO
SELECT nick AS identificador FROM usuarios
UNION
SELECT email FROM usuarios;

-- 9. Seleciona todos os nicks, exceto 'Phoenix123' KAIO
SELECT nick FROM usuarios
EXCEPT
SELECT 'Phoenix123';

-- 10. Seleciona nomes de usuários que também existem entre os que têm id menor que 5 LEONARDO
SELECT u.nome FROM usuarios u
INTERSECT
SELECT u2.nome FROM usuarios u2 WHERE u2.id < 5;

-- 11. Junção entre usuários e seguidores para mostrar quem segue quem ALEXANDRE
SELECT u1.nick AS seguido, u2.nick AS seguidor
FROM usuarios u1, usuarios u2, seguidores s
WHERE u1.id = s.usuarioid AND u2.id = s.seguidorid;

-- 12. Junção entre usuários, posts e likes para mostrar quem deu like em que post KAIO
SELECT u.nick, p.texto
FROM usuarios u, posts p, likes l
WHERE u.id = l.usuarioid AND p.id = l.postid;