function f = shipOptFcn(x)
%x(1)为弗如德数，x(2)为吃水比
g=9.8;                      %重力加速度
rou = 1000;
% function 1 
f(1) = ShipHeave(x(1),x(2));         %实船耐波性
% function 2
k = shipRatio(3000);                 %目标船排水量3000吨的缩尺比
S = shipS_T(x(2))* k * k;            %实船浸湿面积
L = shipL_T(x(2))* k;                %实船长度
Rv = x(1) * sqrt(g * L);             %实船速度
niu = 1.05372 * 10^(-6);             %水的粘性系数
Re = Rv * L /niu ;                   % 雷诺数
Cf = 0.4631/(log10(Re))^2.6;          %桑海公式
Cr = shipCr_Fn_T(x(1),x(2));          %剩余阻力系数
Rf = 1/2 * rou * Rv * Rv * S * Cf;
f(2) = Rf+ (Cr + 0.004)* S;              %实船总阻力
% function 3
f(3) = ShipPitch(x(1),x(2));         
f(4) = 1/K_index(x(1),x(2));
