tic
FitnessFunction = @simple_multiobjective;
numberOfVariables = 1;
A = []; b = [];
Aeq = []; beq = [];
lb = 0.9;
ub = 1.1;
[x,fval] = gamultiobj(FitnessFunction,numberOfVariables,A,b,Aeq,beq,lb,ub);
a=fval(:,1);
b=fval(:,2);
plot(a,b,'*')
title ('�Ͳ���-����ϵ����Ŀ���Ż�pareto�⼯')
xlabel('�Ͳ�������ָ��Heave')
ylabel('ʣ������ϵ��Cr')
toc