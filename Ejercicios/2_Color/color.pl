% Programa color.pl

% Hechos que definen la adyacencia de las regiones
adyacente(1, 2).
adyacente(2, 1).
adyacente(1, 3).
adyacente(3, 1).
adyacente(1, 4).
adyacente(4, 1).
adyacente(1, 5).
adyacente(5, 1).
adyacente(2, 3).
adyacente(3, 2).
adyacente(2, 4).
adyacente(4, 2).
adyacente(3, 4).
adyacente(4, 3).
adyacente(4, 5).
adyacente(5, 4).

% Hechos que definen las regiones y sus colores
color(1, rojo, a).
color(2, azul, a).
color(3, verde, a).
color(4, amarillo, a).
color(5, azul, a).

color(1, rojo, b).
color(2, azul, b).
color(3, verde, b).
color(4, azul, b).
color(5, verde, b).

% Reglas que definen el conflicto
conflicto(R1, R2, Caso) :- adyacente(R1, R2),
                           color(R1, Color, Caso),
                           color(R2, Color, Caso).

conflicto(A1, A2, Color, Caso) :- adyacente(A1, A2),
                                 color(A1, Color, Caso),
                                 color(A2, Color, Caso).

% Predicado para imprimir información
imprime :- write('Daniel Gonzalez Scarpulli'), nl,
           write('Licenciatura en sistemas computacionales'), nl,
           write('Hechos y reglas cargados correctamente en Prolog').
