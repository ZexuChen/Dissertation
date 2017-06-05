function hullForm(T)
clf
%0��վ
Frame0 = [0	0.99877
0.0605642	1.19948
0.137688	1.40389
0.202085	1.6008
0.291015	1.80131];

%1��վ
Frame1 = [0.0605642	-5.17E-04
0.17786	0.101012
0.270929	0.202748
0.407697	0.395251
0.533272	0.599241
0.622202	0.799747
0.710825	0.996458
0.811868	1.19686
0.92533	1.40095
1.05029	1.59736
1.20009	1.80114];

%2��վ
Frame2 = [0.157467	-0.00134545
0.432229	0.0988385
0.646427	0.19954
0.941276	0.398287
1.13953	0.601656
1.2766	0.797953
1.41398	0.998045
1.56317	1.19424
1.72508	1.39792
1.91092	1.5976
2.12098	1.79707];

%3��վ
Frame3 =[0.242564	0.00172493
0.674793	0.100563
1.02223	0.200126
1.46213	0.393836
1.75759	0.600172
1.95523	0.795952
2.11684	0.995837
2.29056	1.19562
2.48881	1.39899
2.69887	1.59846
2.95738	1.79752];

%4��վ
Frame4 = [0.24287	0.00551978
0.91705	0.0984936
1.41015	0.200609
1.99571	0.396872
2.36354	0.598793
2.62205	0.79785
2.80757	0.993733
3.01763	1.1932
3.2283	1.40026
3.45017	1.59584
3.72079	1.79479];

%5��վ
Frame5 = [0.267096	0.00531279
1.14719	0.0965271
1.77354	0.197505
2.52867	0.392318
2.95768	0.601311
3.25222	0.796263
3.47439	0.99563
3.67234	1.1952
3.87029	1.39478
4.08065	1.59805
4.33916	1.7971];

%6��վ
Frame6 =[0.254676	0.00162144
1.41398	0.0980451
2.17357	0.197884
3.03803	0.395561
3.51518	0.600345
3.79761	0.7954
3.99555	0.994975
4.15716	1.19486
4.34299	1.39454
4.51671	1.59432
4.72677	1.79379];

%7��վ
Frame7 =[0.254676	0.00162144
1.63201	0.0961822
2.53695	0.194779
3.49893	0.399218
3.97577	0.600207
4.22186	0.795573
4.38347	0.995458
4.50874	1.19565
4.64612	1.39575
4.7835	1.59584
4.9448	1.79193];

%8��վ
Frame8 =[0.254676	0.00162144
1.83824	0.0982176
2.87642	0.195676
3.88623	0.392111
4.32705	0.597206
4.53711	0.796677
4.64995	0.993181
4.73888	1.19369
4.82781	1.39419
4.92886	1.5946
5.04201	1.79489];

%9��վ
Frame9 =[0.283064        0.00167906
2.04846        0.0983976
3.17212        0.203787
4.18201        0.401181
4.58621        0.603174
4.74753        0.799417
4.82435        1.0001
4.90087        1.19699
4.97769        1.39767
5.03059        1.60233
5.10711        1.79922];

%10��վ
Frame10 =[0.295177	0.00158706
1.00054	0.0304071
1.99847	0.0797899
2.99885	0.159534
3.99172	0.296297
4.37553	0.395914
4.74369	0.601978
4.86867	0.798497
4.94549	0.99918
4.99778	1.19625
5.03856	1.401
5.06663	1.59826
5.11922	1.79913];

%11��վ
Frame11 =[-0.238135	0.00184007
-0.999463	0.0304071
-1.96519	0.0795139
-2.97784	0.147964
-3.47052	0.201073
-3.7703	0.241325
-3.97317	0.28084
-4.23507	0.339791
-4.42429	0.398191
-4.61198	0.475565
-4.78387	0.59839
-4.87219	0.70539
-4.92509	0.800728
-4.96972	0.998536
-5.00222	1.19625
-5.04623	1.40165
-5.07905	1.59557
-5.12305	1.80097];

