/* natural(Num) <- Num es un numero perteneciente a los Naturales */
natural(0).
natural(X) :- natural(Y),
 X is Y+1.
/* diventera(Dividendo,Divisor,Cociente) <- Cociente es el resultado
 de la division entera de Dividendo entre Divisor */
diventera(A,B,C) :- natural(C),
 Y1 is C*B,
 Y2 is (C+1)*B,
 Y1 =< A, Y2 > A, !.
 /* borrar(Elem,L1,L2) <- L2 es la lista resultado de borrar todas las
 ocurrencias del elemento Elem de la lista L1 */
borrar(_,[],[]).
borrar(E,[E|L1],L2) :- !, borrar(E,L1,L2).
borrar(E,[A|L1],[A|L2]) :- borrar(E,L1,L2).
/* sust(E1,E2,L1,L2) <- L2 es la lista resultado de sustituir en lista
 L1 todas las ocurrencias del elemento E1 por E2 */
sust(_,_,[],[]). 
sust(E1,E2,[E1|L1],[E2|L2]) :- !, sust(E1,E2,L1,L2).
sust(E1,E2,[Y|L1],[Y|L2]) :- sust(E1,E2,L1,L2).
/* union(L1,L2,L3) <- L3 es la lista-conjunto unión de las
 listas-conjuntos L1 y L2 */
union([],L,L).
union([X|L1],L2,L3) :- miembro(X,L2), !,
 union(L1,L2,L3).
union([X|L1],L2,[X|L3]) :- union(L1,L2,L3).