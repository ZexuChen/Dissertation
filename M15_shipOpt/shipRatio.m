function ratio = shipRatio(shipDelta)
%����Ŀ�괬��ˮ�����
delta = shipDelta * 10^3/1.025; 
ratio = (delta / shipDm_T(1))^(1/3); %�������߱�


