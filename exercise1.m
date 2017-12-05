%assigment 2
%exercise 1


%Data
a = 22.86 * 10^(-3);
b = 10.16 * 10^(-3); 
f = 9 * 10 ^ 9;
co = 3 * 10 ^ 8;
mo = 4 * pi * 10 ^ (-7);
eo = 8.854 * 10 ^ (-12);


%Find waveguide modes
m = 1;
n = 0;
fc10 = co / (2 * pi) * sqrt((m * pi / a) ^ 2 + (n * pi / b) ^ 2);
%fc10 < f. (mode passes)
m = 1;
n = 1;
fc11 = co / (2 * pi) * sqrt((m * pi / a) ^ 2 + (n * pi / b) ^ 2);
%fc11 < f (not passes)
%fc = fc10 


%Find zc
ho = sqrt(mo / eo);
zc = ho / sqrt(1 - (fc10 / f) ^ 2);



