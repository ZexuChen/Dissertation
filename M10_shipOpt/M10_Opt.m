close all 
clear all
clc
tic
k = shipRatio(3000);  
%%%%%%%%%%%%%%%%%%%%%%�Ż���Ʊ�����Χ%%%%%%%%%%%%%%%%%%%%%%%%
Frmin = 0.5;  %�����������
Frmax = 0.7;  %�����������
Tmin = 0.9;   %��ˮ������
Tmax = 1.1;   %��ˮ������
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
figure
a=Fval(:,1);
b=Fval(:,2);
c=Fval(:,3);
plot3(a,b,c,'*')
title ('�Ͳ���-����ϵ����Ŀ���Ż�pareto�⼯')
xlabel('�Ͳ�������ָ��Ranking')
ylabel('����������Rt(N)')
zlabel('������Kָ��')
grid

result = fopen ('�Ż����.txt','wt');
fprintf(result, '****************��Ʊ�����Χ**********************\n');
fprintf(result, '�������Fr���ޣ�%g\n',Frmin);
fprintf(result, '�������Fr���ޣ�%g\n',Frmax);
fprintf(result, '��ˮ��Twl���ޣ�%g\n',Tmin);
fprintf(result, '��ˮ��Twl���ޣ�%g\n',Tmax);
fprintf(result, '****************�Ż�pareto�⼯********************\n');
for i=1:n
    fprintf(result,'(%g)����( N )��%g Ranking�� %g ������Kָ���� %g ���������%g ��ˮ�ȣ�%g\n',i,Fval(i,2),1/Fval(i,1),1/Fval(i,3),x(i,1),x(i,2));
end
fprintf(result, '****************�Ż�pareto�⼯��Ӧʵ���߶�********************\n');
for i=1:n
    L = M10shipL_T(x(i,2))*k;
    B = L / M10shipLB_T(x(i,2));
    S = M10shipS_T(x(i,2))*k*k;
    T = B/M10shipBT_T(x(i,2));
    Cb = M10shipCb_T(x(i,2));
    fprintf(result,'(%g)ˮ�߳���m����%g ������m���� %g ��ˮ��m���� %g ��ʪ�����m^2����%g ����ϵ��Cb��%g\n',i,L,B,T,S,Cb);
end

fclose(result);

