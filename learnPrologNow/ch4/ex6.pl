twice([], []).
twice([X|Tx], [X, X|Ty]) :-
    twice(Tx, Ty).
