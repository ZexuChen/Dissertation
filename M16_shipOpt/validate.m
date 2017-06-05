%数据顺序为：无球艏，大球艏，小球艏，长球艏。
clf
g = 9.8;
rou = 1000;



realShipDelta = 3e6;                             %实船排水量3000吨
modelLength = [2.5725, 2.7150, 2.6100, 2.6150];  %模型长
modelArea = [0.645, 0.659, 0.656, 0.661];        %模型浸湿面积
modelDelta = [23.656, 24.430, 24.420, 24.500];   %模型排水量


speed = 0.88:0.01:2.75;              
n = length(speed);
speedRes1 = zeros(n,2);
for i = 1:n
    L = modelLength(1);    %水线长
    S = modelArea(1);      %浸湿面积
    Rv = speed(i);
    Fr = Rv /sqrt(L*g);
    Re = reNum(Rv, L);
    Cf = 0.4631/(log10(Re))^2.6;          %桑海公式
    Cr = M16shipCr_Fn_T(Fr,0.91);
    speedRes1(i,2)= 1/2 * rou * Rv * Rv * S * (Cf+Cr); 
    speedRes1(i,1)= speed(i);
end



speedRes2 = load('bigBulb.txt');       %大球艏船模试验数据
speedRes3 = load('smallBulb.txt');     %小球艏船模试验数据




plot(speedRes1(:,1),speedRes1(:,2),'r')
hold on
plot(speedRes2(:,1),speedRes2(:,2),'b')
hold on 
plot(speedRes3(:,1),speedRes3(:,2),'g')



function Re = reNum(Rv, L)
    niu = 1.05372 * 10^(-6);             %水的粘性系数
    Re = Rv * L / niu;
end

