clc;
clear all;

%% Parte 1
% Carrega a base
load('grupoDados1.mat');

% Executa a classifica��o, enviando o grupo de treinamento, rotulos de
% treinamento, grupo de teste e o valor de k
[rotuloPrevisto] = calssificaKNN(grupoTrain, trainRots, grupoTest, 1);

estaCorreto = rotuloPrevisto == testRots;
numCorreto = sum(estaCorreto);
totalNum = length(testRots);
precisao = numCorreto / totalNum;
disp("----- Parte 1 -----");
disp(sprintf('Precis�o: %d%%', precisao));

%% Parte 2
