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

disp('Numerisk losning')
y = ebbeam(E,L,d,D,w,n)

disp('Faktisk losning')

disp('Oppgave 5')

for i = 1 : 11
    disp('yolo')
    c = 10 * 2^i
    y = ebbeam(E,L,d,D,w,c)
end