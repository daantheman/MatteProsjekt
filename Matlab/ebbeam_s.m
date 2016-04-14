function y = ebbeam_s(L,n,f,E,I,p,g)

h = L/n;

x = sin_x((h:h:L),p,g,L)';

b = repmat(f, n, 1);
b = b + x;
b = b * ((h^4/(E*I)));

A = lagA(n);
y = A\b;

end