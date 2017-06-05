function shipCb = shipCb_T(t)
%计算某吃水比T下的船体方形系数Cb

%模型试验数据
CB =[0.881455	0.470111
0.890326	0.474184
0.900068	0.4771
0.909368	0.480036
0.920423	0.481777
0.931037	0.483537
0.940349	0.48759
0.950068	0.488273
0.95981	0.49119
0.970413	0.491833
0.979725	0.495886
0.989897	0.497667
1.00008	0.500563
1.00938	0.5035
1.01999	0.50526
1.02974	0.508176
1.03992	0.511073
1.04965	0.512873
1.05939	0.51579
1.07001	0.51755
1.0793	0.519369
1.08947	0.521149
1.09964	0.522929
1.10981	0.524709
1.11954	0.526509];

Cb = CB(:,2);
T = CB(:,1);
p = polyfit(T,Cb,2);
shipCb = polyval(p,t);