
% ************************************************************************************************************************************************* 

% function  [fitness_value] = Sphere( X )
%   
%    
%    fitness_value = sum(X.^2);
% 
% end
function fitness=jFitnessFunction(feat,label,X)
% Parameter setting for k-value of KNN
 
% Parameter setting for number of cross-validation
kfold=2;
% Error rate
fitness=jwrapperNB(feat(:,X==1),label,kfold);
end

% Perform KNN with k-folds cross-validation
function accuracy=jwrapperNB(feat,label,kfold)
Model=fitcnb(feat,label); 
C=crossval(Model,'KFold',kfold);
% Error rate 
ERor=kfoldLoss(C);
accuracy=1-ERor;
end




