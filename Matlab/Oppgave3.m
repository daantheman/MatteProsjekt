disp('Oppgave 3')
format long;
[E, I, D, d, w, f, g, L] = hentKonstanter();
n = 10;

disp('Numerisk losning')
y = ebbeam(E,L,d,D,w,n)

disp('Faktisk losning')
syms y(x);
y(x) = correct_y(f,E,I,L,x);
y_e = y(L/n:L/n:L)
