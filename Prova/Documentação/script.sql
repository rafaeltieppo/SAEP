DROP DATABASE IF EXISTS techman;
CREATE DATABASE techman CHARSET=UTF8 COLLATE UTF8_GENERAL_CI;

USE techman;

CREATE TABLE equipamentos (
    id integer not null auto_increment primary key,
    nome varchar(150) not null,
    descricao varchar(300) not null,
    ativo integer not null,
    imagem varchar(20) not null,
)

CREATE TABLE usuarios (
    id integer not null auto_increment primary key,
    senha integer not null,
    perfil integer not null
)

CREATE TABLE comentarios (
    id integer not null auto_increment primary key,
	id_usuario integer not null,
	id_equipamento integer not null,
    comentario varchar(100) not null,
    constraint fk_user foreign key (id_usuario) references usuarios (id) on delete cascade,
    constraint fk_equipamento foreign key (id_equipamento) references equipamentos (id) on delete cascade
);

INSERT INTO usuarios VALUES (DEFAULT, '111111', 'Comum'),
INSERT INTO usuarios VALUES (DEFAULT, '212121', 'Administrador'),
INSERT INTO usuarios VALUES (DEFAULT, '414141', 'Tecnico'),
INSERT INTO usuarios VALUES (DEFAULT, '313131', 'Gerente'),

INSERT INTO equipamentos VALUES (DEFAULT, 'Torno Mecânico 500mm Modelo BV20L 220V - TTM520 - Tander', 'O Torno Mecânico Tander TTM520 é uma ferramenta utilizada por vários profissionais na confecção e acabamento de inúmeras peças metálicas, tais como: eixos, polias, pinos, roscas, peças cilíndricas internas e externas, cones, esferas, entre outros.', 1, 'TornoMecanico.jpg');
INSERT INTO equipamentos VALUES (DEFAULT, 'Processador Intel Core i9-7920X Skylake, Cache 16.5MB, 2.9GHz (4.3GHz Max Turbo), LGA 2066 - BX80673I97920X', 'Com esse processador inovador e incrível você desfruta ao máximo o verdadeiro potencial do seu computador e desfruta da mais pura velocidade. Maximize o seu desempenho seja trabalhando, jogando, navegando ou assistindo o seu filme preferido, com esse processador você pode tudo!', 1, 'ProcessadorIntel.jpg');
INSERT INTO equipamentos VALUES (DEFAULT, 'Monitor, Dell, U2518D, UltraSharp, Preto e Suporte em Alumínio, 25', 'Dê vida ao seu trabalho com uma tela de 25 polegadas quase sem bordas que conta com detalhes em cores vívidas e consistentes graças a tecnologia hdr, resolução qhd e ângulo de visão ultra-amplo. Aumente sua performance com os recursos dell display manager, dell easy arrange e trabalhe confortavelmente graça a um suporte totalmente ajustável e recurso confortview.', 0, 'MonitorDell.jpg');
INSERT INTO equipamentos VALUES (DEFAULT, 'Mouse Gamer Razer Deathadder Essential Óptico 5 Botões 4G 6.400 DPI', 'Nada melhor do que um mouse gamer com tecnologia de ponta para qualificar seus comandos e aprimorar suas jogadas nos games. Com este Mouse Gamer Razer, sua atuação nas batalhas gamers serão ainda mais bem-sucedidas, com desempenho acima da média e desenvoltura arrasadora, que vai deixar seus oponentes impressionados. O mouse Razer Deathadder Essential tem sensor óptico de 6400 DPI de 4G, 5 botões, design moderno e ergonômico, especialmente projetado para jogadores destros, e uma empunhadura ', 1, 'MouseGamer.jpg');
INSERT INTO equipamentos VALUES (DEFAULT, 'All-in-One Media Keyboard', 'O All-in-One Media Keyboard é o dispositivo ideal para sua sala ou home office. Com teclado em tamanho natural e trackpad multitoque integrado, é possível digitar, passar o dedo, arrastar, fazer zoom e clicar facilmente. O teclado com teclas de atalho de mídia personalizáveis permite que a Web e suas músicas, fotos e filmes favoritos estejam a seu alcance. O teclado também tem um design resistente, portanto, não é necessário se preocupar com esbarrões, quedas ou derramamentos comuns. O All-in-One Media ', 0, 'Teclado.jpg');

INSERT INTO comentarios VALUES (DEFAULT, 1, 2, 'Excelente Mouse');
