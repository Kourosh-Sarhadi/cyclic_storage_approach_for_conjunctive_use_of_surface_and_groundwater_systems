function sol=calculated_mass(sol)


nsol=length(sol);

f=[sol.cost];

best=min(f);
worst=max(f);

f=(f-worst)./(best-worst);

f=f./sum(f);


for i=1:nsol
    sol(i).mass=f(i);
end





end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                   %
%                          www.matlabnet.ir                         %
%                   Free Download  matlab code and movie            %
%                          Shahab Poursafary                        %
%                                                                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%