%Projeto de Processamento de Imagens
%Gabriel Piovani Moreira dos Santos RA:552216

close all
clear all
clc;
[Im,map] = imread('imagem10.jpg');
[ImInd,map] = rgb2ind(Im,255);
figure, imshow(Im),title('original');
% Im2 = imfill(ImBW);
% figure,imshow(Im2),title('imfill');
 Im = rgb2gray(Im);
% Darkest= min(ImGray(:));
% se = strel('disk',10);
% Im = imclose(ImGray,se);
%  figure, imshow(Im),title('com imclose');
% [lin, col] = size(Im);
% C = round([col lin]/2);
% Im = funcaoMediana(Im);
% figure,imshow(Im),title('centro');
% hold on
% plot(C(1),C(2),'*r');
% hold off
 
% % Im = uint8(Im);
% % rgbIm = ind2rgb(Im,map);
% % figure,imshow(rgbIm),title('rgb');
 
Im = imbinarize(Im);
 
% % rgbImage = ind2rgb(Im, map);
% Im = imbinarize(Im);
% % Im2 = imfill(Im);
 figure,imshow(Im),title('centroids');
% propes = regionprops(Im,'Centroid');
% % whos;
% centroids = cat(1, propes.Centroid);
% figure,imshow(Im),title('centroids');
% hold on
% plot(centroids(:,1),centroids(:,2), 'b*')
% hold off
% [centers,radii] = imfindcircles(Im,[15 30]);
% figure,imshow(Im),title('circulos');
% hold on
% viscircles(centers, radii,'Color','b');
% hold off
% 
