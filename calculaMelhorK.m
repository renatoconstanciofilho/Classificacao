%% RENATO CONSTANCIO FILHO
%% Fun��o para calcular o melhor k (quantidade de vizinhos) e retornar o mesmo e sua precis�o.
function [melhorK,melhorPrecisao] = calculaMelhorK(grupoTrain, trainRots, grupoTest, testRots)
k = 0;
melhorK = 0;
melhorPrecisao = 0;
%piorK = length(grupoTrain);
%piorPrecisao = 0;
% Percorre todo o grupo de treinamento
for i = 1:length(grupoTrain)
    % Incrementa o K a dada loop
    k = k + 1;
    % Verifica o r�tulo previsto a cada k
    [rotuloPrevisto] = calssificaKNN(grupoTrain, trainRots, grupoTest, k);
    % Verifica a precis�o com o k proposto
    [precisao] = calculaPrecisao(rotuloPrevisto, testRots);
    % Caso a precis�o seja maior do q a anterior, define a nova precisa e o
    % seu k
    if precisao > melhorPrecisao
        melhorPrecisao = precisao;
        melhorK = k;
    end
    %if precisao < piorPrecisao
    %    piorPrecisao = precisao;
    %    piorK = k;
    %end
end
end