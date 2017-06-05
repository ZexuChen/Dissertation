function K = K_index(Fn,t)
%计算船舶KT模型中得K指数，K越大，直航稳定性越好。
g =9.8;
rou = 1000;
k = shipRatio(3000); %缩尺比
L = M10shipL_T(t)*k; %船长
B = L / M10shipLB_T(t); %船宽
T = B/M10shipBT_T(t); %吃水
Cb = M10shipCb_T(t); %方形系数
V = Fn * (g*L)^0.5*0.515;%航速(m/2)
[Yv,Yr,Nv,Nr,Xvv,Xrr,Xvr,Yvv,Yvr,Yrr,Nvvr,Nvrr,Nrr] = hydroCoef(t);
%%%%%%%%横向力修正系数%%%%%%%%
aH = 0.6784-1.3374*Cb+1.8891*Cb^2;
%%%%%%%%舵的推力减额系数%%%%%%
tR = 0.2618+0.0539*Cb-0.1755*Cb^2;
[Nduo,Yduo] = Rudder(Fn,t);
aa = 0.5 * rou * L * T * V;
Nv = Nv * aa * L;
Yv = Yv * aa;
M = L * B * T * Cb;
Yr = Yr * aa * L;
Nr = Nr * aa * L * L;
K = (Nv*Yduo-Yv*Nduo)/(Yv*Nr+Nv*(M*V-Yr));
