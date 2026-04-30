
% ************************************************************************************************************************************************* 
tic
clc;clear;
 a   =xlsread('C:\PhD Thesis\NCAA revision\2Classes\2Classes\GSR_smoteX.xlsx');
  b   =xlsread('C:\PhD Thesis\NCAA revision\2Classes\2Classes\ECG_smoteX.xlsx');
  c   =xlsread('C:\PhD Thesis\NCAA revision\2Classes\2Classes\EEG_smoteX.xlsx');
  feat=[a ];
  feat=feat(2:end,:);
 label=xlsread('C:\PhD Thesis\NCAA revision\2Classes\2Classes\GSR_smoteY.xlsx');
  label=label(2:end,:);
%load ('D:\PhD Thesis\2nd Contribution\Comparison\1st Paper\Paper1Feat.mat')
 %label=xlsread('D:\PhD Thesis\2nd Contribution\Experiments\2nd Contribution Files\2nd Contribution Files\7Elabels.xlsx');
%% controling paramters of the GA algortihm
Problem.obj = @Sphere;       
Problem.nVar = size(feat,2);

M = 100; % number of chromosomes (cadinate solutions)
N = Problem.nVar;  % number of genes (variables)
MaxGen = 25;
Pc = 0.8;
Pm = 0.01;
Er = 0.05;
visualization = 1; % set to 0 if you do not want the convergence curve 

[BestChrom, population]  = GeneticAlgorithm (feat,label,M , N, MaxGen , Pc, Pm , Er , Problem.obj , visualization)
[max_val , indx] = sort([ population.Chromosomes(:).fitness ] , 'descend');
BestChrom.Gene    = population.Chromosomes(indx(1)).Gene;
BestChrom.Fitness = population.Chromosomes(indx(1)).fitness;

disp('The best chromosome found: ')
BestChrom.Gene
disp('The best fitness value: ')
BestChrom.Fitness

toc