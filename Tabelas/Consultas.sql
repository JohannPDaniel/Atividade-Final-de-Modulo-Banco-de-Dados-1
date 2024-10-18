/*
1 - Consultar todos os tweets e seus autores.
 */
SELECT
    u.nome AS autores,
    t.content AS Tweet
FROM
    tweets t
    INNER JOIN users u ON u.id = t.user_id;

/* 
2 - Encontrar os usuários que curtiram um tweet específico.
 */
SELECT
    u.nome,
    t."content",
    t.user_id
FROM
    users u
    LEFT JOIN likes l ON l.user_id = u.id
    LEFT JOIN tweets t ON t.id = l.tweet_id
WHERE
    t.CONTENT ILIKE '%Meu irmão trabalha no banco de casa%';

/* 
3 - Listar os tweets que foram retweetados por um usuário específico.
 */
SELECT
    u.nome,
    t."content",
    rt.user_id
FROM
    tweets t
    INNER JOIN re_tweets rt ON rt.tweet_id = t.id
    INNER JOIN users u ON u.id = t.user_id
WHERE
    u.id = 1;

/* 
4 - Ver todos os seguidores de um usuário.
 */
SELECT
    u.nome,
    f.follower_id
FROM
    followers f
    INNER JOIN users u ON f.follower_id = u.id
WHERE
    f.user_id = 3;

/* 
5 - Obter a quantidade de likes em cada tweet. 
 */
SELECT
    u.nome,
    t."content" AS tweet,
    count(l.id) AS quantidade_likes
FROM
    likes l
    INNER JOIN tweets t ON t.id = l.tweet_id
    INNER JOIN users u ON u.id = t.user_id
GROUP BY
    u.nome,
    t."content";

/* 
6 - Verificar quais usuários se seguem mutuamente. 
 */
SELECT
    u.nome AS seguidor,
    f.user_id AS seguido
FROM
    users u
    INNER JOIN followers f ON u.id = f.follower_id
WHERE
    u.id = 3;

/* 
7 - Exibir todos os retweets de um determinado tweet.
 */
SELECT
    u.nome,
    rt.id AS re_tweet,
    t."content"
FROM
    re_tweets rt
    INNER JOIN tweets t ON rt.tweet_id = t.id
    INNER JOIN users u ON rt.user_id = u.id
WHERE
    t.id = 4;

/* 
8 - Listar os tweets mais curtidos. 
 */
SELECT
    u.nome AS autor,
    t."content" AS tweet,
    COUNT(l.id) AS total_likes
FROM
    tweets t
    INNER JOIN users u ON t.user_id = u.id
    INNER JOIN likes l ON t.id = l.tweet_id
GROUP BY
    u.nome,
    t."content"
ORDER BY
    total_likes DESC;

/* 
9 - Encontrar o usuário com mais seguidores.
 */
SELECT
    u.nome,
    count(f.follower_id) AS seguidores
FROM
    users u
    INNER JOIN followers f ON u.id = f.user_id
GROUP BY
    u.id,
    u.nome
ORDER BY
    seguidores DESC
LIMIT
    1;

/* 
10 - Obter todos os tweets de um usuário 
e quantos likes cada um recebeu.
 */
SELECT
    u.nome,
    t."content" AS tweets,
    count(l.id) AS quantidade_likes
FROM
    tweets t
    INNER JOIN users u ON t.user_id = u.id
    INNER JOIN likes l ON l.tweet_id = t.id
GROUP BY
    u.nome,
    t.id,
    tweets
ORDER BY
    t.id ASC;