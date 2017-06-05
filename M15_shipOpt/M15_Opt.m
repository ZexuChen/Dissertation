close all 
clear all
clc
tic
k = shipRatio(3000);  
%%%%%%%%%%%%%%%%%%%%%%优化设计变量范围%%%%%%%%%%%%%%%%%%%%%%%%
Frmin = 0.5;  %傅汝德数下限
Frmax = 0.7;  %傅汝德数上限
Tmin = 0.9;   %吃水比下限
Tmax = 1.1;   %吃水比上限
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FitnessFunction = @shipOptFcn; % Function handle to the fitness function
numberOfVariables = 2; % Number of decision variables
lb = [Frmin Tmin]; % Lower bound
ub = [Frmax Tmax]; % Upper bound
A = []; % No linear inequality constraints
b = []; % No linear inequality constraints
Aeq = []; % No linear equality constraints
beq = []; % No linear equality constraints
options = gaoptimset('PlotFcns',@gaplotpareto);
[x,Fval,exitFlag,Output] = gamultiobj(FitnessFunction,numberOfVariables,A, ...
    b,Aeq,beq,lb,ub,options);
n = size(x,1);
fprintf('The number of points on the Pareto front was: %d\n', n);
fprintf('The number of generations was : %d\n', Output.generations);
toc
% figure
% a=Fval(:,1);
% b=Fval(:,2);
% c=Fval(:,3);
% plot3(a,b,c,'*')
% title ('耐波性-阻力系数多目标优化pareto解集')
% xlabel('耐波性升沉指标Heave')
% ylabel('船舶总阻力Rt(N)')
% zlabel('耐波形升沉Pitch')
% grid

result = fopen ('优化结果.txt','wt');
fprintf(result, '****************设计变量范围**********************\n');
fprintf(result, '傅汝德数Fr下限：%g\n',Frmin);
fprintf(result, '傅汝德数Fr上限：%g\n',Frmax);
fprintf(result, '吃水比Twl下限：%g\n',Tmin);
fprintf(result, '吃水比Twl上限：%g\n',Tmax);
fprintf(result, '****************优化pareto解集********************\n');
for i=1:n
    fprintf(result,'(%g)阻力（N）：%g 升沉： %g 纵摇： %g K值： %g 傅汝德数：%g 吃水比：%g\n',i,Fval(i,2),Fval(i,1),Fval(i,3),Fval(i,4),x(i,1),x(i,2));
end
fprintf(result, '****************优化pareto解集对应实船尺度********************\n');
for i=1:n
    L = shipL_T(x(i,2))*k;
    B = L / shipLB_T(x(i,2));   
    S = shipS_T(x(i,2))*k*k;
    T = B/shipBT_T(x(i,2));
    Cb = shipCb_T(x(i,2));
    fprintf(result,'(%g)水线长（m）：%g 船宽（m）： %g 吃水（m）： %g 浸湿面积（m^2）：%g 方形系数Cb：%g 舵高H：2.5 展弦比lmd：1\n',i,L,B,T,S,Cb);
end

fclose(result);


