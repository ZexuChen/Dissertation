function shipPitch = ShipPitch(Fn,t)

LDt = shipLDt_T(t);
LB = shipLB_T(t);
BT = shipBT_T(t);
Cw = shipCw_T(t);
Cb = shipCb_T(t);
Cvp = Cb/Cw;

B = [0.0224 0.0038 0.0041 0.0035 0.0352 0.0054 0.2979 0.5015];

shipPitch = B(1) + B(2)*LDt + B(3)*LB + B(4)*BT + B(5)*Cw + B(6)*Cvp + B(7)*Fn + B(8)*Fn*Fn;