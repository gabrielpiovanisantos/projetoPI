%Projeto de Processamento de Imagens
%Gabriel Piovani Moreira dos Santos RA:552216

close all, clear all  clc;
Im = imread('blobs.tif');
figure, imshow(Im);
%Im = ind2gray(Im);
Im = imbinarize(Im);
figure, imshow(Im);
%elem = strel('disk',3);
%ImErodi = imerode(~Im,elem);
%figure,imshow(ImErodi);
Im = funcaoMediana(Im);
figure,imshow(Im);
[centers,radii] = imfindcircles(~Im,[1 floor(599/2)]);
disp(floor(centers(size(centers)-1)));
disp(floor(centers(size(centers))));
viscircles(centers, radii,'Color','b');

%Im(76,95)=1;
%figure,imshow(Im),title('centros');    
    
whos;
