clc

format shortg

CapD=764;
CapCD=179.9498;
CapDivD=179.9498;

lw=2;

rs=0.026667;
uelif=0.0028;
ucen=0.000001;
efp=0.75;
ucd=0.06;
uccd=0.02;
ucdivd=0.05;
ucdef=15;

Qs=[2.714	6.389	10.285	21.000	373.761	320.927	279.684	230.139	42.637	11.164	4.272	1.559 3.668	61.871	30.669	34.707	74.341	136.758	427.901	354.824	63.644	15.452	3.734	3.091 3.994	4.958	24.875	17.410	23.364	215.239	221.731	40.795	7.154	1.487	0.852	2.598 2.364	16.578	15.207	14.743	36.757	109.828	224.924	196.254	28.962	4.237	1.331	0.423 3.152	54.533	61.303	86.658	105.909	349.702	586.803	749.020	394.684	10.896	0.506	0.624 0.876	2.714	15.018	29.686	63.986	200.821	235.161	417.916	42.913	7.299	1.580	1.393 1.125	24.826	33.253	44.445	70.059	143.904	785.985	487.988	52.081	11.070	3.876	0.396 2.100	30.435	54.240	56.868	212.814	214.605	247.490	91.526	20.313	1.736	0.597	0.576 0.905	10.378	56.970	37.384	84.507	212.239	293.001	162.466	13.328	4.727	0.461	0.517 3.346	25.923	115.059	74.302	154.374	110.675	299.842	148.263	17.691	1.567	2.228	3.209 4.367];
prc=[4	19	13.5	37	76	23	57.5	70.5	0	0	0	0 23.5	135	2	14	40	34.5	76	22	6	0	1.5	2 3	0	14.5	0	45	35	2.5	12	2	3	0	17.5 16	97	1	1	23.5	9	17	28	2.5	0	0	3 17.5	73	18.5	21	62.5	33.5	47.5	67	0	0	0	0 0	3	2	50	6.5	63	38.5	109	2	0	0.5	1.5 6.5	35.5	1.5	13	2.5	33.5	37	45.5	6	3	0	4.5 5	89	45.5	23.5	22.5	31.5	15.5	13	2	0	0	8 2	45.5	44	3.5	37.5	58	17.5	19.5	2	4	1.5	0 83.5	41	56	2.5	29.5	14	30	26	0	0	0	0 12.475];
ep=[228.7	111.9	86.8	10.7	0	0	54.9	177.6	321.7	387.1	376.9	300.2 203.1	69.5	3	0	0	0	4.8	165.3	274.6	334.4	332.7	299.7 198.3	110.1	41.7	0	0	0	155.8	259.6	353.7	385.3	426.9	302.1 211.8	76.4	36.9	0	0	0	72	199.4	313.6	411	323.3	449.6 195.6	78.1	25.3	31.3	0	90.9	106	170.3	331	443.3	447.4	373.6 231.5	77.9	10.5	28.3	0	0	94.1	183.7	330.4	369	413	309.6 268.8	129.4	77	27.6	0	42.7	107.5	140.5	277.3	370.2	394.5	343.6 196.1	91.4	40	0	0	0	165.1	170.2	279.5	385.9	385.8	390.2 315	125.7	63	0	0	0	132.3	206.2	307.3	431.6	386.3	344.6 213.6	103.7	0	0	0	0	105.1	239.8	351	373.2	360.3	293.7 209.225];
eta=[0.06	0.04	0.03	0.04	0.03	0.06	0.07	0.1	0.13	0.17	0.18	0.09 0.06	0.04	0.03	0.04	0.03	0.06	0.07	0.1	0.13	0.17	0.18	0.09 0.06	0.04	0.03	0.04	0.03	0.06	0.07	0.1	0.13	0.17	0.18	0.09 0.06	0.04	0.03	0.04	0.03	0.06	0.07	0.1	0.13	0.17	0.18	0.09 0.06	0.04	0.03	0.04	0.03	0.06	0.07	0.1	0.13	0.17	0.18	0.09 0.06	0.04	0.03	0.04	0.03	0.06	0.07	0.1	0.13	0.17	0.18	0.09 0.06	0.04	0.03	0.04	0.03	0.06	0.07	0.1	0.13	0.17	0.18	0.09 0.06	0.04	0.03	0.04	0.03	0.06	0.07	0.1	0.13	0.17	0.18	0.09 0.06	0.04	0.03	0.04	0.03	0.06	0.07	0.1	0.13	0.17	0.18	0.09 0.06	0.04	0.03	0.04	0.03	0.06	0.07	0.1	0.13	0.17	0.18	0.09 0.06];
hour=[720	720	720	720	720	696	744	744	744	744	744	744 720	720	720	720	720	696	744	744	744	744	744	744 720	720	720	720	720	696	744	744	744	744	744	744 720	720	720	720	720	696	744	744	744	744	744	744 720	720	720	720	720	696	744	744	744	744	744	744 720	720	720	720	720	696	744	744	744	744	744	744 720	720	720	720	720	696	744	744	744	744	744	744 720	720	720	720	720	696	744	744	744	744	744	744 720	720	720	720	720	696	744	744	744	744	744	744 720	720	720	720	720	696	744	744	744	744	744	744 720];

