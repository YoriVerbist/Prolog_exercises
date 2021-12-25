combine1([], [], []).
combine1([X|Tx], [Y|Ty], [X,Y|Zy]) :-
    combine1(Tx, Ty, Zy).

combine2([], [], []).
combine2([X|Tx], [Y|Ty], [[X,Y]|Zy]) :-
    combine2(Tx, Ty, Zy).

combine3([], [], []).
combine3([X|Tx], [Y|Ty], [j(X,Y)|Zy]) :-
    combine3(Tx, Ty, Zy).
