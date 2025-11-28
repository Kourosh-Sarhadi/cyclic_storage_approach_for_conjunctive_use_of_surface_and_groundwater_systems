
clc
clear
close all
%% paramters setting



nvar=483;    % number of variable

npop=200;         % number of population

maxiter=4000;      % max of iteration

pc=0.14;                  % percent of crossover

ncross=2*round(npop*pc/2);   % number of cross over offspring

pm=1-pc;                 % percent of mutation

nmut=round(npop*pm);     % number of mutation offsprig

lb=readmatrix('LB & UB 120 Month.xlsx','Sheet',1,'Range','B10:RP10');  % Lower Bound of Variables
ub=readmatrix('LB & UB 120 Month.xlsx','Sheet',1,'Range','B11:RP11'); % Upper Bound of Variables


%% initialization
tic
empty.par=[];
empty.fit=[];


pop=repmat(empty,npop,1);


for i=1:npop
    
   pop(i).par=lb+rand(1,nvar).*(ub-lb);
   pop(i).fit=fitness(pop(i).par);
   
end




%% main loop


BEST=zeros(maxiter,1);
MEAN=zeros(maxiter,1);

for iter=1:maxiter


   % crossover
   
   crosspop=repmat(empty,ncross,1);
   crosspop=crossover(crosspop,pop,ncross);
   
   
   
   
   % mutation
   mutpop=repmat(empty,nmut,1);
   mutpop=mutation(mutpop,pop,nmut,npop,lb,ub,nvar);
   
   
   % merged
  [pop]=[pop;crosspop;mutpop];


  % select
  [value,index]=sort([pop.fit]);
  pop=pop(index);
  pop=pop(1:npop);

 gpop=pop(1);   % global pop



 BEST(iter)=gpop.fit;
 MEAN(iter)=mean([pop.fit]);



 disp([ ' Iter = '  num2str(iter)  '    BEST = '  num2str(BEST(iter))]);


  if iter>150 && BEST(iter)==BEST(iter-150)
      break
  end

end
%% results
writematrix(gpop.par,'Results_GA_120Month_Designing_Operation_WithoutAR.xlsx','Sheet',1,'Range','B4:RP4');
writematrix(BEST,'Best_GA_Designing_Operation_WithoutAR.xlsx','Sheet',1,'Range','K2:K4001');
disp(' ')
disp([ ' Best par = '  num2str(gpop.par)])
disp([ ' Best fitness = '  num2str(gpop.fit)])
disp([ ' Time = '  num2str(toc)])



%figure(1)
%plot(BEST(1:iter),'r','LineWidth',2)
%hold on
%plot(MEAN(1:iter),'b','LineWidth',2)
%xlabel('Iteration')
%ylabel(' Fitness')
%legend('BEST','MEAN')
%title('GA for TSP')





