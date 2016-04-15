format long;
[E, I, D, d, w, f, g, L, p] = hentKonstanter();
n = 10;

i_max = 11;

n = zeros(i_max, 1);
y_num_L = zeros(i_max, 1);
y_actual_L = zeros(i_max, 1);
error = zeros(i_max,1);
cond_A = zeros(i_max,1);

syms y(x) y(z);
y(x) = correct_y(f,E,I,L,x);

for i = (1:i_max)
    n(i) = 10*2^i;
    y_num = ebbeam(L,n(i),f,E,I);
    y_num_L(i) = y_num(n(i));
    y_actual_L(i) = y(L);
    error(i) = abs(y_actual_L(i) - y_num(n(i)));
    A = lagA(n(i));
    cond_A(i) = condest(A);
end

T = table(n, y_num_L, y_actual_L, error, cond_A);
disp(T);
figure;
plot(log(n), log(error));
hold on;
plot(log(n), log(cond_A));
title('Error figure and Condition Number - Oppgave 5');
