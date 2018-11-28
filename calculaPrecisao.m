%% RENATO CONSTANCIO FILHO
%% Função para calculo da precisão
function [precisao] = calculaPrecisao(rotuloPrevisto, testRots)
estaCorreto = rotuloPrevisto == testRots;
%numCorreto = sum(estaCorreto);
%totalNum = length(testRots);
%precisao = numCorreto / totalNum;
precisao = sum(estaCorreto) / length(testRots);
end