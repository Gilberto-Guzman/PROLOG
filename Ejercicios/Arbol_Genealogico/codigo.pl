mensaje :-
    nl,
    write('Ejemplo "Árbol Genealógico" cargado.'),
    nl,
    nl.

/*---- PROGRAMA PRINCIPAL ----*/

/*------ Hechos ------*/

/* padres(H, P, M, A) <- H tiene como padre a P y como madre a M, y nació el año A */

padres('Jose Gilberto Guzman Guerrero', p1, m1, 1947).
padres('Maria Rozalinda Sanchez Heredia', p2, m2, 1951).

padres('Ramon Gutierrez Rodriguez', p3, m3, 1934).
padres('Evangelina Aceves Lopez', p4, m4, 1939).

padres('Gilberto Guzman Sanchez', 'Jose Gilberto Guzman Guerrero', 'Maria Rozalinda Sanchez Heredia', 1968).
padres('Maria de Lourdes Gutierrez', 'Ramon Gutierrez Rodriguez', 'Evangelina Aceves Lopez', 1969).

padres('José Gilberto Guzman Gutierrez', 'Gilberto Guzman Sanchez', 'Maria de Lourdes Gutierrez', 2002).
padres('Lourdes Elizabeth Guzman Gutierrez', 'Gilberto Guzman Sanchez', 'Maria de Lourdes Gutierrez', 1997).

/* casados(H, M) <- El hombre H está casado con la mujer M */
casados('Jose Gilberto Guzman Guerrero', 'Maria Rozalinda Sanchez Heredia').
casados('Ramon Gutierrez Rodriguez', 'Evangelina Aceves Lopez').
casados('Gilberto Guzman Sanchez', 'Maria de Lourdes Gutierrez').

/* hombre(P) <- la persona P es del género masculino */
hombre('Jose Gilberto Guzman Guerrero').
hombre('Ramon Gutierrez Rodriguez').
hombre('Gilberto Guzman Sanchez').
hombre('José Gilberto Guzman Gutierrez').

/* mujer(P) <- la persona P es del género femenino */
mujer('Maria Rozalinda Sanchez Heredia').
mujer('Evangelina Aceves Lopez').
mujer('Maria de Lourdes Gutierrez').
mujer('Lourdes Elizabeth Guzman Gutierrez').

/*------ Reglas ------*/

/* edad(P, E) <- la persona P tiene E años */
edad(P, E) :- padres(P, _, _, A), E is 1998 - A.

/* mayor(P1, P2) <- la persona P1 es mayor que P2 */
mayor(P1, P2) :- padres(P1, _, _, A1), padres(P2, _, _, A2), A1 < A2.

/* niño(P) <- P es un niño (menos de 14 años) */
ninyo(P) :- edad(P, E), E =< 14.

/* joven(P) <- P es una persona joven (entre 14 y 25 años) */
joven(P) :- edad(P, E), 14 < E, E =< 25.

/* adulto(P) <- P es un adulto (entre 25 y 50 años) */
adulto(P) :- edad(P, E), 25 < E, E =< 50.

/* viejo(P) <- P1 es una persona vieja (más de 50 años) */
viejo(P) :- edad(P, E), E > 50.

/* hermanos(H1, H2) <- H1 es hermano/a de H2 */
hermanos(H1, H2) :- padres(H1, P1, M1, _), padres(H2, P2, M2, _), (P1 \= P2; M1 \= M2).

/* tio(T, S) <- T es el tío de S */
tio(T, S) :- hombre(T), padres(S, P, _, _), hermanos(T, P).
tio(T, S) :- hombre(T), padres(S, _, M, _), hermanos(T, M).
tio(T, S) :- hombre(T), padres(S, P, _, _), hermanos(T1, P), casados(T, T1).
tio(T, S) :- hombre(T), padres(S, _, M, _), hermanos(T1, M), casados(T, T1).

/* tia(T, S) <- T es la tía de S */
tia(T, S) :- mujer(T), padres(S, P, _, _), hermanos(T, P).
tia(T, S) :- mujer(T), padres(S, _, M, _), hermanos(T, M).
tia(T, S) :- mujer(T), padres(S, P, _, _), hermanos(T1, P), casados(T1, T).
tia(T, S) :- mujer(T), padres(S, _, M, _), hermanos(T1, M), casados(T1, T).

/* primos(P1, P2) <- P1 es primo/a de P2 */
primos(P1, P2) :- padres(P1, PA1, MA1, _), padres(P2, PA2, MA2, _),
    (hermanos(PA1, PA2); hermanos(PA1, MA2); hermanos(MA1, PA2); hermanos(MA1, MA2)).

/* abuelo(A, N) <- A es el abuelo de N */
abuelo(A, N) :- padres(N, P, M, _), (padres(P, A, _, _); padres(M, A, _, _)).

/* abuela(A, N) <- A es la abuela de N */
abuela(A, N) :- padres(N, P, M, _), (padres(P, _, A, _); padres(M, _, A, _)).

/* antepasado(A, P) <- A es antepasado de P */
antepasado(A, P) :- padres(P, A, _, _).
antepasado(A, P) :- padres(P, _, A, _).
antepasado(A, P) :- padres(P, PA, _, _), antepasado(A, PA).
antepasado(A, P) :- padres(P, _, MA, _), antepasado(A, MA).

:- mensaje.
