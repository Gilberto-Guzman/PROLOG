% Try: ?- p([H|_]).
% Try: ?- p([_|T]).
p([1,2,3]).
p([[hoy,martes],[programe,en,prolog],[fue,divertido]]).

% Try: ?- lmin([3,2,1],X).

min(9,8,7).
lmin([X],X).
lmin([X,Y],Z) :- min(X,Y,Z).
lmin([X,Y|T],Z3) :- min(X,Y,Z1),lmin(T,Z2),min(Z1,Z2,Z3).

% Try: ?- member(1,[3,2,1]).
% Try: ?- member([4,3],[5,[4,3],2,1]).
member(H,[H|_]).
member(H,[_|T]) :- member(H,T).