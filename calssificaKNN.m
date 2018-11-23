function [rotuloPrevisto] = calssificaKNN(dadosTrain, rotuloTrain, dadosTeste, k)
largura = length(dadosTeste);
comprimento = length(dadosTrain);

%Cria a matriz de distancia e rotulos previstos com zeros
%matrizDistancia = zeros(50,100);
%rotuloPrevisto = zeros(50,1);
rotuloPrevisto = [];

% Percorre toda a base de teste
for i = 1:length(dadosTeste)
    % Compara cada teste com toda a base de treinamento
    for j = 1:length(dadosTrain)
    matrizDistancia(i,j) = calculaDistancia(dadosTeste(i,:),dadosTrain(j,:));
    end
    
    % Ordena a primeira posi��o da matriz
    [matrizDistanciaOrdenada ind] = sort(matrizDistancia(i,:));

    % Pega o valor dos r�tulos do indice 1 at� k
    %rotuloPrevisto(i) = rotuloTrain(ind(1:k));
    rotuloPrevisto = [rotuloPrevisto ; rotuloTrain(ind(1:k))];
end

end