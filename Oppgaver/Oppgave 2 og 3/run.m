disp('Oppave 2')

A = lagA(10);
full(A)

disp('Oppgave 3')
format long;
E = 1.3e10;
D = 480;
w = 0.3;
L = 2;
d = 0.03;
n = 10;
disp('Numerisk l?sning')
y = ebbeam(E,L,d,D,w,n)

disp('Faktisk l?sning')