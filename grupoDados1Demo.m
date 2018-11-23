clc;
clear all;

%% Parte 1
% Carrega a base
load('grupoDados1.mat');

% Executa a classificação, enviando o grupo de treinamento, rotulos de
% treinamento, grupo de teste e o valor de k
[rotuloPrevisto] = calssificaKNN(grupoTrain, trainRots, grupoTest, 10);

estaCorreto = rotuloPrevisto == testRots;
numCorreto = sum(estaCorreto);
totalNum = length(testRots);
precisao = numCorreto / totalNum;
disp("----- Parte 1 -----");
disp(sprintf('Precisão: %d%%', precisao));
visualizaPontos(grupoTrain,trainRots,1,2);
%% Parte 2
