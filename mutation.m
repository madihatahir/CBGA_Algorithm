% Written by Dr. Seyedali Mirjalili
% To watch videos on this algorithm, enrol to my courses with 95% discount using the following links: 

% ************************************************************************************************************************************************* 
%  A course on "Optimization Problems and Algorithms: how to understand, formulation, and solve optimization problems": 
%  https://www.udemy.com/optimisation/?couponCode=MATHWORKSREF
% ************************************************************************************************************************************************* 
%  "Introduction to Genetic Algorithms: Theory and Applications" 
%  https://www.udemy.com/geneticalgorithm/?couponCode=MATHWORKSREF
% ************************************************************************************************************************************************* 

function [child] = mutation(child, Pm)

Gene_no = length(child.Gene);
%logistic
 x(1)=0.7;
 Value=1;
% a=4;
% for t=1:Gene_no
%     x(t+1)=a*x(t)*(1-x(t));
%     m(t)=x(t)*1;
% end
% Iterative map %%%
% a=0.7;
% for t=1:Gene_no
%     x(t+1)=sin((a*pi)/x(t));
%     m(t)=((x(t)+1)*Value)/2;
% end
% a=0.5;
% b=0.2;
% for t=1:Gene_no
%     x(t+1)=mod(x(t)+b-(a/(2*pi))*sin(2*pi*x(t)),1);
%     m(t)=x(t)*Value;
% end
%Sine map
% for t=1:Gene_no
%      x(t+1) = sin(pi*x(t));
%      m(t)=(x(t))*Value;
%  end
for k = 1: Gene_no
    R = rand();
    if R < Pm
    %if m(1,k) < Pm
        child.Gene(k) = ~ child.Gene(k);
    end
end

end