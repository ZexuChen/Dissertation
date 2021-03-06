function shipCr = M16shipCr_Fn_T(Fn, t)
Cr_1 = [0.3205    0.3974    0.4836    0.5790    0.6789    0.7606    0.8283    0.9052    1.0466    1.2663    1.5366    1.7977    2.0403 ...
        2.2186    2.3278    2.3771    2.3666    2.3331    2.2996    2.2523    2.2004    2.1393    2.0781    1.9985    1.9190    1.8303];
Cr_2 = [0.3481    0.4250    0.5066    0.6067    0.7066    0.7975    0.8698    0.9467    1.0973    1.3262    1.6148    1.9220    2.1646 ...
        2.3336    2.4336    2.4645    2.4402    2.4068    2.3640    2.3075    2.2464    2.1852    2.1149    2.0399    1.9558    1.8717];
Cr_3 = [0.3711    0.4527    0.5342    0.6389    0.7388    0.8481    0.9250    1.0066    1.1618    1.3998    1.7253    2.0646    2.3257 ...
        2.4947    2.5810    2.5888    2.5600    2.5126    2.4514    2.3904    2.3338    2.2635    2.1840    2.1043    2.0157    1.9270];
Cr_4 = [0.4126    0.4895    0.5803    0.6803    0.7941    0.9171    1.0170    1.1032    1.2722    1.5194    1.8726    2.2257    2.5098 ...
        2.6926    2.7742    2.7729    2.7302    2.6645    2.5942    2.5284    2.4535    2.3740    2.2852    2.2103    2.1215    2.0374];
Cr_5 = [0.4770    0.5586    0.6493    0.7539    0.8677    1.0230    1.1597    1.2735    1.4564    1.7221    2.0567    2.4329    2.7354 ...
        2.9458    3.0550    3.0584    3.0063    2.9223    2.8382    2.7495    2.6652    2.5673    2.4694    2.3713    2.2688    2.1617];
    
    
Y = [23.12, 25.00, 27.00, 29.00, 31.21];
X = 0.2:0.02:0.70;
Z = [Cr_1; Cr_2; Cr_3; Cr_4; Cr_5]/10^3;
Dm = M16shipDm_T(t);            %��ˮ��
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
 
 