%12��վ
Frame12 =[-0.238135	0.00184007
-0.99885	0.0379974
-1.97608	0.0947865
-2.976	0.170735
-3.27639	0.203396
-3.97133	0.303611
-4.33949	0.397547
-4.58621	0.494357
-4.7233	0.59793
-4.87664	0.80036
-4.93337	0.99826
-4.97738	1.20366
-5.03442	1.39776
-5.07874	1.59936
-5.12305	1.80097];

%13��վ
Frame13 =[-0.226022	0.00174806
-0.997623	0.0531779
-1.59994	0.0995246
-1.97332	0.128943
-2.65859	0.198704
-2.9711	0.231457
-3.48647	0.303726
-3.97639	0.390991
-4.30821	0.484651
-4.56582	0.596734
-4.70321	0.696512
-4.77973	0.799624
-4.87281	0.9978
-4.91712	1.1994
-4.97386	1.3973
-5.03059	1.5952
-5.0746	1.8006];

%14��վ
Frame14 =[-0.237829	0.00563521
-0.994556	0.0911293
-1.97869	0.212528
-2.98704	0.33411
-3.9678	0.497255
-4.31112	0.598597
-4.65859	0.798704
-4.7759	0.997064
-4.83232	1.19876
-4.90117	1.39675
-4.95791	1.59465
-5.01403	1.80014];

%15��վ
Frame15 =[-0.237522	0.00943035
-0.569654	0.0992946
-1.03442	0.197761
-1.96918	0.330177
-2.98996	0.448056
-3.48171	0.512551
-3.95952	0.599724
-4.29134	0.693383
-4.48869	0.801211
-4.65476	0.996144
-4.73541	1.19802
-4.80426	1.39601
-4.86069	1.59771
-4.91712	1.7994];

%16��վ
Frame16 =[-0.239209	0.138557
-0.403895	0.200567
-0.72422	0.286545
-0.987043	0.33411
-1.44246	0.398329
-1.97087	0.459304
-2.98106	0.558115
-3.3296	0.59494
-3.67691	0.646945
-3.96335	0.702285
-4.29487	0.799739
-4.50909	0.998835
-4.60216	1.19701
-4.6707	1.3988
-4.73955	1.59679
-4.82052	1.79487];

%17��վ
Frame17 =[-0.245036	0.366449
-0.400061	0.398007
-0.698612	0.453439
-0.998083	0.497485
-1.98467	0.588523
-2.9849	0.660676
-3.52603	0.714153
-3.82581	0.754405
-4.02806	0.80151
-4.19305	0.859726
-4.32017	0.93664
-4.36372	0.997731
-4.4568	1.19591
-4.53745	1.39778
-4.606	1.59957
-4.68665	1.80145];

%18��վ
Frame18 =[-0.239362	0.58666
-0.997317	0.656973
-1.97424	0.717557
-2.9757	0.77453
-3.68612	0.833091
-3.98559	0.877137
-4.18569	0.950809
-4.24228	1.00061
-4.32355	1.19489
-4.4042	1.39677
-4.47274	1.59856
-4.55371	1.79664];

%19��վ
Frame19 =[-0.236755	0.768918
-1.0105	0.793782
-1.97746	0.827708
-2.96895	0.858023
-3.64487	0.893537
-3.86107	0.917964
-3.98007	0.94545
-4.07268	0.999318
-4.2021	1.19777
-4.27095	1.39576
-4.33949	1.59755
-4.42015	1.79942];

%20��վ
Frame20 =[0	0.998766
-0.293951	1.11112
-0.590048	1.19692
-0.994863	1.28733
-1.65253	1.39866
-1.97623	1.44289
-2.98674	1.53791
-3.98727	1.60626
-4.22863	1.61949];

