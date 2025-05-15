-- Inserção de usuários (agentes de Valorant)
INSERT INTO usuarios (id, nome, sobrenome, nick, email, senha, datanascimento, ultimologin, cadastro) VALUES
(1, 'Jett', 'Lee', 'Jett_Ventinho', 'jett@gmail.com', 'vento123', '2001-06-16', '2023-03-02 12:00', '2023-03-01 10:00'),
(2, 'Phoenix', 'Jones', 'Phoenix123', 'phoenix@gmail.com', 'fogo123', '1999-04-10', '2023-03-02 13:00', '2023-03-01 10:00'),
(3, 'Sova', 'Ivanov', 'Sova_Ivanov', 'sova@gmail.com', 'drone123', '1988-12-01', '2023-03-02 14:00', '2023-03-01 10:00'),
(4, 'Sage', 'Li', 'Sage_LI', 'sage@gmail.com', 'cura123', '1995-07-22', '2023-03-02 15:00', '2023-03-01 10:00'),
(5, 'Reyna', 'Flores', 'Reyna278', 'reyna@gmail.com', 'facil123', '1994-11-11', '2023-03-02 16:00', '2023-03-01 10:00'),
(6, 'Killjoy', 'Meier', 'Kill_JoyX', 'killjoy@gmail.com', 'robozim123', '1997-03-03', '2023-03-02 17:00', '2023-03-01 10:00'),
(7, 'Brimstone', 'Stone', 'Brim_Stone', 'brimstone@gmail.com', 'smoke123', '1980-02-20', '2023-03-02 18:00', '2023-03-01 10:00'),
(8, 'Raze', 'Silva', 'Silva_XX', 'raze@gmail.com', 'bahia123', '2000-08-08', '2023-03-02 19:00', '2023-03-01 10:00'),
(9, 'Cypher', 'Ali', 'Cypher_Traper', 'cypher@gmail.com', 'trapzinha', '1985-10-15', '2023-03-02 20:00', '2023-03-01 10:00'),
(10, 'Viper', 'Green', 'Vyper_Green', 'viper@gmail.com', 'veneno123', '1987-01-01', '2023-03-02 21:00', '2023-03-01 10:00');

-- Posts
INSERT INTO posts (id, usuarioid, texto, datapostagem) VALUES
(1, 1, 'Dashando por todos os lados hoje!', '2023-03-01 09:00'),
(2, 2, 'Flash e fogo! Meu estilo.', '2023-03-01 10:00'),
(3, 3, 'Drone lançado. Alvo localizado.', '2023-03-01 11:00'),
(4, 4, 'Precisa de cura? Estou aqui.', '2023-03-01 12:00'),
(5, 5, 'Eu sou o banquete.', '2023-03-01 13:00'),
(6, 6, 'Nova torreta ativada!', '2023-03-01 14:00'),
(7, 7, 'Smokes on the field.', '2023-03-01 15:00'),
(8, 8, 'BOOM! Arte moderna.', '2023-03-01 16:00'),
(9, 9, 'Tenho olhos em todos os lugares.', '2023-03-01 17:00'),
(10, 10, 'Veneno liberado.', '2023-03-01 18:00');

-- Fotos
INSERT INTO foto (id, usuarioid, caminhofoto, legenda, datapostagem) VALUES
(1, 1, 'fotos/jett_dash.jpg', 'Após o ace com dash.', '2023-03-02 10:00'),
(2, 2, 'fotos/phoenix_fire.jpg', 'Chamas ao pôr do sol.', '2023-03-02 11:00'),
(3, 3, 'fotos/sova_arrow.jpg', 'Flecha reveladora no alvo!', '2023-03-02 12:00'),
(4, 4, 'fotos/sage_wall.jpg', 'Muralha de cura.', '2023-03-02 13:00'),
(5, 5, 'fotos/reyna_ulti.jpg', 'Imperatriz ativa.', '2023-03-02 14:00'),
(6, 6, 'fotos/killjoy_setup.jpg', 'Setup defensivo.', '2023-03-02 15:00'),
(7, 7, 'fotos/brimstone_orbital.jpg', 'Ataque orbital lançado.', '2023-03-02 16:00'),
(8, 8, 'fotos/raze_boom.jpg', 'BOOM bot em ação.', '2023-03-02 17:00'),
(9, 9, 'fotos/cypher_cams.jpg', 'Câmeras por todo lado.', '2023-03-02 18:00'),
(10, 10, 'fotos/viper_smoke.jpg', 'Veneno no ar.', '2023-03-02 19:00');

