%% RENATO CONSTANCIO FILHO
%% Limpar o workspace
clc;
clear all;
%% Carrega a base
load('grupoDados2.mat');
% https://www.mathworks.com/help/deeplearning/examples/wine-classification.html

%% Calcula melhor K Anormal
disp("------ Melhor K Anormal ------");
[melhorK,precisao] = calculaMelhorK(grupoTrain, trainRots, grupoTest, testRots);
disp(sprintf('Melhor K: %d', melhorK));
disp(sprintf('Precisão: %d%%', precisao));

%% Calcula melhor K Normal
disp("------ Melhor K Normal ------");
[melhorK,precisao] = calculaMelhorK(normal(grupoTrain), trainRots, normal(grupoTest), testRots);
disp(sprintf('Melhor K normal: %d', melhorK));
disp(sprintf('Precisão normal: %d%%', precisao));

%% Exibir dados 
visualizaPontos(grupoTrain,trainRots,1,2);

%% Parte 1
disp("------ Parte 1 ------");
% Executa a classificação, enviando o grupo de treinamento, rotulos de
% treinamento, grupo de teste e o valor de k
k = 1;
[rotuloPrevisto] = calssificaKNN(normal(grupoTrain), trainRots, normal(grupoTest), k);
[precisao] = calculaPrecisao(rotuloPrevisto, testRots);
disp(sprintf('K utilizado: %d', k));
disp(sprintf('Precisão: %d%%', precisao));

%% RESPOSTAS
% Q2.1: Aplique seu kNN a este problema. Qual é a sua precisão de classificação?
% R: 78,33% com k = 10 e dados não normalizados;
%    100% com k=4 e dados normalizados.
% Q2.2: A precisão pode ser igual a 98% com o kNN. Descubra por que o resultado atual é muito menor. Ajuste o conjunto de dados ou k de tal forma que a precisão se torne 98% e explique o que você fez e por quê.
% R: Os dados foram normalizados e utilizado k=1.