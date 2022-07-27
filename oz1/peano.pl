peano_plus(zero, X, X).
peano_plus(s(X), Y, s(Z)) :- peano_plus(X, Y, Z).

peano_min(X, zero, X).
peano_min(s(X), s(Y), Z) :-
    peano_min(X, Y, Z).

greater_than(s(_), zero).
greater_than(s(X), s(Y)) :-
    greater_than(X, Y).

maximum(X, zero, X).
maximum(zero, Y, Y).
maximum(s(X), s(Y), s(Z)) :-
    maximum(X, Y, Z).
