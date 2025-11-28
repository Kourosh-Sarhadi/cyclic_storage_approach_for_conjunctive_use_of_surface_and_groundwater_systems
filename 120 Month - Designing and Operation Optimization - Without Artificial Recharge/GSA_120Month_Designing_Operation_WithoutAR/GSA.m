clc
clear
close all
format shortG

%% parameters setting

nvar=483;       % number of variable

lb=readmatrix('LB & UB 120 Month.xlsx','Sheet',1,'Range','B10:RP10');  % Lower Bound of Variables
ub=readmatrix('LB & UB 120 Month.xlsx','Sheet',1,'Range','B11:RP11'); % Upper Bound of Variables


nsol=200;             % number of solution

T=4000;              % max time

G0=10;
alpha=6;

Rpower=0.1;
nbest=5;

%% initialization

tic

empty.pos=[];
empty.cost=[];
empty.velocity=[];
empty.mass=[];

sol=repmat(empty,nsol,1);

for i=1:nsol

sol(i).pos=lb+rand(1,nvar).*(ub-lb);
sol(i).cost=fitness(sol(i).pos);
sol(i).velocity=0;
sol(i).mass=1;
      
end


[value,index]=min([sol.cost]);

gsol=sol(index);

%% main loop

best=zeros(T,1);
MEAN=zeros(T,1);

for t=1:T

     sol=calculated_mass(sol);
     
     G=G0*exp(-alpha*(t/T));    % gravitional constent
    
    sol=calculated_gravitional_field(sol,nbest,G,Rpower,nvar);
    
    sol=MOVE(sol,lb,ub);
    
    [value,index]=min([sol.cost]);

    
    if value<gsol.cost
       gsol=sol(index);
    end
    
    best(t)=gsol.cost;
    MEAN(t)=mean([sol.cost]);
    
    disp([' t = '  num2str(t)   ' BEST = ' num2str(gsol.cost)])
   
    
end

%% results
writematrix(gsol.pos,'Results_GSA_120Month_Designing_Operation_WithoutAR.xlsx','Sheet',1,'Range','B4:RP4');
writematrix(best,'Best_GSA_Designing_Operation_WithoutAR.xlsx','Sheet',1,'Range','B2:B4001');
disp('===============================================')
disp([ ' BEST solution = '  num2str(gsol.pos)])
disp([ ' BEST fitness = '  num2str(gsol.cost)])
disp([ ' Time = '  num2str(toc)])

%figure(1)
%plot(best(1:t),'r','LineWidth',2);
%hold on
%plot(MEAN(1:t),'b','LineWidth',2);

%xlabel('t')
%ylabel(' fitness')

%legend(' BEST' , 'MEAN')

%title('GSA')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                   %
%                          www.matlabnet.ir                         %
%                   Free Download  matlab code and movie            %
%                          Shahab Poursafary                        %
%                                                                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




