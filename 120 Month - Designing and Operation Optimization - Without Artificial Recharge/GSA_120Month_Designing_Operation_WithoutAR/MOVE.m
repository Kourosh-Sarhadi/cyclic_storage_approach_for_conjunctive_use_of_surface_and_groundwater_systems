function   sol=MOVE(sol,lb,ub)

nsol=length(sol);

for i=1:nsol
    
  sol(i).velocity=rand.*sol(i).velocity+sol(i).gfield;  
  sol(i).pos=sol(i).pos+sol(i).velocity;
  
  sol(i).pos=min(sol(i).pos,ub);
  sol(i).pos=max(sol(i).pos,lb);
    
  sol(i).cost=fitness(sol(i).pos);  
  
    
end



end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                   %
%                          www.matlabnet.ir                         %
%                   Free Download  matlab code and movie            %
%                          Shahab Poursafary                        %
%                                                                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%