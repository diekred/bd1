-- Criação da tabela usuarios
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    sobrenome VARCHAR(50),
    nick VARCHAR(30) UNIQUE,
    email VARCHAR(100) UNIQUE,
    senha VARCHAR(50),
    datanascimento DATE,
    ultimologin TIMESTAMP,
    cadastro TIMESTAMP
);

-- Criação da tabela posts
CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    usuarioid INTEGER REFERENCES usuarios(id),
    texto TEXT,
    datapostagem TIMESTAMP
);

-- Criação da tabela foto
CREATE TABLE foto (
    id SERIAL PRIMARY KEY,
    usuarioid INTEGER REFERENCES usuarios(id),
    caminhofoto VARCHAR(255),
    legenda TEXT,
    datapostagem TIMESTAMP
);

-- Criação da tabela comentarios
CREATE TABLE comentarios (
    id SERIAL PRIMARY KEY,
    usuarioid INTEGER REFERENCES usuarios(id),
    postid INTEGER REFERENCES posts(id),
    texto TEXT,
    datapostagem TIMESTAMP
);

-- Criação da tabela seguidores
CREATE TABLE seguidores (
    usuarioid INTEGER REFERENCES usuarios(id),
    seguidorid INTEGER REFERENCES usuarios(id),
    PRIMARY KEY (usuarioid, seguidorid)
);

-- Criação da tabela likes
CREATE TABLE likes (
    id SERIAL PRIMARY KEY,
    usuarioid INTEGER REFERENCES usuarios(id),
    postid INTEGER REFERENCES posts(id)
);