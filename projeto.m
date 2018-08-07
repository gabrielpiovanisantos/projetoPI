% Projeto de Processamento de Imagens
% Gabriel Piovani Moreira dos Santos RA: 552216
% Luciane da Silva Lopes RA: 552348

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
%figure,imshow(Im),title('centro');
hold on
[lin, col, ~] = size(Im); % encontra o tamanho da imagem
C = [col lin]/2; % encontra o centro da imagem
plot(C(1),C(2),'*r');
hold off
 
% % Im = uint8(Im);
% % rgbIm = ind2rgb(Im,map);
% % figure,imshow(rgbIm),title('rgb');
 
 Im = limiar(Im4);
 %figure,imshow(Im),title('centro');
 L = bwlabel(Im);
 RGB = label2rgb(L,@jet,[.5 .5 .5]);
 %figure,imshow(RGB),title('centroids');

% % rgbImage = ind2rgb(Im, map);
% Im = imbinarize(Im);
% % Im2 = imfill(Im);
 propes = regionprops(L,'Centroid');
% whos;
centroids = cat(1, propes.Centroid);
%figure,imshow(Im),title('centroids');
hold on
plot(centroids(:,1),centroids(:,2), 'b*')
hold off
[centers,radii] = imfindcircles(Im,[5 30]);
%figure,imshow(Im),title('circulos');
hold on
viscircles(centers, radii,'Color','b');
hold off

% aqui guardamos os pontos dos limites de cada area pontuada
areaPontuacao = [481.4310,  438.0501; 481.4310, 395.9452; 481.4310, 351.5643; 480.2930, 309.4593; 481.4310, 265.0784; 481.4310, 224.1114; 483.7070, 178.5926; 482.5690, 137.6256; 482.5690, 95.5206; 480.2930, 53.4157];

for i = 1:10
    pontos = [C; areaPontuacao(i,:)];
    distPontuada{i} = pdist(pontos, 'euclidean'); % distancia entre o alvo e cada area pontuada
end

% calculo das distancias entre os centroids e o alvo central
numLinhas = size(centers,1); % encontra o numero de linhas na matriz
for i = 1:numLinhas
    p = [C; centers(i,:)];
    d{i} = pdist(p, 'euclidean');
end

% recebe um vetor com as pontuacoes de cada tiro
pontuacao = calculaPontuacao(d, distPontuada, numLinhas);
total = sum(cell2mat(pontuacao)); % calcula a pontuacao total da imagem
disp(total);
%pInversa = pontuacao.';
msg = sprintf('Pontuação Total: %d', total);
msgbox(msg, 'Total');
