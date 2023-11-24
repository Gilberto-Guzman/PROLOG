:- dynamic conocido/1.

mostrar_diagnostico(X):- haz_diagnostico(X), clean_scratchpad.
mostrar_diagnostico('lo siento diagnostico desconocido'):- clean_scratchpad.

haz_diagnostico(Diagnosis):-
    obten_hipotesis_y_sintomas(Diagnosis, ListaDeSintomas),
    prueba_presencia_de(Diagnosis, ListaDeSintomas).
                            
obten_hipotesis_y_sintomas(Diagnosis, ListaDeSintomas):-
    conocimiento(Diagnosis, ListaDeSintomas).

prueba_presencia_de(_, []).
prueba_presencia_de(Diagnosis, [Head | Tail]):-
    prueba_verdad_de(Diagnosis, Head),
    prueba_presencia_de(Diagnosis, Tail).

prueba_verdad_de(Diagnosis, Sintoma):- conocido(Sintoma), conocido(Diagnosis).
prueba_verdad_de(Diagnosis, Sintoma):-
    not(conocido(is_false(Sintoma))),
    pregunta_sobre(Diagnosis, Sintoma, Reply),
    Reply = 'si'.

pregunta_sobre(Diagnosis, Sintoma, Reply):-
    preguntar(Sintoma, Respuesta),
    process(Diagnosis, Sintoma, Respuesta, Reply).

process(Diagnosis, Sintoma, si, si):- asserta(conocido(Sintoma)), asserta(conocido(Diagnosis)).
process(Diagnosis, Sintoma, no, no):- asserta(conocido(is_false(Sintoma))), asserta(conocido(Diagnosis)).

clean_scratchpad:- retract(conocido(_)), fail.
clean_scratchpad.
     
conocido(_):- fail.

not(X):- X, !, fail.
not(_).
