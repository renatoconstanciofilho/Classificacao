%% RENATO CONSTANCIO FILHO
%% Limpar o workspace
clc;
clear all;
%% Carrega a base
load('grupoDados3.mat');

%% Parte 1
% k=1 dados Anormais
disp("------ k=1 dados Anormais ------");
k = 1;
[rotuloPrevisto] = calssificaKNN(grupoTrain, trainRots, grupoTest, k);
[precisao] = calculaPrecisao(rotuloPrevisto, testRots);
disp(sprintf('K utilizado: %d', k));
disp(sprintf('Precis�o: %d%%', precisao));

% k=1 dados Normais
disp("------ k=1 dados Normais ------");
k = 1;
[rotuloPrevisto] = calssificaKNN(normal(grupoTrain), trainRots, normal(grupoTest), k);
[precisao] = calculaPrecisao(rotuloPrevisto, testRots);
disp(sprintf('K utilizado: %d', k));
disp(sprintf('Precis�o: %d%%', precisao));

%% Parte 2
% Calcula melhor K Anormal
disp("------ Melhor K Anormal ------");
[melhorK,precisao] = calculaMelhorK(grupoTrain, trainRots, grupoTest, testRots);
disp(sprintf('Melhor K: %d', melhorK));
disp(sprintf('Precis�o: %d%%', precisao));

% Calcula melhor K Normal
disp("------ Melhor K Normal ------");
[melhorK,precisao] = calculaMelhorK(normal(grupoTrain), trainRots, normal(grupoTest), testRots);
disp(sprintf('Melhor K normal: %d', melhorK));
disp(sprintf('Precis�o normal: %d%%', precisao));

%% Exibir dados
visualizaPontos(grupoTrain,trainRots,1,2);

%% RESPOSTAS
% Q3.1: Aplique o kNN ao problema usando k = 1. Qual � a precis�o na classifica��o?
% R: 70% com k=1 e dados anormais;
%    66% com k=1 e dados normais;
% Q3.2: A precis�o pode ser igual a 92% com o kNN. Descubra por que o resultado atual � muito menor. Ajuste o conjunto de dados ou k de tal forma que a precis�o se torne 92% e explique o que voc� fez e por qu�
% R: 96% com k=10 e dados anormais;
%    94% com k=25 e dados normais;