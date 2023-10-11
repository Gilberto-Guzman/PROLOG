
/* mujer(Per) <- Per es una mujer               */
mujer(clara).
mujer(chelo).

/* hombre(Per) <- Per es un hombre              */
hombre(jorge).
hombre(felix).
hombre(borja).

/* moreno(Per) <- Per tiene el pelo de color negro */
moreno(jorge).



/* tiene(Per,Obj) <- Per posee el objeto Obj    */
tiene(jorge,moto).

/* le_gusta(X,Y) <- a X le gusta Y              */
le_gusta_a(clara,jorge).
le_gusta_a(jorge,clara).
le_gusta_a(jorge,informatica).
le_gusta_a(clara,informatica).

/* es_padre_de(Padre,Hijo-a) <- Padre es el padre de Hijo-a */
es_padre_de(felix,borja).
es_padre_de(felix,clara).

/* es_madre_de(Madre,Hijo-a) <- Madre es la madre de Hijo-a */
es_madre_de(chelo,borja).
es_madre_de(chelo,clara).

/* regala(Per1,Obj,per2) <- Per1 regala Obj a Per2          */
regala(jorge,flores,clara).


/* Condicional: REGLAS               */

/* novios(Per1,Per2) <- Per1 y Per2 son novios              */
novios(X,Y) :- le_gusta_a(X,Y),
               le_gusta_a(Y,X).

/* hermana_de(Per1,Per2) <- Per1 es la hermana de Per2      */
hermana_de(X,Y) :- mujer(X),
                   es_padre_de(P,X), es_madre_de(M,X),
                   es_padre_de(P,Y), es_madre_de(M,Y).

/* PREGUNTAS:

?- le_gusta_a(clara,jorge).

?- le_gusta_a(jorge,cafe).

?- capital_de(madrid,espana).

?- le_gusta_a(jorge,X).

?- le_gusta_a(clara,jorge),le_gusta_a(jorge,cafe).

?- le_gusta_a(clara,X),le_gusta_a(jorge,X).

?- le_gusta_a(clara,informatica);le_gusta_a(jorge,cafe).

?- le_gusta_a(clara,cafe);le_gusta_a(jorge,cafe).

?- le_gusta_a(clara,X);le_gusta_a(jorge,X).

?- not(le_gusta_a(clara,jorge)).

?- not(le_gusta_a(jorge,cafe)).

?- hermana_de(clara,borja).

?- hermana_de(borja,X).

?- hermana_de(clara,X).

*/