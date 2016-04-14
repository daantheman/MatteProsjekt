function [E, I, D, d, w, f, g, L, p] = hentKonstanter()
E = 1.3e10;
D = 480;
d = 0.03;
w = 0.3;
g = 9.81;
L = 2;
I = w*d^3/12;
f = -D*w*d*g;
n = 10;
p = 100;
end