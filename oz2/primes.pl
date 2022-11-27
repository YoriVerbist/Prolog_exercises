all_primes(X, Y) :-
    X1 is X - 1,
    Y = [H|_],
    H is X1.
