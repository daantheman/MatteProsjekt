clear;
clc;
format longE

%******************************************************************************
disp('Oppgave 4c')
[E, I, D, d, w, f, g, L] = hentKonstanter();

% Regner ut ye for den eksakte l�sningen.
ye = zeros(1,10);
count = 1;
for i = (0.2:0.2:2)
    ye(count) = correct_y(f,E,I,L,i);
    count = count + 1;
end
ye = transpose(ye)


% Lager samme A som oppgave 2 og regner ut A*ye.
disp('Regner ut C = Ay (A-matrisen er hentet fra oppgave 2)')
A = lagA(10);
C = A*ye


%******************************************************************************
disp('Oppgave 4d')
disp('Sammenligner svaret C fra c) med vektoren b fra oppgave 3')

% Gjenskaper vektoren b fra oppgave 3.
h = L/10;
b = repmat(f, 10, 1) * h^4/(E*I);
table(C, b)

% Finner foroverfeil FE ved � ta ||C - b||
disp('foroverfeil:')
FE = max( abs(C-b) )

% Finner relativ foroverfeil eFE ved � ta ||C - b|| / ||C||
disp('Relativ foroverfeil:')
rFE = (FE)/( max( abs(C) ) )

% Antar at relativ bakoverfeil er rBE=2^-52 og regner ut
% feilforst�rrelsen som rFE/rBE
disp('Feilforst�rrelse:')
rBE = 2^-52;
rFE/rBE
condest(A)


%******************************************************************************
disp('Oppgave 4e')
disp('Sammenligner den eksakte l�sningen (ye) med vektoren (yc) fra opgave 3')

yc = ebbeam(L,10,f,E,I);
table(yc, ye)

disp('foroverfeil: ||yc-ye||1')
max(abs(yc-ye))