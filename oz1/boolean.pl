evalAnd(tru, tru, tru).
evalAnd(tru, fal, fal).
evalAnd(fal, tru, fal).
evalAnd(fal, fal, fal).

evalOr(tru, tru, tru).
evalOr(tru, fal, tru).
evalOr(fal, tru, tru).
evalOr(fal, fal, fal).

evalNot(tru, fal).
evalNot(fal, tru).

eval(tru, tru).
eval(fal, fal).
eval(and(X, Y), Z) :-
    eval(X, A),
    eval(Y, B),
    evalAnd(A, B, Z).

eval(or(X, Y), Z) :-
    eval(X, A),
    eval(Y, B),
    evalOr(A, B, Z).

eval(not(X), Z) :-
    eval(X, A),
    evalNot(A, Z).
