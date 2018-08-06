%Projeto de Processamento de Imagens
%Gabriel Piovani Moreira dos Santos RA:552216

close all
clear all
clc;
[Im,map] = imread('imagem3.jpg');
%[ImInd,map] = rgb2ind(Im,255);
figure, imshow(Im),title('original');
% [ImSeg] = seg_channel(Im);
% figure, imshow(ImSeg),title('original');

% Im2 = imfill(ImBW);
% figure,imshow(Im2),title('imfill');
ImGray = rgb2gray(Im);
% Darkest= min(ImGray(:));
se = strel('disk',10);
Im4 = imclose(ImGray,se);
figure, imshow(Im4),title('com imclose');
% Im = funcaoMediana(Im);
figure,imshow(Im),title('centro');
hold on
[lin, col] = size(Im);
C = round([col lin]/2);
plot(C(1),C(2),'*r');
hold off
 
% % Im = uint8(Im);
% % rgbIm = ind2rgb(Im,map);
% % figure,imshow(rgbIm),title('rgb');
 
 Im = limiar(Im4);
 figure,imshow(Im),title('centro');
 L = bwlabel(Im);
 RGB = label2rgb(L,@jet,[.5 .5 .5]);
 figure,imshow(RGB),title('centroids');

% % rgbImage = ind2rgb(Im, map);
% Im = imbinarize(Im);
% % Im2 = imfill(Im);
 propes = regionprops(L,'Centroid');
% whos;
centroids = cat(1, propes.Centroid);
 figure,imshow(Im),title('centroids');
hold on
plot(centroids(:,1),centroids(:,2), 'b*')
hold off
[centers,radii] = imfindcircles(Im,[5 30]);
figure,imshow(Im),title('circulos');
hold on
viscircles(centers, radii,'Color','b');
hold off
% 
