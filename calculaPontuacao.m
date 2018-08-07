function pontuacao = calculaPontuacao(d, distPontos, numLinhas)
    for i = 1:numLinhas
        if (d{i} <= distPontos{1})
            pontuacao{i} = 10;
        elseif (d{i} <= distPontos{2})
            pontuacao{i} = 9;
        elseif (d{i} <= distPontos{3})
            pontuacao{i} = 8;
        elseif (d{i} <= distPontos{4})
            pontuacao{i} = 7;
        elseif (d{i} <= distPontos{5})
            pontuacao{i} = 6;
        elseif (d{i} <= distPontos{6})
            pontuacao{i} = 5;
        elseif (d{i} <= distPontos{7})
            pontuacao{i} = 4;
        elseif (d{i} <= distPontos{8})
            pontuacao{i} = 3;
        elseif (d{i} <= distPontos{9})
            pontuacao{i} = 2;
        elseif (d{i} <= distPontos{10})
            pontuacao{i} = 1;
        else
            pontuacao{i} = 0;
        end
    end