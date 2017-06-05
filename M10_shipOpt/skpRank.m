 function R = skpRank(t)
BT = M10shipBT_T(t);
LB = M10shipLB_T(t);
TL = 1/(BT*LB);
cL = 0.5;
[Cwf,Cwa] = M10shipCwf_T(t);
Cvp = M10shipCp_T(t);
R = 8.422+45.104*Cwf+10.078*Cwa-378.465*(TL)+1.273*(cL)-23.501*Cvp-15.875*Cvp;


