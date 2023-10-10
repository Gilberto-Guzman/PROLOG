% list-3.pl: Invertir Lista

p([]).
p([x]).
p([x,x]).
p([x,x,x]).
p([x,x,x,x]).
p([]).

main:-
    findall(X,p(X),L1),
    reverse(L1,L2),
    write(L2),nl.