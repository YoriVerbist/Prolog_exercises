doubled(L) :-
    append(X, X, L).

palindrome(L) :-
    rev(L, L).

rev(L, R) :- revAcc(L, [], R).

revAcc([], A, A).
revAcc([H|T], Acc, R) :-
    revAcc(T, [H|Acc], R).

toptail(L1, L2) :-
    append([_|L2], [_], L1).

last(L, X) :-
    rev(L, [X|_]).

last2([X], X).
last2([_|T], X) :-
    last2(T, X).

swapfl([], []).
swapfl([H1|T1], [H2|T2]) :-
    rev(T1, [Last1|Rest1]),
    rev(T2, [Last2|Rest2]),
    H2 = Last1,
    H1 = Last2,
    Rest1 = Rest2.

setAcc([], L, L).
setAcc([H|T], Acc, L) :-
    \+ member(H, Acc),
    setAcc(T, [H|Acc], L).
setAcc([H|T], Acc, L) :-
    member(H, Acc),
    setAcc(T, Acc, L).

set(L1, L2) :-
    rev(Temp, L2),
    setAcc(L1, [], Temp).

flattenAcc([], L, L).
flattenAcc(L, Acc, [L|Acc]) :-
    L \= [],
    L \= [_|_].
flattenAcc([H|T], Acc, Flat) :-
    flattenAcc(T, Acc, NewAcc),
    flattenAcc(H, NewAcc, Flat).

flatten(L, Flat) :-
    flattenAcc(L, [], Flat).
