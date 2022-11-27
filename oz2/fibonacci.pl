fib(1, 0).
fib(2, 1).
fib(N, X) :-
    N1 is N-1,
    N2 is N-2,
    fib(N1, A),
    fib(N2, B),
    X is A + B.



fib2(1, [0]).
fib2(2, [1,0]).
fib2(N, [H|T]) :-
    T = [A|T2],
    N1 is N - 1,
    fib2(N1, [A|T2]),
    T2 = [B|T3],
    N2 is N - 2,
    fib2(N2, [B|T3]),
    H is A + B.
