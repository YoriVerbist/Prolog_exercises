eval(number(X), Y) :-
    Y is X.

eval(plus(X, Y), Z) :-
    eval(X, A),
    eval(Y, B),
    Z is A + B.

eval(min(X, Y), Z) :-
    eval(X, A),
    eval(Y, B),
    Z is A - B.

eval(neg(X), Y) :-
    eval(X, A),
    Y is -A.

eval(=(X,Y), Z) :-
    eval(X,A),
    eval(Y,B),
    evalEqual(A,B,Z).

eval(and(X,Y), Z) :-
    eval(X,A),
    eval(Y,B),
    evalAnd(A, B, Z).

eval(or(X, Y), Z) :-
    eval(X, A),
    eval(Y, B),
    evalOr(A, B, Z).

eval(not(X), Z) :-
    eval(X, A),
    evalNot(A, Z).

eval(tru,tru).
eval(fal,fal).

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

evalEqual(X,Y,Z) :-
    X=:=Y,
    Z = tru;
    X=\=Y,
    Z = fal.
