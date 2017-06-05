function f = shipOptFcn(x)
%x(1)为弗如德数，x(2)为吃水比
g=9.8;                      %重力加速度
rou = 1000;
% function 1 
f(1) = 1/skpRank(x(2));         %船舶耐波性评级
% function 2
k = shipRatio(3000);                 %目标船排水量3000吨的缩尺比
S = M16shipS_T(x(2))* k * k;            %实船浸湿面积
L = M16shipL_T(x(2))* k;                %实船长度
Rv = x(1) * sqrt(g * L);             %实船速度
niu = 1.05372 * 10^(-6);             %水的粘性系数
Re = Rv * L /niu ;                    %雷诺数
Cf = 0.4631/(log10(Re))^2.6;          %桑海公式
Cr = M16shipCr_Fn_T(x(1),x(2));          %剩余阻力系数
f(2) =1/2 * rou * Rv * Rv * S * (Cf+Cr);        %实船总阻力
f(3) = 1/K_index(x(1),x(2));             %船舶操纵性K指数
