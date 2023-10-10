% list-2.pl: Cuenta y reporta monedas x renglón
p([]).
p([x]).
p([x,x]).
p([x,x,x]).
p([x,x,x,x]).
p([]).

main:-
    p(L),
        length(L,N),
        write(N),nl,
    fail.
main.