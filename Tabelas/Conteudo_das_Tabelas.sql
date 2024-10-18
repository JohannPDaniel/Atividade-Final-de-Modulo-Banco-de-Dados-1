INSERT INTO
    users (nome, email, username, senha)
VALUES
    (
        'Johann Patricio Daniel',
        'johann@jpd.com',
        'Johann123',
        'JohannPD_123*'
    ),
    (
        'Nathan Patricio Daniel',
        'nathan_daniel@npd.com',
        'Nathan123',
        'Nathan.123@*'
    ),
    (
        'Ana Maria Patricio Daniel',
        'ana_maria@amp.com',
        'AnaMaria123',
        'Ana_Maria@123'
    );

INSERT INTO
    tweets (CONTENT, TYPE, user_id)
VALUES
    (
        'Sofrendo com programação, Bora pra cima !!!',
        'tweet',
        1
    ),
    (
        'Não vejo a hora de chegar minhas férias',
        'tweet',
        1
    ),
    (
        'Meu irmão trabalha no banco de casa, enquanto eu vou para o banco de ônibus. Vida Dificil !!!',
        'tweet',
        2
    ),
    (
        'Meta pra 2025, malhar até virar body builder',
        'tweet',
        2
    ),
    (
        'Johann, me ajuda a acessar aqui o site de receitas pra que eu faça o bolo que você pediu :)',
        'tweet',
        3
    ),
    (
        'Vida de dona de casa é fogo, não vejo a hora de ganhar na megasena',
        'tweet',
        3
    );

INSERT INTO
    likes (user_id, tweet_id)
VALUES
    (1, 3),
    (1, 4),
    (1, 5),
    (1, 6),
    (2, 1),
    (2, 2),
    (2, 5),
    (2, 6),
    (3, 1),
    (3, 2),
    (3, 3),
    (3, 4);

INSERT INTO
    re_tweets (tweet_id, user_id)
VALUES
    (3, 1),
    (4, 1),
    (5, 1),
    (6, 1),
    (1, 2),
    (2, 2),
    (5, 2),
    (6, 2),
    (1, 3),
    (2, 3),
    (3, 3),
    (4, 3);

INSERT INTO
    followers (user_id, follower_id)
VALUES
    (2, 1),
    (3, 1),
    (1, 2),
    (3, 2),
    (1, 3),
    (2, 3);