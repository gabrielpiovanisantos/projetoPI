%Projeto de Processamento de Imagens
%Gabriel Piovani Moreira dos Santos RA:552216

close all, clear all  clc;
Im = imread('imagem3.jpg');
figure, imshow(Im),title('original');
Im = rgb2gray(Im);
Im = im2bw(Im,0.5);
figure, imshow(Im),title('binarizada');
%Im = funcaoMediana(Im);
figure,imshow(Im),title('centro');
hold on
[lin col] = size(Im);
C = round([col lin]/2);
plot(C(1),C(2),'*r');
hold off
se = strel('disk',10);
Im = bwareaopen(Im, 15);
%closeIm = imclose(Im,se);
%figure,imshow(closeIm),title('com ImClose');
figure,imshow(~Im),title('inversa');
L = bwlabel(~Im,8);
[centers,radii] = imfindcircles(~Im,[15 30]);
figure,imshow(Im),title('circulos');
hold on
viscircles(centers, radii,'Color','b');
hold off
whos;
