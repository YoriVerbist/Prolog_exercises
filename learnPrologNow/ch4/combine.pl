combine1([], [], []).
combine1([X|T1], [Y|T2], [X, Y|T3]) :-
    combine1(T1, T2, T3).

combine2([],[],[]).
combine2([X|T1], [Y|T2], [[X, Y]|T3]) :-
    combine2(T1, T2, T3).

combine3([],[],[]).
combine3([X|T1], [Y|T2], [j(X, Y)|T3]) :-
    combine2(T1, T2, T3).