rets=0.27;
retr=0.05;
seep=0.0444;
AQA=1255.97561;
ANDM=999.72;
ANDM2=98.09;
qw_min=10^(-10);
qw_max=179.9498;
Sy=0.02;
hg_min=275;
hg_max=298;
hbotriv=288;
Kr=0.000000386;
Lr1=75229.748383;
Lr2=71644.339597;
Wr=50;
Mr=2;
qoutriv_min=10^(-10);
qoutriv_max=6250.975;
t=1:1:120;
%---------------------------------------------------------%

Rsd=readmatrix('LINGO_120Month_Aquifer.xlsx','Sheet','Sheet1','Range','B2:B121');
DivD=readmatrix('LINGO_120Month_Aquifer.xlsx','Sheet','Sheet1','Range','C2:C121');
Rsriv=readmatrix('LINGO_120Month_Aquifer.xlsx','Sheet','Sheet1','Range','D2:D121');
Rgd=readmatrix('LINGO_120Month_Aquifer.xlsx','Sheet','Sheet1','Range','E2:E121');

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
Ss(1)=382;
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

PenaltySsmin=0;
PenaltySsminf=zeros(1,120);
for i=1:length(t)+1
    if Ss(i)<135
           PenaltySsminf(i)=(((135-Ss(i))/135)^2);
           PenaltySsmin=PenaltySsmin+PenaltySsminf(i);
    end
end

PenaltyRsd=0;
PenaltyRsdf=zeros(1,120);
for i=1:length(t)
    if Rsd(i)>(CapCD)
            PenaltyRsdf(i)=(((Rsd(i)-(491.960*eta(i)))/(491.960*eta(i)))^2);
            PenaltyRsd=PenaltyRsd+PenaltyRsdf(i);
    end
end

PenaltyDivD=0;
PenaltyDivDf=zeros(1,120);
for i=1:length(t)
   if DivD(i)>(CapDivD)
      PenaltyDivDf(i)=(((DivD(i)-(151.906*eta(i)))/(151.906*eta(i)))^2);
      PenaltyDivD=PenaltyDivD+PenaltyDivDf(i);
  end
end

Penaltyqwmin=0;
Penaltyqwmax=0;
Penaltyqwminf=zeros(1,120);
Penaltyqwmaxf=zeros(1,120);
for i=1:length(t)
        if Rgd(i)<qw_min
            Penaltyqwminf(i)=(((qw_min-Rgd(i))/qw_max)^2);
            Penaltyqwmin=Penaltyqwmin+Penaltyqwminf(i);
        end
        
        if Rgd(i)>(qw_max)
            Penaltyqwmaxf(i)=(((Rgd(i)-(qw_max))/(qw_max))^2);
            Penaltyqwmax=Penaltyqwmax+Penaltyqwmaxf(i);
        end
