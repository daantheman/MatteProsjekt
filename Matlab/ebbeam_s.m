function y = ebbeam_s(L,n,D,w,d,g,p,E,I,x)

h = L/n;
%legg til sinusformel
b = repmat(-D*w*d*g+sin_x(x,p,g,L), n, 1) * h^4/(E*I);

A = lagA(n);
y = A\b;

end