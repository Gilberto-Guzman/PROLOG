/*--  SINTAXIS: Operadores                              --*/


/* poblacion(Prov,Pob) <- la poblacion, en miles de habitantes,
                          de la provincia Prov es Pob     */
poblacion(alicante,1149).
poblacion(castellon,432).
poblacion(valencia,2066).

/* superficie(Prov,Sup) <- la superfie, en miles de km2, de la
	provincia Prov es Sup           */
superficie(alicante,6).
superficie(castellon,7).
superficie(valencia,11).

/* densidad(Prov,Den) <- la densidad de poblacion, habitantes/km2, 
                         de la provincia Prov es Den            */
densidad(X,Y) :- poblacion(X,P),
                 superficie(X,S),
                 Y is P/S.

/* PREGUNTAS :

?- densidad(alicante,X).

*/