% Projeto de Processamento de Imagens
% Gabriel Piovani Moreira dos Santos RA: 552216
% Luciane da Silva Lopes RA: 552348

clear all
close all
clc;

% EXEMPLOS DE ALVOS (descomente uma linha por vez para testar)
% [Im, map] = imread('img/ex1.jpg'); projeto(Im, map, 50, 101);
 [Im, map] = imread('img/ex2.jpg'); projeto(Im, map, 30, 100);
% [Im, map] = imread('img/ex3.png'); projeto(Im, map, 0, 60);
% [Im, map] = imread('img/ex4.png'); projeto(Im, map, 30, 40);
% [Im, map] = imread('img/ex5.jpg'); projeto(Im, map, 0, 50);

% EXEMPLO JOGO 3 JOGADORES (descomente para testar)
% [Im1, map1] = imread('img/im1.jpg');
% [Im2, map2] = imread('img/im2.jpg');
% [Im3, map3] = imread('img/im3.jpg');
% 
% msg1 = sprintf('\nJogador 1: %10.2f', projeto(Im1, map1, 50, 101));
% msg2 = sprintf('Jogador 2: %10.2f', projeto(Im2, map2, 50, 101));
% msg3 = sprintf('Jogador 3: %10.2f', projeto(Im3, map3, 50, 101));
% 
% msgbox({'PLACAR (o jogador que tiver a menor soma de distancia ganha)'; msg1; msg2; msg3}, 'Placar');

% EXEMPLO JOGO 5 JOGADORES (descomente para testar)
% [Im1, map1] = imread('img/im1.jpg');
% [Im2, map2] = imread('img/im2.jpg');
% [Im3, map3] = imread('img/im3.jpg');
% [Im4, map4] = imread('img/im4.jpg');
% [Im5, map5] = imread('img/im5.jpg');
% [Im6, map6] = imread('img/im6.jpg');
% 
% msg1 = sprintf('\nJogador 1: %10.2f', projeto(Im1, map1, 50, 101));
% msg2 = sprintf('Jogador 2: %10.2f', projeto(Im2, map2, 50, 101));
% msg3 = sprintf('Jogador 3: %10.2f', projeto(Im3, map3, 50, 101));
% msg4 = sprintf('Jogador 4: %10.2f', projeto(Im4, map4, 50, 101));
% msg5 = sprintf('Jogador 5: %10.2f', projeto(Im5, map5, 50, 101));
% msg6 = sprintf('Jogador 6: %10.2f', projeto(Im6, map6, 50, 101));
% 
% msgbox({'PLACAR (o jogador que tiver a menor soma de distancia ganha)'; msg1; msg2; msg3; msg4; msg5; msg6}, 'Placar');