%% RENATO CONSTANCIO FILHO
%% Função para verificar o rotulo previsto para cada ponto
function [rotuloPrevisto] = calssificaKNN(dadosTrain, rotuloTrain, dadosTeste, k)
% Cria o vetor de rotulos previstos em branco
rotuloPrevisto = [];

% Percorre toda a base de teste
for i = 1:length(dadosTeste)
    % Compara cada teste com toda a base de treinamento
    for j = 1:length(dadosTrain)
        % Adiciona a distancia entre os dados de teste e dados de
        % treinamento
        matrizDistancia(i,j) = calculaDistancia(dadosTeste(i,:),dadosTrain(j,:));
    end
    % Ordena a matriz de distancia e os indices
    [matrizDistanciaOrdenada ind] = sort(matrizDistancia(i,:));

    % Concatena o vetor de rotulos previstos com o atual rotulo p
    rotuloPrevisto = [rotuloPrevisto ; mode(rotuloTrain(ind(1:k)))];
end
end