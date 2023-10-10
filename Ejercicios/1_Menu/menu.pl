% Programa Menu.pl

imprime :-
    write('Mi nombre es Daniel'), nl,
    write('Universidad Autónoma de Chiapas').

% Hechos sobre los alimentos y sus tiempos
entrada(ensalada).
entrada(sopa).
entrada(crema).

carne(res).
carne(pollo).
carne(puerco).

pescado(mojarra).
pescado(robalo).
pescado(lisa).

postre(fruta).
postre(flan).
postre(helado).

% Reglas que definen el plato principal y la comida de tres tiempos
plato_principal(X) :- carne(X).
plato_principal(X) :- pescado(X).

comida(A, B, C) :- entrada(A), plato_principal(B), postre(C).

% Hechos que asignan las calorías a los alimentos
calorias(ensalada, 30).
calorias(sopa, 60).
calorias(crema, 90).
calorias(res, 200).
calorias(puerco, 250).
calorias(pollo, 180).
calorias(mojarra, 100).
calorias(robalo, 150).
calorias(lisa, 170).
calorias(fruta, 50).
calorias(flan, 80).
calorias(helado, 100).

% GOALS
valor_calorico(E, PP, P, V) :-
    comida(E, PP, P),
    calorias(E, X),
    calorias(PP, Y),
    calorias(P, Z),
    V is X + Y + Z.

menu_equilibrado(X, Y, Z, V) :-
    valor_calorico(X, Y, Z, V),
    V =< 280.
