%% RENATO CONSTANCIO FILHO
%% Fun��o para c�lculo da distancia Euclidiana
function [D] = calculaDistancia(G,G2)
D = sqrt(sum((G - G2) .^ 2));
end