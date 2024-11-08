% Venus Onyango
% April 25 2024
% Week 14A
% Numerical Integration

clear ; clc
xL = 0.88 ; 
xR = 2.03 ; 
panels = 200 ; 
deltax = (xR - xL) / panels ; 
h = deltax ; 
total_area = 0 ; 
for x = xL : h : xR - h
   b1 = 11*x^2 + 17*x + 13 ;  % f(x)
   b2 = 11*(x+h)^2 + 17*(x+h) + 13 ;  % f(x+h)
   area = 0.5 * h * (b1 + b2) ; 
   total_area = total_area + area ; 
end
fprintf('Total Area = %9.3f \n', total_area)
