%% RENATO CONSTANCIO FILHO
%% Limpar o workspace
clc;
clear all;
%% Carrega a base
load('grupoDados1.mat');
%% Parte 1
disp("------ Parte 1 ------");
% Executa a classifica��o, enviando o grupo de treinamento, rotulos de
% treinamento, grupo de teste e o valor de k
k = 1;
[rotuloPrevisto] = calssificaKNN(grupoTrain, trainRots, grupoTest, k);
[precisao] = calculaPrecisao(rotuloPrevisto, testRots);
disp(sprintf('K utilizado: %d', k));
disp(sprintf('Precis�o: %d%%', precisao));

%% Parte 2
disp("------ Parte 2 ------");
k = 10;
[rotuloPrevisto] = calssificaKNN(grupoTrain, trainRots, grupoTest, k);
[precisao] = calculaPrecisao(rotuloPrevisto, testRots);
disp(sprintf('K utilizado: %d', k));
disp(sprintf('Precis�o: %d%%', precisao));

%% Exibir dados 
visualizaPontos(grupoTrain,trainRots,1,2);

%% Calcula melhor K Anormal
disp("------ Melhor K Anormal ------");
[melhorK,precisao] = calculaMelhorK(grupoTrain, trainRots, grupoTest, testRots);
disp(sprintf('Melhor K: %d', melhorK));
disp(sprintf('Precis�o: %d%%', precisao));

%% Calcula melhor K Normal
disp("------ Melhor K Normal ------");
[melhorK,precisao] = calculaMelhorK(normal(grupoTrain), trainRots, normal(grupoTest), testRots);
disp(sprintf('Melhor K: %d', melhorK));
disp(sprintf('Precis�o: %d%%', precisao));

%% Parte 4
% Retirar caracteristicas do dataset pra testar e responder a quest�o Q1.2
disp("------ Melhor K Anormal Dados Parciais ------");
disp("Enviando comprimento e largura da sepala");
[melhorK,precisao] = calculaMelhorK(grupoTrain(:,1:2), trainRots, grupoTest(:,1:2), testRots);
disp(sprintf('Melhor K: %d', melhorK));
disp(sprintf('Precis�o: %d%%', precisao));
disp("------ Melhor K Anormal Dados Parciais ------");
disp("Enviando comprimento e largura da petala");
[melhorK,precisao] = calculaMelhorK(grupoTrain(:,3:4), trainRots, grupoTest(:,3:4), testRots);
disp(sprintf('Melhor K: %d', melhorK));
disp(sprintf('Precis�o: %d%%', precisao));


%% RESPOSTAS
% Q1.1. Qual � a precis�o m�xima que voc� consegue da classifica��o?
% R: 98% com k=3 e dados n�o normalizados
% Q1.2. � necess�rio ter todas as caracter�sticas (atributos) para obter a precis�o m�xima para esta classifica��o?
% R: N�o � necess�rio, executando com o a largura e comprimento da petala �
% poss�vel alcan�ar 98% de precis�o, e 78% com comprimento e largura de
% sepala