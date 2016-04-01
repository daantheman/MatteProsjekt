disp('Oppgave 3')
format long;
E = 1.3e10;
D = 480;
w = 0.3;
L = 2;
d = 0.03;
n = 10;
disp('Numerisk losning')
y = ebbeam(E,L,d,D,w,n)

disp('Faktisk losning')
syms y(x);
I = (w*d^3/12);
f = 9.81*D*w*d;
y(x) = (f/(24*E*I))*x^2*(x^2 - 4*L*x + 6*L^2);

y_e = y(L/n:L/n:L)
