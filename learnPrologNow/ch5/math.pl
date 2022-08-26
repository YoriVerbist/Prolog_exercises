increment(X, Y) :- Y is X + 1.

sum(X, Y, Z) :-
    Z is X + Y.

addone([], []).
addone([H|T], [H2|T2]) :-
    H2 is H + 1,
    addone(T, T2).

accMin([], Acc, Acc).
accMin([H|T], Acc, Min) :-
    H >= Acc,
    accMin(T, Acc, Min).
accMin([H|T], Acc, Min) :-
    H < Acc,
    accMin(T, H, Min).

scalarMult(_, [], []).
scalarMult(X, [H1|T1], [H2|T2]) :-
    H2 is H1 * X,
    scalarMult(X, T1, T2).

dot([], [], 0).
dot([H1|T1], [H2|T2], X) :-
    dot(T1, T2, Y),
    X is H1 * H2 + Y.
