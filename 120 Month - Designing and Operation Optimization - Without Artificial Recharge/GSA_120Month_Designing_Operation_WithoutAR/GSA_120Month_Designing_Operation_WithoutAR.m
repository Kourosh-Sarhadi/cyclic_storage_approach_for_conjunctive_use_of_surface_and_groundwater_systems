lw=2;

rs=0.026667;
uelif=0.0028;
ucen=0.000001;
efp=0.75;
ucd=0.06;
uccd=0.02;
ucdivd=0.05;
ucdef=15;

Qs=[2.71400000000000,6.38900000000000,10.2850000000000,21,373.761000000000,320.927000000000,279.684000000000,230.139000000000,42.6370000000000,11.1640000000000,4.27200000000000,1.55900000000000,3.66800000000000,61.8710000000000,30.6690000000000,34.7070000000000,74.3410000000000,136.758000000000,427.901000000000,354.824000000000,63.6440000000000,15.4520000000000,3.73400000000000,3.09100000000000,3.99400000000000,4.95800000000000,24.8750000000000,17.4100000000000,23.3640000000000,215.239000000000,221.731000000000,40.7950000000000,7.15400000000000,1.48700000000000,0.852000000000000,2.59800000000000,2.36400000000000,16.5780000000000,15.2070000000000,14.7430000000000,36.7570000000000,109.828000000000,224.924000000000,196.254000000000,28.9620000000000,4.23700000000000,1.33100000000000,0.423000000000000,3.15200000000000,54.5330000000000,61.3030000000000,86.6580000000000,105.909000000000,349.702000000000,586.803000000000,749.020000000000,394.684000000000,10.8960000000000,0.506000000000000,0.624000000000000,0.876000000000000,2.71400000000000,15.0180000000000,29.6860000000000,63.9860000000000,200.821000000000,235.161000000000,417.916000000000,42.9130000000000,7.29900000000000,1.58000000000000,1.39300000000000,1.12500000000000,24.8260000000000,33.2530000000000,44.4450000000000,70.0590000000000,143.904000000000,785.985000000000,487.988000000000,52.0810000000000,11.0700000000000,3.87600000000000,0.396000000000000,2.10000000000000,30.4350000000000,54.2400000000000,56.8680000000000,212.814000000000,214.605000000000,247.490000000000,91.5260000000000,20.3130000000000,1.73600000000000,0.597000000000000,0.576000000000000,0.905000000000000,10.3780000000000,56.9700000000000,37.3840000000000,84.5070000000000,212.239000000000,293.001000000000,162.466000000000,13.3280000000000,4.72700000000000,0.461000000000000,0.517000000000000,3.34600000000000,25.9230000000000,115.059000000000,74.3020000000000,154.374000000000,110.675000000000,299.842000000000,148.263000000000,17.6910000000000,1.56700000000000,2.22800000000000,3.20900000000000,4.36700000000000];
prc=[4,19,13.5000000000000,37,76,23,57.5000000000000,70.5000000000000,0,0,0,0,23.5000000000000,135,2,14,40,34.5000000000000,76,22,6,0,1.50000000000000,2,3,0,14.5000000000000,0,45,35,2.50000000000000,12,2,3,0,17.5000000000000,16,97,1,1,23.5000000000000,9,17,28,2.50000000000000,0,0,3,17.5000000000000,73,18.5000000000000,21,62.5000000000000,33.5000000000000,47.5000000000000,67,0,0,0,0,0,3,2,50,6.50000000000000,63,38.5000000000000,109,2,0,0.500000000000000,1.50000000000000,6.50000000000000,35.5000000000000,1.50000000000000,13,2.50000000000000,33.5000000000000,37,45.5000000000000,6,3,0,4.50000000000000,5,89,45.5000000000000,23.5000000000000,22.5000000000000,31.5000000000000,15.5000000000000,13,2,0,0,8,2,45.5000000000000,44,3.50000000000000,37.5000000000000,58,17.5000000000000,19.5000000000000,2,4,1.50000000000000,0,83.5000000000000,41,56,2.50000000000000,29.5000000000000,14,30,26,0,0,0,0,12.4750000000000];
ep=[228.700000000000,111.900000000000,86.8000000000000,10.7000000000000,0,0,54.9000000000000,177.600000000000,321.700000000000,387.100000000000,376.900000000000,300.200000000000,203.100000000000,69.5000000000000,3,0,0,0,4.80000000000000,165.300000000000,274.600000000000,334.400000000000,332.700000000000,299.700000000000,198.300000000000,110.100000000000,41.7000000000000,0,0,0,155.800000000000,259.600000000000,353.700000000000,385.300000000000,426.900000000000,302.100000000000,211.800000000000,76.4000000000000,36.9000000000000,0,0,0,72,199.400000000000,313.600000000000,411,323.300000000000,449.600000000000,195.600000000000,78.1000000000000,25.3000000000000,31.3000000000000,0,90.9000000000000,106,170.300000000000,331,443.300000000000,447.400000000000,373.600000000000,231.500000000000,77.9000000000000,10.5000000000000,28.3000000000000,0,0,94.1000000000000,183.700000000000,330.400000000000,369,413,309.600000000000,268.800000000000,129.400000000000,77,27.6000000000000,0,42.7000000000000,107.500000000000,140.500000000000,277.300000000000,370.200000000000,394.500000000000,343.600000000000,196.100000000000,91.4000000000000,40,0,0,0,165.100000000000,170.200000000000,279.500000000000,385.900000000000,385.800000000000,390.200000000000,315,125.700000000000,63,0,0,0,132.300000000000,206.200000000000,307.300000000000,431.600000000000,386.300000000000,344.600000000000,213.600000000000,103.700000000000,0,0,0,0,105.100000000000,239.800000000000,351,373.200000000000,360.300000000000,293.700000000000,209.225000000000];
eta=[0.0600000000000000,0.0400000000000000,0.0300000000000000,0.0400000000000000,0.0300000000000000,0.0600000000000000,0.0700000000000000,0.100000000000000,0.130000000000000,0.170000000000000,0.180000000000000,0.0900000000000000,0.0600000000000000,0.0400000000000000,0.0300000000000000,0.0400000000000000,0.0300000000000000,0.0600000000000000,0.0700000000000000,0.100000000000000,0.130000000000000,0.170000000000000,0.180000000000000,0.0900000000000000,0.0600000000000000,0.0400000000000000,0.0300000000000000,0.0400000000000000,0.0300000000000000,0.0600000000000000,0.0700000000000000,0.100000000000000,0.130000000000000,0.170000000000000,0.180000000000000,0.0900000000000000,0.0600000000000000,0.0400000000000000,0.0300000000000000,0.0400000000000000,0.0300000000000000,0.0600000000000000,0.0700000000000000,0.100000000000000,0.130000000000000,0.170000000000000,0.180000000000000,0.0900000000000000,0.0600000000000000,0.0400000000000000,0.0300000000000000,0.0400000000000000,0.0300000000000000,0.0600000000000000,0.0700000000000000,0.100000000000000,0.130000000000000,0.170000000000000,0.180000000000000,0.0900000000000000,0.0600000000000000,0.0400000000000000,0.0300000000000000,0.0400000000000000,0.0300000000000000,0.0600000000000000,0.0700000000000000,0.100000000000000,0.130000000000000,0.170000000000000,0.180000000000000,0.0900000000000000,0.0600000000000000,0.0400000000000000,0.0300000000000000,0.0400000000000000,0.0300000000000000,0.0600000000000000,0.0700000000000000,0.100000000000000,0.130000000000000,0.170000000000000,0.180000000000000,0.0900000000000000,0.0600000000000000,0.0400000000000000,0.0300000000000000,0.0400000000000000,0.0300000000000000,0.0600000000000000,0.0700000000000000,0.100000000000000,0.130000000000000,0.170000000000000,0.180000000000000,0.0900000000000000,0.0600000000000000,0.0400000000000000,0.0300000000000000,0.0400000000000000,0.0300000000000000,0.0600000000000000,0.0700000000000000,0.100000000000000,0.130000000000000,0.170000000000000,0.180000000000000,0.0900000000000000,0.0600000000000000,0.0400000000000000,0.0300000000000000,0.0400000000000000,0.0300000000000000,0.0600000000000000,0.0700000000000000,0.100000000000000,0.130000000000000,0.170000000000000,0.180000000000000,0.0900000000000000,0.0600000000000000];
hour=[720,720,720,720,720,696,744,744,744,744,744,744,720,720,720,720,720,696,744,744,744,744,744,744,720,720,720,720,720,696,744,744,744,744,744,744,720,720,720,720,720,696,744,744,744,744,744,744,720,720,720,720,720,696,744,744,744,744,744,744,720,720,720,720,720,696,744,744,744,744,744,744,720,720,720,720,720,696,744,744,744,744,744,744,720,720,720,720,720,696,744,744,744,744,744,744,720,720,720,720,720,696,744,744,744,744,744,744,720,720,720,720,720,696,744,744,744,744,744,744,720];

