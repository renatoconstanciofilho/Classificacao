%% RENATO CONSTANCIO FILHO
%% Fun��o para calculo da precis�o
function [precisao] = calculaPrecisao(rotuloPrevisto, testRots)
estaCorreto = rotuloPrevisto == testRots;
%numCorreto = sum(estaCorreto);
%totalNum = length(testRots);
%precisao = numCorreto / totalNum;
precisao = sum(estaCorreto) / length(testRots);
end