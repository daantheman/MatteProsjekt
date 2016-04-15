disp('Oppgave 3')
format long;

[E, I, D, d, w, f, g, L, p] = hentKonstanter();

n = 10;

disp('Numerisk losning')
y = ebbeam(L,n,f,E,I)
