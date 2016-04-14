function y = ebbeam_7(L,n,f,E,I,g)

h = L/n;

b = zeros(n, 1);

load = -g*50 / 0.3;

for i = ceil(1.7/h):n
    b(i) = load;
end

disp(b)

b = b + repmat(f, n, 1);
b = b * ((h^4/(E*I)));

A = lagA(n);
y = A\b;

end