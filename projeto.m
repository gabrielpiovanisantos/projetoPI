% Projeto de Processamento de Imagens
% Gabriel Piovani Moreira dos Santos RA: 552216
% Luciane da Silva Lopes RA: 552348

function f = projeto(Im, map, min, max)

figure, imshow(Im), title('original');
figure, imshow(Im), title('centro');
[lin, col, ~] = size(Im); % pega o tamanho da imagem
alvo = [col lin]/2; % encontra o alvo
hold on
plot(alvo(1), alvo(2), '*b'); % mostra o centro alvo
hold off

Im = rgb2gray(Im);
se = strel('disk', 10); % elemento estruturante para usar no imclose
Im = imclose(Im, se); % aplica��o do fechamento para preencher as falhas
figure, imshow(Im), title('com imclose');
 
Im = limiar(Im, min, max);
figure, imshow(Im), title('limiarizada');

[centers, radii] = imfindcircles(Im, [5, 30]); % encontra circulos com raios entre 5 e 30, retorna os centros e os raios desses circulos
figure, imshow(Im), title('circulos');

viscircles(centers, radii, 'Color', 'b'); % desenha os circulos de acordo com o centro e o raio informado

% calculo das distancias entre os centroids e o alvo central
numLinhas = size(centers,1); % encontra o numero de linhas na matriz
for i = 1:numLinhas
    p = [alvo; centers(i,:)];
    d{i} = pdist(p, 'euclidean');
end

% recebe um vetor com as pontuacoes de cada tiro
total = sum(cell2mat(d)); % calcula a pontuacao total da imagem

f = total;