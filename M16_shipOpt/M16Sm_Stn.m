function Sm = M16Sm_Stn(x)
% M16号船模随站号变化 横剖面面积百分比变化曲线
% X为站号 
M16_Sm = [0,0
0.2906351123666333, 0.0390370070206123
0.6623921266773571, 0.08242481585677286
1.0075092047378007, 0.12291209014923421
1.3526262827982443, 0.16339936444169578
1.5645436796072687, 0.1893839660156622
2.015018409475598, 0.24425370370729427
2.25237364934166, 0.27591916504933445
2.5175709186512556, 0.30770483571069884
2.72948831546028, 0.3336894372846654
2.9940845381732473, 0.36686527055821727
3.2320408246359342, 0.39714056928807007
3.44455926804158, 0.42173500824984944
3.7091554907545508, 0.4549108415234012
3.9743527600641393, 0.48669651218476573
4.211707999930205, 0.5183619735268058
4.423625396739229, 0.5443465751007723
4.689423712645443, 0.5747420831499497
4.981260918205319, 0.6094282883550132
5.274300216958437, 0.6413341683357021
5.593378405365215, 0.6775307454722773
5.887018750714958, 0.708046462840779
6.234540015161887, 0.7429730866844914
6.609903309052347, 0.7780199198475282
6.9319867304422385, 0.807265683923167
7.309153164122561, 0.838142029249642
7.714161627246417, 0.8691385838954413
8.039851328216038, 0.8900433722979564
8.392782012032567, 0.9124585326319832
8.829238784179683, 0.9352343209239833
9.212415683826228, 0.9522090401285853
9.816525679231129, 0.9743159217243447
10.174264735820637, 0.9856097811608732
10.700258062264554, 0.9948445712889736
11.25769969773173, 0.9958585950632748
11.763664600488209, 0.9869010619136162
12.186704461510725, 0.9761927381937969
12.667832567806785, 0.9601641826638774
13.124123877642429, 0.937064604753697
13.46904706970396, 0.9134841895662189
13.786729278918585, 0.8883934024472292
14.077771551882929, 0.8604020807845405
14.455946192757587, 0.8244304114067011
14.704624374960016, 0.7976489383772132
14.98354877299246, 0.7654270242183002
15.161419788392823, 0.7411253531148756
15.369537019623206, 0.7113832408820263
15.57885634404683, 0.6788608034248024
15.803298776385464, 0.6436181454028662
16.04406640983235, 0.602874941591843
16.211622690090685, 0.5701721901556324
16.42454829409404, 0.5293087770252848
16.59090248115913, 0.49938635081344884
16.78870497724748, 0.4612431582478136
16.972586458614067, 0.42303986102251623
17.156467939980654, 0.38483656379721864
17.307699019130734, 0.35763435815009514
17.461334284667306, 0.3248715020542223
17.644013672840646, 0.2894485300532994
17.825490967820745, 0.256805883276751
18.111627925012655, 0.2079020177715909
18.336070357351286, 0.17265935974965463
18.603477927048456, 0.13481669048233047
18.88480651146739, 0.09703412587466831
19.21941496838689, 0.06505263035440434
19.524979302669617, 0.03573125073919048
19.741007082655543, 0.01995086928787626
19.97095587736323, 0.004230592496224261
20,0];
Sm = interp1(M16_Sm(:,1),M16_Sm(:,2),x);

