Fr = 0.2:0.02:0.70;
Dm_1 = [35.83, 35.83, 35.83, 35.83, 35.83, 35.83, 35.83, 35.83, 35.83, 35.83, 35.83, 35.83, 35.83,...
        35.83, 35.83, 35.83, 35.83, 35.83, 35.83, 35.83, 35.83, 35.83, 35.83, 35.83, 35.83, 35.83];
Dm_2 = [39.00, 39.00, 39.00, 39.00, 39.00, 39.00, 39.00, 39.00, 39.00, 39.00, 39.00, 39.00, 39.00,...
        39.00, 39.00, 39.00, 39.00, 39.00, 39.00, 39.00, 39.00, 39.00, 39.00, 39.00, 39.00, 39.00];
Dm_3 = [42.30, 42.30, 42.30, 42.30, 42.30, 42.30, 42.30, 42.30, 42.30, 42.30, 42.30, 42.30, 42.30,...
        42.30, 42.30, 42.30, 42.30, 42.30, 42.30, 42.30, 42.30, 42.30, 42.30, 42.30, 42.30, 42.30];
Dm_4 = [45.50, 45.50, 45.50, 45.50, 45.50, 45.50, 45.50, 45.50, 45.50, 45.50, 45.50, 45.50, 45.50,... 
        45.50, 45.50, 45.50, 45.50, 45.50, 45.50, 45.50, 45.50, 45.50, 45.50, 45.50, 45.50, 45.50]; 
Dm_5 = [48.85, 48.85, 48.85, 48.85, 48.85, 48.85, 48.85, 48.85, 48.85, 48.85, 48.85, 48.85, 48.85,...
        48.85, 48.85, 48.85, 48.85, 48.85, 48.85, 48.85, 48.85, 48.85, 48.85, 48.85, 48.85, 48.85];
 
 
Cr_1 = [0.58, 0.61, 0.66, 0.70, 0.75, 0.76, 0.76, 0.79, 0.96, 1.23, 1.57, 1.82, 1.98, ...
        2.08, 2.14, 2.17, 2.16, 2.12, 2.07, 2.02, 1.96, 1.90, 1.84, 1.78, 1.73, 1.68];
Cr_2 = [0.64, 0.68, 0.73, 0.79, 0.86, 0.87, 0.86, 0.89, 1.07, 1.37, 1.69, 1.96, 2.15, ...
        2.28, 2.35, 2.38, 2.37, 2.33, 2.27, 2.20, 2.14, 2.07, 2.01, 1.95, 1.88, 1.82];
Cr_3 = [0.73, 0.78, 0.85, 0.92, 1.00, 1.02, 1.00, 1.03, 1.21, 1.51, 1.85, 2.13, 2.34, ...
        2.49, 2.58, 2.61, 2.59, 2.54, 2.47, 2.40, 2.33, 2.25, 2.18, 2.10, 2.04, 1.97];
Cr_4 = [0.87, 0.93, 1.00, 1.10, 1.18, 1.21, 1.19, 1.23, 1.44, 1.75, 2.07, 2.37, 2.60, ...
        2.75, 2.83, 2.85, 2.82, 2.76, 2.68, 2.59, 2.51, 2.43, 2.34, 2.27, 2.19, 2.11];
Cr_5 = [1.06, 1.13, 1.22, 1.34, 1.43, 1.48, 1.46, 1.51, 1.70, 2.01, 2.35, 2.67, 2.91, ...
        3.06, 3.12, 3.12, 3.07, 3.00, 2.91, 2.81, 2.71, 2.62, 2.52, 2.43, 2.34, 2.26,];
    
    
Y = [35.83, 39.00, 42.30, 45.50, 48.85];
X = 0.2:0.02:0.70;
Z = [Cr_1; Cr_2; Cr_3; Cr_4; Cr_5];
surf(X,Y,Z);

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



grid