
%% Don't forget to uncomment one of the AND / OR / XOR sections .
%% 

function [w,b]=perceplearn(P,t,w,b,ep)

clc; close all

% P  = Input Vector
% w  = Weight
% b  = bias
% T  = Target Vector
% ep = Epoches  (No. of max iterations)

% Perceptron Learning Rule is:
% Wnew = Wold + e*p
% e    = t - a
% b    = bold + e
% Update the weight & bias until it prodeuces correct target for inputs.
% 


%% And Gate:

%   P=[0 0 1 1; 0 1 0 1]; t=[0 0 0 1]; w=rand([1 2]); b=0.1; ep=20;



%% OR Gate: 

%  P=[0 0 1 1; 0 1 0 1]; t=[0 1 1 1]; w=rand([1 2]); b=0.1; ep=20;

 

%% XOR Gate: (Limitation of Perceptron)

%  P=[0 0 1 1; 0 1 0 1]; t=[0 1 1 0];  w=rand([1 2]); b=0.1; ep=10;



%% 



[r c]=size(P);
chk=0; iter=0;
while chk~=5
    for i=1:c        
        a=hardlimit(w*P(:,i)+b); % Evaluating Network
        chk=chk+1;
        if chk==5
            break; % If w and b are adjusted as required.            
        end        
        if a~=t(i)
            chk=0;
            e=t(i)-a;
            w=w+(e*P(:,i)');
            b=b+e;
        end
        
plotpv(P,t)
linehandle = plotpc(w,b); grid on;

        pause(0.1)
        linehandle = plotpc(w,b,linehandle);  drawnow;   
        
    end
    iter=iter+1;
    if iter==ep
       
         disp('Maximum Iterations Reached');
         
        break;       
    end
end

disp('=============================================================')