end

PenaltyRsriv=0;
PenaltyRsrivf=zeros(1,120);
for i=1:length(t)
   if Rsriv(i)<(5)
      PenaltyRsrivf(i)=(((Rsriv(i)-(5))/(5))^2);
      PenaltyRsriv=PenaltyRsriv+PenaltyRsrivf(i);
  end
end

fy=zeros(1,120);
for i=1:length(t)
    fy(i)=Rsd(i)+Rgd(i)+DivD(i);
end

Area_r1=Lr1*Wr;
qlriv1=zeros(1,120);
for i=1:length(t)
        qlriv1(i)=((Area_r1*prc(i)/1000)*10^(-6))/kqv(i);
end


qinriv1=zeros(1,120);
for i=1:length(t)
    qinriv1(i)=Rsriv(i)/kqv(i);
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
Sg(1)=7530;
Deltasg=zeros(1,120);
dhg=zeros(1,120);
hg=zeros(1,121);
hg(1)=298;
hgold=298;
for i=2:length(t)+1
    hgnew=0;
    Deltahg=abs(hgnew-hgold);
    while Deltahg>0.000001
        hg(i)=hgnew;
        if hg(i-1)>hbotriv
            qraq(i-1)=Criv*(hsriv(i-1)-hg(i-1));
        else
            qraq(i-1)=Criv*(hsriv(i-1)-hbotriv);
        end
        Sg(i)=Sg(i-1)-Rgd(i-1)+(qraq(i-1)*kqv(i-1))+(rets*fy(i-1))+(prc(i-1)*seep*AQA/1000);
        Deltasg(i-1)=Sg(i)-Sg(i-1);
        dhg(i-1)=Deltasg(i-1)/(Sy*AQA);
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

Penaltyqoutriv2min=0;
Penaltyqoutriv2max=0;
Penaltyqoutriv2minf=zeros(1,120);
Penaltyqoutriv2maxf=zeros(1,120);
for i=1:length(t)
        if qoutriv2(i)<qoutriv_min
            Penaltyqoutriv2minf(i)=(((qoutriv_min-qoutriv2(i))/qoutriv_max)^2);
            Penaltyqoutriv2min=Penaltyqoutriv2min+Penaltyqoutriv2minf(i);
       end
        
        if qoutriv2(i)>qoutriv_max
            Penaltyqoutriv2maxf(i)=(((qoutriv2(i)-qoutriv_max)/qoutriv_max)^2);
            Penaltyqoutriv2max=Penaltyqoutriv2max+Penaltyqoutriv2maxf(i);
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

PenaltySg=0;
PenaltySgf=zeros(1,9);
for i=1:length(t)+1
    if Sg(i)<0
        PenaltySgf(i)=(Sg(i))^2;
        PenaltySg=PenaltySg+PenaltySgf(i);
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

%---------------------------------------------------------%
%---------------------------------------------------------%
%---------------------------------------------------------%
%---------------------------------------------------------%
CW=0;
for i=1:length(t)
        CW=((ucw(i)*(lw+hg_max-hg(i))*Rgd(i))/((1+rs)^i))+CW;
end

CDEF=0;
for i=1:length(t)
        CDEF=((ucdef*((def(i))))/((1+rs)^i))+CDEF;
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

Penalty=PenaltySs+PenaltyRsd+PenaltySsmin+...
    Penaltyqwmin+Penaltyqwmax+PenaltyDivD+...
    Penaltyqoutriv2min+Penaltyqoutriv2max+...
    PenaltyRsriv+PenaltySg+Penaltyhgmin+Penaltyhgmax;

OMR=CW+CDEF+COMRD+COMRCD+COMRDivD;
Construction=CD+CCD+CDivD;
PVC=OMR+Construction;

Z=PVC+Penalty;