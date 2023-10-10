/*PROGRAMA animal.pl*/
/*Juego de identificación animal inicia con ?-corre. */

corre :- hipotesis(ANIMAL),
    write('Creo que el animal es: '),
    write(ANIMAL),
    nl, deshacer.

/*Hipotesis a ser probadas*/
hipotesis(chita) :- chita, !.
hipotesis(tigre) :- tigre, !.
hipotesis(jirafa) :- jirafa, !.
hipotesis(zebra) :- zebra, !.
hipotesis(avestruz) :- avestruz, !.
hipotesis(pinguino) :- pinguino, !.
hipotesis(albatroz) :- albatroz, !.
hipotesis(desconocido) :- write('No se pudo identificar el animal.'), nl, deshacer.

/*Reglas de identificación animal*/
chita :- mamifero, carnivoro,
    verifica('tiene_color_pardo'),
    verifica('tiene_manchas_oscuras').
tigre :- mamifero, carnivoro,
    verifica('tiene_color_pardo'),
    verifica('tiene_rayas_negras').
jirafa :- ungulado,
    verifica('tiene_cuello_largo'),
    verifica('tiene_piernas_largas').

zebra :- ungulado,
    verifica('tiene_rayas_negras').
avestruz :- ave,
    verifica('no_vuela'),
    verifica('tiene_cuello_largo').
pinguino :- ave,
    verifica('no_vuela'),
    verifica('nada'),
    verifica('es_blanco_y_negro').
albatroz :- ave,
    verifica('vive_en_costa'),
    verifica('vuela_bien').

/*Reglas de clasificación*/
mamifero :- verifica('tiene_pelo'), !.
mamifero :- verifica('da_leche').

ave :- verifica('tiene_plumas'), !.
ave :- verifica('vuela'),
    verifica('pone_huevos').

carnivoro :- verifica('come_carne'), !.
carnivoro :- verifica('tiene_colmillos'),
    verifica('tiene_garras'),
    verifica('tiene_ojos_enfrente').

ungulado :- mamifero,
    verifica('tiene_pezuñas'), !.
ungulado :- mamifero,
    verifica('rumia').

/*Cómo preguntar*/
preguntar(PREGUNTA) :- write('¿', PREGUNTA, '? '),
    read(RESPUESTA),
    ((RESPUESTA == si; RESPUESTA == s) -> assert(si(PREGUNTA)); assert(no(PREGUNTA))).

/*Cómo verificar algo*/
verifica(S) :- (si(S) -> true; (no(S) -> fail; preguntar(S))).

/*Deshacer aserciones*/
deshacer :- retract(si(_)), fail.
deshacer :- retract(no(_)), fail.
deshacer.

%:-corre.
