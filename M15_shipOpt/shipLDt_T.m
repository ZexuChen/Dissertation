function shipLDt = shipLDt_T(t)
%计算某吃水比T下的船长L比排水量的三分之一次方

%模型试验数据
L_Dt = [0.879798	9.16081
0.889899	9.11
0.9	9.05714
0.910101	9.00633
0.919394	8.95958
0.930303	8.91082
0.94	8.86612
0.950505	8.81736
0.960606	8.77471
0.971111	8.73002
0.98	8.68327
0.990101	8.64061
0.999798	8.59796
1.0099	8.55939
1.0204	8.5147
1.0297	8.47816
1.03899	8.43957
1.04949	8.40509
1.06	8.36449
1.0701	8.32796
1.0798	8.28938
1.0903	8.25694
1.1004	8.22246
1.1097	8.18795
1.11939	8.15346];

LDt = L_Dt(:,2);
T = L_Dt(:,1);
p = polyfit(T,LDt,2);
shipLDt = polyval(p,t);