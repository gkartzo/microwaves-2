function [zo, zl,swr,beta] = solveSystem(dmin1, dmin2,dmin3,dmin4)
syms zo zl swr beta;
 k1 = (zo * ((1-(1i * swr*tan(beta)*dmin1))/(swr - 1i * tan(beta * dmin1)))) - zl == 0; 
 k2 = (zo * ((1-(1i * swr*tan(beta)*dmin2))/(swr - 1i * tan(beta * dmin2)))) - zl == 0; 
 k3 = (zo * ((1-(1i * swr*tan(beta)*dmin3))/(swr - 1i * tan(beta * dmin3)))) - zl == 0; 
 k4 = (zo * ((1-(1i * swr*tan(beta)*dmin4))/(swr - 1i * tan(beta * dmin4)))) - zl == 0;
% k1 = (x(1) * ((1-(1i * x(2)*tan(beta)*dmin1))/(x(2) - 1i * tan(x(3) * dmin1)))) - x(4) == 0;
% k2 = (x(1) * ((1-(1i * x(2)*tan(beta)*dmin2))/(x(2) - 1i * tan(x(3) * dmin2)))) - x(4) == 0;
% k3 = (x(1) * ((1-(1i * x(2)*tan(beta)*dmin3))/(x(2) - 1i * tan(x(3) * dmin3)))) - x(4) == 0;
% k4 = (x(1) * ((1-(1i * x(2)*tan(beta)*dmin4))/(x(2) - 1i * tan(x(3) * dmin4)))) - x(4) == 0;

x = solve(k1,k2,k3,k4,zo, zl,swr,beta);
% zo = x(1); 
% swr = x(2); 
% beta = x(3);
% zl = x(4);


end
