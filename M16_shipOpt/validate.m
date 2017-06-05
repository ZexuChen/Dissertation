%����˳��Ϊ������������������С��������������
clf
g = 9.8;
rou = 1000;



realShipDelta = 3e6;                             %ʵ����ˮ��3000��
modelLength = [2.5725, 2.7150, 2.6100, 2.6150];  %ģ�ͳ�
modelArea = [0.645, 0.659, 0.656, 0.661];        %ģ�ͽ�ʪ���
modelDelta = [23.656, 24.430, 24.420, 24.500];   %ģ����ˮ��


speed = 0.88:0.01:2.75;              
n = length(speed);
speedRes1 = zeros(n,2);
for i = 1:n
    L = modelLength(1);    %ˮ�߳�
    S = modelArea(1);      %��ʪ���
    Rv = speed(i);
    Fr = Rv /sqrt(L*g);
    Re = reNum(Rv, L);
    Cf = 0.4631/(log10(Re))^2.6;          %ɣ����ʽ
    Cr = M16shipCr_Fn_T(Fr,0.91);
    speedRes1(i,2)= 1/2 * rou * Rv * Rv * S * (Cf+Cr); 
    speedRes1(i,1)= speed(i);
end



speedRes2 = load('bigBulb.txt');       %��������ģ��������
speedRes3 = load('smallBulb.txt');     %С������ģ��������




plot(speedRes1(:,1),speedRes1(:,2),'r')
hold on
plot(speedRes2(:,1),speedRes2(:,2),'b')
hold on 
plot(speedRes3(:,1),speedRes3(:,2),'g')



function Re = reNum(Rv, L)
    niu = 1.05372 * 10^(-6);             %ˮ��ճ��ϵ��
    Re = Rv * L / niu;
end

