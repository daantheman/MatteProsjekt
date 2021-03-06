format long;
[E, I, D, d, w, f, g, L, p] = hentKonstanter();

i_max = 11;

n = zeros(i_max, 1)
numeric = zeros(i_max, 1);
actual = zeros(i_max, 1);
error = zeros(i_max,1);
cond_A = zeros(i_max,1);

syms y(x) ;
y(x) = correct_y_sin(f, E, I, L, p, g, x);


for i = (1:i_max)
    n(i) = 10*2^i;
    y_num = ebbeam_s(L,n(i),f,E,I,p,g);
    numeric(i) = y_num(n(i));
    actual(i) = y(L);
    error(i) = abs(actual(i) - numeric(i));
    A = lagA(n(i));
    cond_A(i) = condest(A);
end

T = table(n, numeric, actual, error, cond_A);
disp(T);
figure;
%subplot(2,1,1)
%plot(numeric);
%hold on;
%plot(actual);
%title('Actual vs numeric');
%subplot(2,1,2);
loglog(n,error);
hold on;
plot(n,cond_A*eps, ':');
hold on;
h_sq = ((ones(i_max, 1))*(L^2)) ./ (n.^2);
disp(h_sq);
plot(n, h_sq, '--');
title('Error, Theoretical Error and Condition Number');
