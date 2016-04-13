% Input:
% E = young's modulus for a meterial
% L = length
% d = diameter
% g = gravity
% w = width
% D = density
function y = ebbeam(n)

[E, I, D, d, w, f, g, L, p] = hentKonstanter()
h = L/n;

%legg til sinusformel
b = repmat(f, n, 1) * h^4/(E*I);

A = lagA(n);
y = A\b;

end
