fib(1,0).
fib(2,1).
fib(X,Y) :-
    X > 2,
    X1 is X - 1,
    fib(X1, A),
    X2 is X - 2,
    fib(X2, B),
    Y is A + B.

fibList(1, [0]).
fibList(2, [1,0]).
fibList(N, [X2, X1, X0|L]) :-
    succ(NP, N),
    fibList(NP, [X1,X0|L]),
    plus(X0, X1, X2).
