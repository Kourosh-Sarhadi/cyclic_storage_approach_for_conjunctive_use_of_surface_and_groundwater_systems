function  sol=calculated_gravitional_field(sol,nbest,G,Rpower,nvar)

[~,index]=sort([sol.mass],'descend');


nsol=length(sol);




for i=1:nsol
    
    sol(i).gfield=zeros(1,nvar);
    
    
    for z=1:nbest
        
        
        
        j=index(z);
        
        
        if i~=j
        
        R=norm(sol(i).pos-sol(j).pos);
        
        
        sol(i).gfield=sol(i).gfield+ (  ((sol(j).pos-sol(i).pos)*sol(j).mass.*rand(1,nvar))./(R^Rpower+eps));
        end
    
    
    end
   
    
    sol(i).gfield=sol(i).gfield*G;
    
end









end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                   %
%                          www.matlabnet.ir                         %
%                   Free Download  matlab code and movie            %
%                          Shahab Poursafary                        %
%                                                                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%