rets=0.28;
retr=0.05;
seep=0.0444;
AQA=1255.975337;
ANDM=999.72;
ANDM2=98.09;
Sy=0.02;
hg_min=0;
hg_max=298;
hbotriv=288;
Kr=0.000000386;
Lr1=75229.748383;
Lr2=71644.339597;
Wr=50;
Mr=2;
qoutriv=5;
t=1:1:120;
%---------------------------------------------------------%
Rsd=readmatrix('Results_GSA_120Month_Designing_Operation_WithoutAR.xlsx','Sheet',1,'Range','B4:DQ4');
DivD=readmatrix('Results_GSA_120Month_Designing_Operation_WithoutAR.xlsx','Sheet',1,'Range','DR4:IG4');
Rsriv=readmatrix('Results_GSA_120Month_Designing_Operation_WithoutAR.xlsx','Sheet',1,'Range','IH4:MW4');
Rgd=readmatrix('Results_GSA_120Month_Designing_Operation_WithoutAR.xlsx','Sheet',1,'Range','MX4:RM4');
CapD=readmatrix('Results_GSA_120Month_Designing_Operation_WithoutAR.xlsx','Sheet',1,'Range','RN4:RN4');
CapCD=readmatrix('Results_GSA_120Month_Designing_Operation_WithoutAR.xlsx','Sheet',1,'Range','RO4:RO4');
CapDivD=readmatrix('Results_GSA_120Month_Designing_Operation_WithoutAR.xlsx','Sheet',1,'Range','RP4:RP4');
%---------------------------------------------------------%
CD=1.5*CapD;
CCD=0.5*CapCD;
CDivD=0.5*CapDivD;

