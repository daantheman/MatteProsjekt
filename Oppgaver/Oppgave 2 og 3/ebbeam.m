% Input:
% E = young's modulus for a meterial
% L = length
% d = diameter
% g = gravity
% w = width
% D = density
function y = ebbeam(E,L,d,D,w,n)

I = w*d^3/12;
h = L/n;
g = 9.81;
b = repmat(-D*w*d*g , n,1) * h^4/(E*I);

A = lagA(n);
y = A\b;
end
