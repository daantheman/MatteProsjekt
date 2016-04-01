format long;
E = 1.3e10;
D = 480;
w = 0.3;
L = 2;
d = 0.03;
n = 10;

i_max = 11;

n = zeroes(i_max, 1);
y_num_L = zeroes(i_max, 1);
y_actual_L = zeroes(i_max, 1);
error = zeroes(i_max,1);
cond_A = zeroes(i_max,1);
for i = (i:i_max)
    n(i) = 10*2^i;
    disp(n(i));
    y_num = ebbeam(E,L,d,D,w,n(i));
    y_num_L(i) = y_num(n(i));
    y_actual_L(i) = y(L);
    error(i) = abs(y(L) - y_num(n(i)));
    A = lagA(n(i));
    cond_A(i) = condest(A);
end
T = table(n, y_num_L, y_actual_L, error, cond_A);
disp(T);
figure;
subplot(2,1,1);
plot(log(n), log(error));
title('Shit');
subplot(2,1,2);
plot(log(cond_A));