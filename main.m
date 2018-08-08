% Projeto de Processamento de Imagens
% Gabriel Piovani Moreira dos Santos RA: 552216
% Luciane da Silva Lopes RA: 552348

clear all
close all
clc;

[Im1, map1] = imread('im1.jpg');
[Im2, map2] = imread('im2.jpg');
[Im3, map3] = imread('im3.jpg');
[Im4, map4] = imread('im4.jpg');
[Im5, map5] = imread('im5.jpg');
[Im6, map6] = imread('im6.jpg');

msg1 = sprintf('\nJogador 1: %10.2f', projeto(Im1,map1));
msg2 = sprintf('Jogador 2: %10.2f', projeto(Im2,map2));
msg3 = sprintf('Jogador 3: %10.2f', projeto(Im3,map3));
msg4 = sprintf('Jogador 4: %10.2f', projeto(Im4,map4));
msg5 = sprintf('Jogador 5: %10.2f', projeto(Im5,map5));
msg6 = sprintf('Jogador 6: %10.2f', projeto(Im6,map6));

msgbox({'PLACAR (o jogador que tiver a menor soma de distancia ganha)'; msg1; msg2; msg3; msg4; msg5; msg6}, 'Placar');