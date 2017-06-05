function shipXb = shipXb_T(t)
%计算某吃水比T下的船Xb（％）

%模型试验数据
XB = [0.880485	-0.419336
0.890795	-0.55998
0.900173	-0.656347
0.91047	-0.785823
0.919848	-0.882191
0.929667	-0.978361
0.939928	-1.07433
0.950642	-1.18128
0.960473	-1.28862
0.969839	-1.37382
0.979633	-1.44765
0.990347	-1.55459
1.00014	-1.62843
1.00995	-1.71343
1.02018	-1.78707
1.03042	-1.86071
1.03977	-1.93474
1.05001	-2.00838
1.0598	-2.08221
1.06959	-2.14488
1.07983	-2.22968
1.09006	-2.29215
1.10027	-2.34346
1.1105	-2.41709
1.11985	-2.47996];

Xb = XB(:,2);
T = XB(:,1);
p = polyfit(T,Xb,2);
shipXb = polyval(p,t);