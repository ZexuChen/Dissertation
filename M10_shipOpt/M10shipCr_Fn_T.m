function shipCr = M10shipCr_Fn_T(Fn, t)
g=9.8;
Cr_1 = [0.3314    0.3975    0.4767    0.5646    0.6526    0.7321    0.7808    0.8469    0.9739    1.1964    1.5281    1.8463    2.0646...
        2.2089    2.2882    2.2981    2.2687    2.2263    2.1708    2.1197    2.0686    2.0132    1.9576    1.9022    1.8468    1.7957];
Cr_2 = [0.4008    0.4713    0.5549    0.6690    0.7656    0.8407    0.8895    0.9730    1.1304    1.3662    1.7324    2.0590    2.3036...
        2.4480    2.5230    2.5327    2.5120    2.4609    2.3924    2.3283    2.2598    2.1956    2.1315    2.0630    2.0076    1.9392];
Cr_3 = [0.4790    0.5627    0.6549    0.7646    0.8699    0.9667    1.0459    1.1164    1.2739    1.5356    1.9365    2.2853    2.5383...
        2.7042    2.7881    2.8022    2.7641    2.7043    2.6315    2.5542    2.4814    2.4086    2.3444    2.2759    2.2031    2.1346];
Cr_4 = [0.6007    0.7017    0.8201    0.9689    1.1046    1.2231    1.3066    1.4032    1.5693    1.8572    2.3277    2.7459    3.0293 ...
        3.1998    3.2878    3.2975    3.2465    3.1692    3.0747    2.9758    2.8855    2.7954    2.7051    2.6192    2.5334    2.4432];
Cr_5 = [0.7486    0.8712    1.0025    1.1470    1.3089    1.4535    1.5457    1.6380    1.8302    2.1398    2.6884    3.2109    3.5248...
        3.6951    3.7790    3.7885    3.7244    3.6256    3.5092    3.3930    3.2767    3.1692    3.0701    2.9625    2.8550    2.7473];

X = 0.2:0.02:0.70;
Y = [37.86, 41.00, 44.50, 51.00, 57.10];
Z = [Cr_1; Cr_2; Cr_3; Cr_4; Cr_5]/10^3;
Dm = M10shipDm_T(t);            %��ˮ��
shipCr = interp2(X,Y,Z,Fn,Dm,'spline');

% X1 = 0.2:0.01:0.70;
% Y1 = 35.83:0.1:48.85;
% [X2,Y2]=meshgrid(X1,Y1);
% t11=interp2(X,Y,Z,X2,Y2,'spline');
% surf(X1,Y1,t11)
% grid 
%     
% X = [Dm_1; Dm_2; Dm_3; Dm_4; Dm_5];
% Y = [Fr; Fr; Fr; Fr; Fr];
% Z = [Cr_1; Cr_2; Cr_3; Cr_4; Cr_5];
% 
%     
% plot3(Dm_1, Fr, Cr_1)
% hold on 
% plot3(Dm_2, Fr, Cr_2)
% hold on 
% plot3(Dm_3, Fr, Cr_3)
% hold on 
% plot3(Dm_4, Fr, Cr_4)
% hold on 
% plot3(Dm_5, Fr, Cr_5)

    
    

%plot (Fr, Cr_1)
%hold on 
%plot (Fr, Cr_2)
%hold on 
%plot (Fr, Cr_3)
%hold on 
%plot (Fr, Cr_4)
%hold on 
%plot (Fr, Cr_5)

% 
% Dm_1 = [35.83, 35.83, 35.83, 35.83, 35.83, 35.83, 35.83, 35.83, 35.83, 35.83, 35.83, 35.83, 35.83,...
%         35.83, 35.83, 35.83, 35.83, 35.83, 35.83, 35.83, 35.83, 35.83, 35.83, 35.83, 35.83, 35.83];
% Dm_2 = [39.00, 39.00, 39.00, 39.00, 39.00, 39.00, 39.00, 39.00, 39.00, 39.00, 39.00, 39.00, 39.00,...
%         39.00, 39.00, 39.00, 39.00, 39.00, 39.00, 39.00, 39.00, 39.00, 39.00, 39.00, 39.00, 39.00];
% Dm_3 = [42.30, 42.30, 42.30, 42.30, 42.30, 42.30, 42.30, 42.30, 42.30, 42.30, 42.30, 42.30, 42.30,...
%         42.30, 42.30, 42.30, 42.30, 42.30, 42.30, 42.30, 42.30, 42.30, 42.30, 42.30, 42.30, 42.30];
% Dm_4 = [45.50, 45.50, 45.50, 45.50, 45.50, 45.50, 45.50, 45.50, 45.50, 45.50, 45.50, 45.50, 45.50,... 
%         45.50, 45.50, 45.50, 45.50, 45.50, 45.50, 45.50, 45.50, 45.50, 45.50, 45.50, 45.50, 45.50]; 
% Dm_5 = [48.85, 48.85, 48.85, 48.85, 48.85, 48.85, 48.85, 48.85, 48.85, 48.85, 48.85, 48.85, 48.85,...
%         48.85, 48.85, 48.85, 48.85, 48.85, 48.85, 48.85, 48.85, 48.85, 48.85, 48.85, 48.85, 48.85];
 
 
