function shipHeave = ShipHeave(Fn,t)
%计算傅汝德数Fn，吃水比T下的耐波性指标Heave & Pitch

LDt = shipLDt_T(t);
LB = shipLB_T(t);
BT = shipBT_T(t);
Cw = shipCw_T(t);
Cb = shipCb_T(t);
Cvp = Cb/Cw;
A = [0.2601 0.1577 0.0980 0.0701 0.0783 0.3014 0.5502 1.0330];
shipHeave = A(1) + A(2)*LDt + A(3)*LB + A(4)*BT + A(5)*Cw + A(6)*Cvp + A(7)*Fn + A(8)*Fn*Fn;



