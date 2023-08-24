fib(0, 1).
fib(1, 2).
fib(N, X) :-
    A is N - 1,
    fib(A, I),
    B is N - 2,
    fib(B, J),
    X is I + J.
