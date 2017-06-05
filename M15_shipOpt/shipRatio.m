function ratio = shipRatio(shipDelta)
%输入目标船排水体积吨
delta = shipDelta * 10^3/1.025; 
ratio = (delta / shipDm_T(1))^(1/3); %计算缩尺比


