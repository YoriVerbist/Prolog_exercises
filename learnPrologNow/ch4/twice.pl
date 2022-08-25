twice([], []).
twice([X|Y], [X,X|Z]) :-
    twice(Y, Z).
