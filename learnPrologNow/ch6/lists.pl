doubled(L) :-
    append(X, X, L).

palindrome(L) :-
    reverse(L, L).

toptail(L1, L2) :-
    append([_|L2], [_], L1).

last(L, X) :-
    reverse(L, L2),
    L2 = [X|_].

last2([H], H).
last2([_|T], X) :-
    last2(T, X).

swapfl([H1|T1], L) :-
    reverse(L, [H1|T1]).

setAcc([], A, A).
setAcc([H|T], Acc, Out) :-
    \+member(H, Acc),
    setAcc(T, [H|Acc], Out).
setAcc([H|T], Acc, Out) :-
    member(H, Acc),
    setAcc(T, Acc, Out).

set(InList, OutList) :-
    reverse(TempList, OutList),
    setAcc(InList, [], TempList).
