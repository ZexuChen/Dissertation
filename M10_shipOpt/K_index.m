function K = K_index(Fn,t)
%���㴬��KTģ���е�Kָ����KԽ��ֱ���ȶ���Խ�á�
g =9.8;
rou = 1000;
k = shipRatio(3000); %���߱�
L = M10shipL_T(t)*k; %����
B = L / M10shipLB_T(t); %����
T = B/M10shipBT_T(t); %��ˮ
Cb = M10shipCb_T(t); %����ϵ��
V = Fn * (g*L)^0.5*0.515;%����(m/2)
[Yv,Yr,Nv,Nr,Xvv,Xrr,Xvr,Yvv,Yvr,Yrr,Nvvr,Nvrr,Nrr] = hydroCoef(t);
%%%%%%%%����������ϵ��%%%%%%%%
aH = 0.6784-1.3374*Cb+1.8891*Cb^2;
%%%%%%%%�����������ϵ��%%%%%%
tR = 0.2618+0.0539*Cb-0.1755*Cb^2;
[Nduo,Yduo] = Rudder(Fn,t);
aa = 0.5 * rou * L * T * V;
Nv = Nv * aa * L;
Yv = Yv * aa;
M = L * B * T * Cb;
Yr = Yr * aa * L;
Nr = Nr * aa * L * L;
K = (Nv*Yduo-Yv*Nduo)/(Yv*Nr+Nv*(M*V-Yr));
