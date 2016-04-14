format long;
[E, I, D, d, w, f, g, L, p] = hentKonstanter();
i_max = 11;

n = zeros(i_max, 1);
numeric = zeros(i_max, 1);
actual = zeros(i_max, 1);
error = zeros(i_max,1);
cond_A = zeros(i_max,1);

syms y(x);
y(x) = correct_y(f,E,I,L,x);

for i = (1:i_max)
    n(i) = 10*2^i;
    y_num = ebbeam_7(L,n(i),f,E,I,g);
    numeric(i) = y_num(n(i));
end

T = table(n, numeric);
figure;
plot(numeric);

disp(T);