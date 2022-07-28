node(a).
node(b).
node(c).
node(d).
node(e).

link(a,b).
link(b,d).
link(b,c).
link(c,d).

neighbor(X,Y) :-
    link(X,Y);
    link(Y,X).

path(X,Y) :-
    neighbor(X,Y).
path(X,Y) :-
    neighbor(X,Z),
    neighbor(Z,Y).

path2(X,Y) :-
    pathHelper(X,Y,[X]).

pathHelper(X,Y,L) :-
    neighbor(X,Y),
    \+ member(Y,L).
pathHelper(X,Y,L) :-
    neighbor(X,Z),
    \+ member(Z, L),
    pathHelper(Z,Y, [Z|L]).
