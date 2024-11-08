% Venus Onyango
% April 25 2024
% Week 14A
% Numerical Integration

clear ; clc
xL = 0 ; 
xR = 2*pi ; 
panels = 16 ; 
deltax = (xR - xL) / panels ; 
h = deltax ; 
total_area = 0 ; 
for x = xL : h : xR - h
   b1 = abs(cos(x)) ;  % f(x)
   b2 = abs(cos(x+h)) ;  % f(x+h)
   area = 0.5 * h * (b1 + b2) ; 
   total_area = total_area + area ; 
end
fprintf('Total Area using 16 panels = %9.4f \n', total_area)