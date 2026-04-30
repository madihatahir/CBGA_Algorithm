% Written by Dr. Seyedali Mirjalili
% To watch videos on this algorithm, enrol to my courses with 95% discount using the following links: 

% ************************************************************************************************************************************************* 

function [ population ] = initialization(M, N)
x(1)=0.7;
Value=1;
%%% Chaos
%a=4;%M=3;N=10;
t=M*N;
% %%% Chaos %%%
% for i=1:t
%     x(i+1)=a*x(i)*(1-x(i));
%     m(i)=x(i)*1;
% end
%% 
% a=0.7;Value=1;
% for i=1:t
%     x(i+1)=sin((a*pi)/x(i));
%     m(i)=((x(i)+1)*Value)/2;
% end
% a=0.5;
% b=0.2;
% for i=1:t
%     x(i+1)=mod(x(i)+b-(a/(2*pi))*sin(2*pi*x(i)),1);
%     m(i)=x(i)*Value;
% end
%Sine map
% for i=1:t
%      x(i+1) = sin(pi*x(i));
%      m(i)=(x(i))*Value;
%  end

%A=vec2mat(m,N);

for i = 1 : M
    for j = 1 : N 
        if A(i,j)<rand()
        population.Chromosomes(i).Gene(j) = 1;
        else
           population.Chromosomes(i).Gene(j) = 0;
        end
    end
end
    

end

