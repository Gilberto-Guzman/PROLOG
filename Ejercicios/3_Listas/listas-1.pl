% list-1.pl: Cuenta y reporta monedas por renglón

% Definición de las monedas en las listas
p([]).
p([x|Resto]) :- p(Resto).

% Predicado para contar elementos en una lista
count([], 0).
count([_|Resto], N) :-
    count(Resto, M), % Recursión
    N is M + 1.

% Predicado principal
main :-
    p(L),
    count(L, N),
    write(N), nl, % Utiliza "nl" para agregar una nueva línea
    fail.
main :- halt. % Termina el programa después de contar todas las listas