-- Comentários
INSERT INTO comentarios (id, usuarioid, postid, texto, datapostagem) VALUES
(1, 2, 1, 'Dash afiado hoje, hein!', '2023-03-02 12:00'),
(2, 3, 2, 'Você e seu fogo...', '2023-03-02 12:10'),
(3, 4, 3, 'Precisa de cura depois disso?', '2023-03-02 12:20'),
(4, 5, 4, 'Sempre salvando vidas!', '2023-03-02 12:30'),
(5, 6, 5, 'Me arrepiei com essa ult.', '2023-03-02 12:40'),
(6, 7, 6, 'Boa defesa com esse setup.', '2023-03-02 12:50'),
(7, 8, 7, 'Fumaça perfeita.', '2023-03-02 13:00'),
(8, 9, 8, 'Explosão artística.', '2023-03-02 13:10'),
(9, 10, 9, 'Eu vi você espiando.', '2023-03-02 13:20'),
(10, 1, 10, 'Veneno bem posicionado.', '2023-03-02 13:30'),
(11, 3, 1, 'Boa jogada.', '2023-03-02 13:40'),
(12, 4, 2, '🔥🔥🔥', '2023-03-02 13:50'),
(13, 5, 3, 'Sempre certeiro.', '2023-03-02 14:00'),
(14, 6, 4, 'Obrigada pela cura!', '2023-03-02 14:10'),
(15, 7, 5, 'Ulti sinistra.', '2023-03-02 14:20'),
(16, 8, 6, 'Te protegeu bem.', '2023-03-02 14:30'),
(17, 9, 7, 'Fumaça estratégica.', '2023-03-02 14:40'),
(18, 10, 8, 'Arte explosiva!', '2023-03-02 14:50'),
(19, 1, 9, 'Você me espionou de novo?', '2023-03-02 15:00'),
(20, 2, 10, 'Ácido demais!', '2023-03-02 15:10');

-- Seguidores
INSERT INTO seguidores (usuarioid, seguidorid) VALUES
(1,2),(1,3),(1,4),
(2,1),(2,5),(2,6),
(3,1),(3,2),(3,6),
(4,5),(4,7),(4,8),
(5,4),(5,1),(5,9),
(6,3),(6,8),(6,10),
(7,1),(7,5),(7,9),
(8,7),(8,2),(8,10),
(9,6),(9,3),(9,4),
(10,8),(10,1),(10,2);

-- Likes
INSERT INTO likes (id, usuarioid, postid) VALUES
(1, 2, 1), (2, 3, 1), (3, 4, 1),
(4, 1, 2), (5, 5, 2), (6, 6, 2),
(7, 1, 3), (8, 3, 3), (9, 7, 3),
(10, 2, 4), (11, 4, 4), (12, 8, 4),
(13, 5, 5), (14, 6, 5), (15, 9, 5),
(16, 6, 6), (17, 7, 6), (18, 10, 6),
(19, 7, 7), (20, 8, 7), (21, 2, 7),
(22, 8, 8), (23, 9, 8), (24, 3, 8),
(25, 9, 9), (26, 10, 9), (27, 1, 9),
(28, 10, 10), (29, 1, 10), (30, 2, 10);