%������ͼ
x0 = Frame0(:,1);
y0 = Frame0(:,2);
xx0 = 0:0.01:max(x0);
yy0 = spline(x0,y0,xx0);
plot(xx0,yy0)
hold on 
x1 = Frame1(:,1);
y1 = Frame1(:,2);
xx1 = 0:0.01:max(x1);
yy1 = spline(x1,y1,xx1);
plot(xx1,yy1)
hold on 
x2 = Frame2(:,1);
y2 = Frame2(:,2);
xx2 = 0:0.01:max(x2);
yy2 = spline(x2,y2,xx2);
plot(xx2,yy2)
hold on 
x3 = Frame3(:,1);
y3 = Frame3(:,2);
xx3 = 0:0.01:max(x3);
yy3 = spline(x3,y3,xx3);
plot(xx3,yy3)
hold on 
x4 = Frame4(:,1);
y4 = Frame4(:,2);
xx4 = 0:0.01:max(x4);
yy4 = spline(x4,y4,xx4);
plot(xx4,yy4)
hold on 
x5 = Frame5(:,1);
y5 = Frame5(:,2);
xx5 = 0:0.01:max(x5);
yy5 = spline(x5,y5,xx5);
plot(xx5,yy5)
hold on 
x6 = Frame6(:,1);
y6 = Frame6(:,2);
xx6 = 0:0.01:max(x6);
yy6 = spline(x6,y6,xx6);
plot(xx6,yy6)
hold on 
x7 = Frame7(:,1);
y7 = Frame7(:,2);
xx7 = 0:0.01:max(x7);
yy7 = spline(x7,y7,xx7);
plot(xx7,yy7)
hold on 
x8 = Frame8(:,1);
y8 = Frame8(:,2);
xx8 = 0:0.01:max(x8);
yy8 = spline(x8,y8,xx8);
plot(xx8,yy8)
hold on 
x9 = Frame9(:,1);
y9 = Frame9(:,2);
xx9 = 0:0.01:max(x9);
yy9 = spline(x9,y9,xx9);
plot(xx9,yy9)
hold on 
x10 = Frame10(:,1);
y10 = Frame10(:,2);
xx10 = 0:0.01:max(x10);
yy10 = spline(x10,y10,xx10);
plot(xx10,yy10)
hold on 
x11 = Frame11(:,1);
y11 = Frame11(:,2);
xx11 = 0:-0.01:min(x11);
yy11 = spline(x11,y11,xx11);
plot(xx11,yy11)
hold on 
x12 = Frame12(:,1);
y12 = Frame12(:,2);
xx12 = 0:-0.01:min(x12);
yy12 = spline(x12,y12,xx12);
plot(xx12,yy12)
hold on 
x13 = Frame13(:,1);
y13 = Frame13(:,2);
xx13 = 0:-0.01:min(x13);
yy13 = spline(x13,y13,xx13);
plot(xx13,yy13)
hold on 
x14 = Frame14(:,1);
y14 = Frame14(:,2);
xx14 = 0:-0.01:min(x14);
yy14 = spline(x14,y14,xx14);
plot(xx14,yy14)
hold on 
x15 = Frame15(:,1);
y15 = Frame15(:,2);
xx15 = 0:-0.01:min(x15);
yy15 = spline(x15,y15,xx15);
plot(xx15,yy15)
hold on 
x16 = Frame16(:,1);
y16 = Frame16(:,2);
xx16 = 0:-0.01:min(x16);
yy16 = spline(x16,y16,xx16);
plot(xx16,yy16)
hold on 
x17 = Frame17(:,1);
y17 = Frame17(:,2);
xx17 = 0:-0.01:min(x17);
yy17 = spline(x17,y17,xx17);
plot(xx17,yy17)
hold on 
x18 = Frame18(:,1);
y18 = Frame18(:,2);
xx18 = 0:-0.01:min(x18);
yy18 = spline(x18,y18,xx18);
plot(xx18,yy18)
hold on 
x19 = Frame19(:,1);
y19 = Frame19(:,2);
xx19 = 0:-0.01:min(x19);
yy19 = spline(x19,y19,xx19);
plot(xx19,yy19)
hold on 
x20 = Frame20(:,1);
y20 = Frame20(:,2);
xx20 = 0:-0.01:min(x20);
yy20 = spline(x20,y20,xx20);
plot(xx20,yy20)
grid
axis([-5.5 5.5 0 T])