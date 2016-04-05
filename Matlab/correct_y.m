function y = correct_y(f, E, I, L, x)
    y = (f/(24*E*I))*x^2*(x^2 - 4*L*x + 6*L^2);
end