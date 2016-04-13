[E, I, D, d, w, f, g, L, p] = hentKonstanter();

y = correct_y_sin(f,E,I,L,p,g,2)

z = correct_y(f,E,I,L,2)

sin_x(2,p,g,L)

i_max = 11;

n = zeros(i_max, 1);
numeric = zeros(i_max, 1);
actual = zeros(i_max, 1);
error = zeros(i_max,1);
cond_A = zeros(i_max,1);

syms y(x) y(z);
y(x) = correct_y_sin(f, E, I, L, p, g, x);

for i = (1:i_max)
    n(i) = 10*2^i;
    y_num = ebbeam_s(L,n(i),D,w,d,g,p,E,I,L);
    numeric(i) = y_num(n(i));
    actual(i) = y(L);
    error(i) = abs(actual(i) - y_num(n(i)));
    A = lagA(n(i));
    cond_A(i) = condest(A);
end

T = table(n, numeric, actual, error, cond_A);
disp(T);
figure;
subplot(2,1,1);
plot(log(n), log(error));
title('Error figure - Oppgave 6');
subplot(2,1,2);
plot(log(cond_A));
