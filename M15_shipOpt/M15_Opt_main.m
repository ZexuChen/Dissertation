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
title ('耐波性-阻力系数多目标优化pareto解集')
xlabel('耐波性升沉指标Heave')
ylabel('剩余阻力系数Cr')
toc