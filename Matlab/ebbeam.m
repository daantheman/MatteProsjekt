% Input:
% E = young's modulus for a meterial
% L = length
% d = diameter
% g = gravity
% w = width
% D = density
function y = ebbeam(L,n,f,E,I)

h = L/n;

b = repmat(f, n, 1) * h^4/(E*I);

A = lagA(n);
y = A\b;

end
