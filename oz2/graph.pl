node(a).
node(b).
node(c).
node(d).
node(e).

edge(a,b).
edge(b,c).
edge(b,d).
edge(c,d).

neighbor(X, Y) :-
    edge(X, Y);
    edge(Y, X).

path(X, Y) :- neighbor(X, Y).
path(X, Y) :-
    neighbor(X, A),
    path(A, Y).

path2(X, Y) :-
    pathHelper(X, Y, [X]).

pathHelper(X, Y, L) :-
    neighbor(X, Y),
    \+ member(Y, L).
pathHelper(X, Y, L) :-
    neighbor(X, A),
    \+ member(A, L),
    pathHelper(A, Y, [A|L]).
