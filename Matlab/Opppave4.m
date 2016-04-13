disp('Oppgave 4')

[E, I, D, d, w, f, g, L] = hentKonstanter();

v = zeros(1,10);
count = 1;

for i = (0.2:0.2:2)
    v(count) = correct_y(f,E,I,L,i);
    count = count + 1;
end

v

disp('Ganger sammen Ay')
A = lagA(10);
B = transpose(v);

C = A*B;
full(C)

disp('Sammenligner svaret fra oppgave 3')
b = ebbeam(L,10,f,E,I)

T = table(B, b)