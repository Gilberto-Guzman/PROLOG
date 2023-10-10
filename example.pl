main:-
writef('\n** Horarios Escolares **\n\n'),
consult('horario-kb'), % Consulta
base-conocimientos
mats, % Lista materias
docs, % Lista docentes
generar, % Genera combinaciones posibles
hora(8). % Que opciones hay a las 8am?
mats:-
findall(M,mat(M),L),
length(L,X),
writef('%w Materias: %w\n',[X,L]).
docs:-
findall(P,profr(P),L),
length(L,X),
writef('%w Docentes: %w\n\n',[X,L]).
generar:-
pm(P,M),
ph(P,H),
writef('Docente: %w,\tMat: %w,\tHr:
%w\n',[P,M,H]),
fail.
generar.
hora(H):-
writef('\nHora: %w\n',[H]),
ph(P,H),
pm(P,M),
writef('Mat: %w,\tDocente: %w\n',[M,P]),
fail.
hora(_).
:- main.