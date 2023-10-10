% list-4.pl: Modificando Hechos

:- dynamic p/1.

p([]).
p([x]).
p([x,x]).
p([x,x,x]).
p([x,x,x,x]).

main:-
        retract(p(_)),
        assertz(p([x,x,x,x,x])),
        !, % Cut
        p(L),
        length(L,N),
        write(N),nl,
    fail.
main.