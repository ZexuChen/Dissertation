 function y = simple_multiobjective(x)
 % 
   Fn = 0.2;
   [h,p] = ShipSk(Fn,x);
   y(1) = shipCr_Fn_T(Fn,x)/1000;
   y(2) = h;
 
