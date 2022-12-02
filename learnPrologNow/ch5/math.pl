increment(X, Y) :-
    Y is X + 1.

sum(X, Y, Z) :-
    Z is X + Y.

addone([], []).
addone([H1|T1], [H2|T2]) :-
    H2 is H1 + 1,
    addone(T1, T2).

accMin([H|T], Acc, Min) :-
    H < Acc,
    accMin(T, H, Min).
accMin([H|T], Acc, Min) :-
    H >= Acc,
    accMin(T, Acc, Min).
accMin([], Min, Min).

minList(L, Min) :-
    L = [H|_],
    accMin(L, H, Min).

scalarMult(_, [], []).
scalarMult(Num, [H1|T1], [H2|T2]) :-
    H2 is H1 * Num,
    scalarMult(Num, T1, T2).

accDot([], [], A, A).
accDot([H1|T1], [H2|T2], Acc, Result) :-
    Temp is Acc + H1 * H2,
    accDot(T1, T2, Temp, Result).

dot(L1, L2, Result) :-
    accDot(L1, L2, 0, Result).
