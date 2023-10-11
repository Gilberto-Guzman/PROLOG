/* ESTRUCTURAS DE DATOS: Listas                           */


miembro(X,[X|_]).
miembro(X,[_|Y]) :- miembro(X,Y).

nel([],0).
nel([_|Y],N) :- nel(Y,M),
                N is M+1.

/* es_lista(Lista) <- Lista es una lista */
es_lista([]).
es_lista([_|_]).

			  /*dando lugar a la lista L3 */
concatena([],L,L).
concatena([X|L1],L2,[X|L3]) :- concatena(L1,L2,L3).

ultimo(X,[X]).
ultimo(X,[_|Y]) :- ultimo(X,Y).

/* inversa(Lista,Inver) <- Inver es la inversa de la lista Lista */
inversa([],[]).
inversa([X|Y],L) :- inversa(Y,Z),
                    concatena(Z,[X],L).

/* borrar(Elem,L1,L2) <- se borra el elemento Elem de la lista L1
			 obteniendose la lista L2 */
borrar(X,[X|Y],Y).
borrar(X,[Z|L],[Z|M]) :- borrar(X,L,M).

/* subconjunto(L1,L2) <- la lista L1 es un subconjunto de la lista L2 */
subconjunto([X|Y],Z) :- miembro(X,Z),
                        subconjunto(Y,Z).
subconjunto([],_).

/* insertar(Elem,L1,L2) <- se inserta el elemento Elem en la lista L1
			   obteniendose la lista L2 */
insertar(E,L,[E|L]).
insertar(E,[X|Y],[X|Z]) :- insertar(E,Y,Z).

permutacion([],[]).
permutacion([X|Y],Z) :- permutacion(Y,L),
                        insertar(X,L,Z).


/*
PREGUNTAS :

?- miembro(d,[a,b,c,d,e]).

?- miembro(d,[a,b,c,[d,e]]).

?- miembro(d,[a,b,c]).

?- miembro(E,[a,b,[c,d]]).

?- nel([a,b,[c,d],e],N).

?- es_lista([a,b,[c,d],e]).

?- concatena([a,b,c],[d,e],L).

?- concatena([a,b,c],L,[a,b,c,d,e]).

?- concatena(L1,L2,[a,b]).

*/