kqv=zeros(1,120);
for i=1:length(t)
    kqv(i)=hour(i)*3600/1000000;
end

ucw=zeros(1,120);
for i=1:length(t)
        ucw(i)=(uelif*ucen*hour(i)*3600/efp)/kqv(i);
end

As=zeros(1,121);
As2=zeros(1,121);
Asbar=zeros(1,120);
Es=zeros(1,120);
Ss=zeros(1,121);
Ss(1)=0.5*CapD;
As(1)=(-0.0001*((Ss(1))^2)+(0.1256*Ss(1))+2.6996);
for i=1:length(t)    
    As(i+1)=As(i);
    Asbar(i)=(As(i)+As(i+1))/2;
    Es(i)=ep(i)*(0.001)*Asbar(i);
    Ss(i+1)=Ss(i)+Qs(i)-Es(i)-Rsd(i)-Rsriv(i)-(ANDM2*eta(i));
    As2(i+1)=(-0.0001*((Ss(i+1))^2)+(0.1256*Ss(i+1))+2.6996);
    DeltaAs=abs(As2(i+1)-As(i+1));
    while DeltaAs>0.000001 
    As(i+1)=As2(i+1);
    Asbar(i)=(As(i)+As(i+1))/2;
    Es(i)=ep(i)*(0.001)*Asbar(i);
    Ss(i+1)=Ss(i)+Qs(i)-Es(i)-Rsd(i)-Rsriv(i)-(ANDM2*eta(i));
    As2(i+1)=(-0.0001*((Ss(i+1))^2)+(0.1256*Ss(i+1))+2.6996);
    DeltaAs=abs(As2(i+1)-As(i+1));
    end
    As(i+1)=As2(i+1);
end

PenaltySs=0;
PenaltySsf=zeros(1,120);
for i=1:length(t)+1
    if Ss(i)>CapD
           PenaltySsf(i)=(((Ss(i)-CapD)/CapD)^2);
           PenaltySs=PenaltySs+PenaltySsf(i);
    end
end

PenaltySs0=0;
PenaltySs0f=zeros(1,120);
for i=1:length(t)+1
    if Ss(i)<0
           PenaltySs0f(i)=((Ss(i)^2));
           PenaltySs0=PenaltySs0+PenaltySs0f(i);
    end
end

PenaltyRsd=0;
PenaltyRsdf=zeros(1,120);
for i=1:length(t)
    if Rsd(i)>CapCD
            PenaltyRsdf(i)=(((Rsd(i)-CapCD)/CapCD)^2);
            PenaltyRsd=PenaltyRsd+PenaltyRsdf(i);
    end
end

PenaltyCapCD=0;
    if CapCD>CapD
            PenaltyCapCD=(((CapCD-CapD)/CapCD)^2);
    end

PenaltyDivD=0;
PenaltyDivDf=zeros(1,120);
for i=1:length(t)
   if DivD(i)>CapDivD
      PenaltyDivDf(i)=(((DivD(i)-CapDivD)/CapDivD)^2);
      PenaltyDivD=PenaltyDivD+PenaltyDivDf(i);
  end
