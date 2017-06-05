function f = shipOptFcn(x)
%x(1)Ϊ���������x(2)Ϊ��ˮ��
g=9.8;                      %�������ٶ�
rou = 1000;
% function 1 
f(1) = ShipHeave(x(1),x(2));         %ʵ���Ͳ���
% function 2
k = shipRatio(3000);                 %Ŀ�괬��ˮ��3000�ֵ����߱�
S = shipS_T(x(2))* k * k;            %ʵ����ʪ���
L = shipL_T(x(2))* k;                %ʵ������
Rv = x(1) * sqrt(g * L);             %ʵ���ٶ�
niu = 1.05372 * 10^(-6);             %ˮ��ճ��ϵ��
Re = Rv * L /niu ;                   % ��ŵ��
Cf = 0.4631/(log10(Re))^2.6;          %ɣ����ʽ
Cr = shipCr_Fn_T(x(1),x(2));          %ʣ������ϵ��
Rf = 1/2 * rou * Rv * Rv * S * Cf;
f(2) = Rf+ (Cr + 0.004)* S;              %ʵ��������
% function 3
f(3) = ShipPitch(x(1),x(2));         
f(4) = 1/K_index(x(1),x(2));
