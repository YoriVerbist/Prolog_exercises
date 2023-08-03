peano_plus(zero, X, X).
peano_plus(s(X), Y, s(Z)) :- peano_plus(X, Y, Z).

min(X, zero, X).
min(X, s(Y), Z) :- min(X, Y, s(Z)).

greater_than(s(_), zero).
greater_than(s(X), s(Y)) :- greater_than(X, Y).

maximum(X, zero, X).
maximum(zero, X, X).
maximum(s(X), s(Y), s(Z)) :- maximum(X, Y, Z).
