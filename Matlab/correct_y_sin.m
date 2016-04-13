function y = correct_y_sin(f, E, I, L, p, g, x)
    %y = ((f/(24*E*I))*x^2*(x^2 - 4*L*x + 6*L^2)) - (((p*g*L)/(E*I*pi))*(((L^3)/(pi^3))*sin(pi*x/L)-(x^3)/6+(L*x^2)/2-x*(L^2)/(pi^2)));
    y = (((f+sin_x(x,p,g,L))/(24*E*I))*x^2*(x^2 - 4*L*x + 6*L^2));
end