end

fy=zeros(1,120);
for i=1:length(t)
    fy(i)=Rsd(i)+Rgd(i)+DivD(i);
end

qinriv1=zeros(1,120);
for i=1:length(t)
    qinriv1(i)=Rsriv(i)/kqv(i);
end

Area_r1=Lr1*Wr;
qlriv1=zeros(1,120);
for i=1:length(t)
        qlriv1(i)=((Area_r1*prc(i)/1000)*10^(-6))/kqv(i);
end

qoutriv1=zeros(1,120);
for i=1:length(t)
        qoutriv1(i)=qinriv1(i)+qlriv1(i);
end

qinriv2=zeros(1,120);
for i=1:length(t)
    qinriv2(i)=qoutriv1(i);
end

hriv=zeros(1,120);
for i=1:length(t)
    hriv(i)=(-7*(10^(-6))*(qinriv2(i))^2)+(0.008*qinriv2(i))+0.1032;
end

hsriv=zeros(1,120);
for i=1:length(t)
    hsriv(i)=hriv(i)+hbotriv+Mr;
end

Criv=Kr*Lr2*Wr/Mr;
qraq=zeros(1,120);
Sg=zeros(1,121);
Sg(1)=7536;
DeltaSg=zeros(1,120);
dhg=zeros(1,120);
hg=zeros(1,121);
hg(1)=298;
hgold=298;
for i=2:length(t)+1
    hgnew=0;
    Deltahg=abs(hgnew-hgold);
    while Deltahg>0.00000001
        hg(i)=hgnew;
        if hg(i-1)>hbotriv
            qraq(i-1)=Criv*(hsriv(i-1)-hg(i-1));
        else
            qraq(i-1)=Criv*(hsriv(i-1)-hbotriv);
        end
        Sg(i)=Sg(i-1)-Rgd(i-1)+(qraq(i-1)*kqv(i-1))+(rets*fy(i-1))+(prc(i-1)*seep*AQA/1000);
        DeltaSg(i-1)=Sg(i)-Sg(i-1);
        dhg(i-1)=DeltaSg(i-1)/(Sy*AQA);
        hg(i)=hg(i-1)+dhg(i-1);
        hgold=hgnew;
        hgnew=hg(i);
        Deltahg=abs(hgnew-hgold);
    end
end

qraqv=zeros(1,120);
for i=1:length(t)
    qraqv(i)=qraq(i)*kqv(i);
end

Area_r2=Lr2*Wr;
qlriv2=zeros(1,120);
for i=1:length(t)
        qlriv2(i)=((((Area_r2*prc(i)/1000)*10^(-6))-DivD(i)+(retr*fy(i)))/kqv(i))-qraq(i);
end

qoutriv2=zeros(1,120);
for i=1:length(t)
    qoutriv2(i)=qinriv2(i)+qlriv2(i);
end

Penaltyqoutriv1=0;
Penaltyqoutriv1f=zeros(1,120);
for i=1:length(t)
    if qoutriv1(i)<qoutriv
            Penaltyqoutriv1f(i)=(((qoutriv1(i)-qoutriv)/qoutriv)^2);
            Penaltyqoutriv1=Penaltyqoutriv1+Penaltyqoutriv1f(i);
    end

end

Penaltyqoutriv2=0;
Penaltyqoutriv2f=zeros(1,120);
for i=1:length(t)
    if qoutriv2(i)<qoutriv
            Penaltyqoutriv2f(i)=(((qoutriv2(i)-qoutriv)/qoutriv)^2);
            Penaltyqoutriv2=Penaltyqoutriv2+Penaltyqoutriv2f(i);
    end
end

def=zeros(1,120);
for i=1:length(t)
   def(i)=(eta(i)*ANDM)-(DivD(i)+Rgd(i)+Rsd(i));
end

%---------------------------------------------------------%
%---------------------------------------------------------%
%---------------------------------------------------------%
%---------------------------------------------------------%

PenaltySg1=0;
PenaltySg1f=zeros(1,9);
for i=1:length(t)+1
    if Sg(i)>Sg(1)
        PenaltySg1f(i)=(Sg(i))^2;
        PenaltySg1=PenaltySg1+PenaltySg1f(i);
    end
end

Penaltyhgmin=0;
Penaltyhgminf=zeros(1,120);
for i=1:length(t)
    if hg(i)<hg_min
            Penaltyhgminf(i)=(((hg_min-hg(i))/hg_min)^2);
            Penaltyhgmin=Penaltyhgmin+Penaltyhgminf(i);
    end
