fib(1, 0).
fib(2, 1).
fib(X, Y) :-
    X > 2,
    N1 is X - 1,
    N2 is X - 2,
    fib(N1, X1),
    fib(N2, X2),
    Y is X1 + X2.
