%% RENATO CONSTANCIO FILHO
%% Função para normalização dos dados entre 0 e 1
% Recebe uma matriz e devolve normalizada
function [matrizNormal] = normal(matrizAnormal)
for i=1:size(matrizAnormal,2)
    % Faz uma copia da coluna i para a matrizTrabalho
    matrizTrabalho = matrizAnormal(:,i);
    % Pega o menor valor na matrizTrabalho
    % https://www.mathworks.com/help/matlab/ref/min.html
    menorN = min(matrizTrabalho);
    % Pega o menor valor na matrizTrabalho
    maiorN = max(matrizTrabalho);
    % Percorre a matrizTrabalho normalizando os dados.
    for j=1:length(matrizTrabalho)
        matrizNormal(j,i) = (matrizTrabalho(j) - menorN) / (maiorN - menorN);
        % Poderia ser utilizada a função normalize(matrizTrabalho, 'range')
        % https://www.mathworks.com/help/matlab/ref/normalize.html
    end
end
end