end

Penaltyhgmax=0;
Penaltyhgmaxf=zeros(1,120);
for i=1:length(t)
    if hg(i)>hg_max
            Penaltyhgmaxf(i)=(((hg(i)-hg_max)/hg_max)^2);
            Penaltyhgmax=Penaltyhgmax+Penaltyhgmaxf(i);
    end
end

Penaltydef=0;
Penaltydeff=zeros(1,120);
for i=1:length(t)
    if def(i)>0
        Penaltydeff(i)=(def(i))^2;
        Penaltydef=Penaltydef+Penaltydeff(i);
    end
end
%---------------------------------------------------------%
%---------------------------------------------------------%
%---------------------------------------------------------%
%---------------------------------------------------------%
CW=0;
for i=1:length(t)
        CW=((ucw(i)*(lw+298-hg(i))*Rgd(i))/((1+rs)^i))+CW;
end


CDEF=0;
for i=1:length(t)
        CDEF=((ucdef*((def(i)^2)))/((1+rs)^i))+CDEF;
end

COMRD=ucd*CD;

COMRCD=0;
for i=1:length(t)
        COMRCD=((uccd*Rsd(i))/((1+rs)^i))+COMRCD;
end

COMRDivD=0;
for i=1:length(t)
        COMRDivD=((ucdivd*DivD(i))/((1+rs)^i))+COMRDivD;
end


Penalty=PenaltySs+PenaltySs0+PenaltyRsd+PenaltyDivD+...
    PenaltySg1+Penaltyhgmin+Penaltyhgmax+Penaltydef+...
    PenaltyCapCD+Penaltyqoutriv1+Penaltyqoutriv2;

OMR=CW+CDEF+COMRD+COMRCD+COMRDivD;
Construction=CD+CCD+CDivD;
PVC=OMR+Construction;

Z=PVC+(Penalty*1000000);



writematrix(Rsd,'GSA_Simulation.xlsx','Sheet',1,'Range','B2:DR2');
writematrix(DivD,'GSA_Simulation.xlsx','Sheet',1,'Range','B3:DR3');
writematrix(Rsriv,'GSA_Simulation.xlsx','Sheet',1,'Range','B4:DR4');
writematrix(Rgd,'GSA_Simulation.xlsx','Sheet',1,'Range','B5:DR5');
writematrix(fy,'GSA_Simulation.xlsx','Sheet',1,'Range','B6:DR6');
writematrix(def,'GSA_Simulation.xlsx','Sheet',1,'Range','B7:DR7');
writematrix(Ss,'GSA_Simulation.xlsx','Sheet',1,'Range','B8:DR8');
writematrix(As,'GSA_Simulation.xlsx','Sheet',1,'Range','B9:DR9');
writematrix(Es,'GSA_Simulation.xlsx','Sheet',1,'Range','B10:DR10');
writematrix(Sg,'GSA_Simulation.xlsx','Sheet',1,'Range','B11:DR11');
writematrix(DeltaSg,'GSA_Simulation.xlsx','Sheet',1,'Range','B12:DR12');
writematrix(dhg,'GSA_Simulation.xlsx','Sheet',1,'Range','B13:DR13');
writematrix(hg,'GSA_Simulation.xlsx','Sheet',1,'Range','B14:DR14');
writematrix(hriv,'GSA_Simulation.xlsx','Sheet',1,'Range','B15:DR15');
writematrix(qinriv1,'GSA_Simulation.xlsx','Sheet',1,'Range','B16:DR16');
writematrix(qlriv1,'GSA_Simulation.xlsx','Sheet',1,'Range','B17:DR17');
writematrix(qoutriv1,'GSA_Simulation.xlsx','Sheet',1,'Range','B18:DR18');
writematrix(qinriv2,'GSA_Simulation.xlsx','Sheet',1,'Range','B19:DR19');
writematrix(qlriv2,'GSA_Simulation.xlsx','Sheet',1,'Range','B20:DR20');
writematrix(qoutriv2,'GSA_Simulation.xlsx','Sheet',1,'Range','B21:DR21');
writematrix(qraq,'GSA_Simulation.xlsx','Sheet',1,'Range','B22:DR22');
writematrix(qraqv,'GSA_Simulation.xlsx','Sheet',1,'Range','B23:DR23');
writematrix(CapD,'GSA_Simulation.xlsx','Sheet',1,'Range','B25:B25');
writematrix(CapCD,'GSA_Simulation.xlsx','Sheet',1,'Range','B26:B26');
writematrix(CapDivD,'GSA_Simulation.xlsx','Sheet',1,'Range','B27:B27');


