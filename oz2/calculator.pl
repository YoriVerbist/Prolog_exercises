eval(number(X), X).

eval(plus(X, Y), S) :-
    eval(X, X1),
    eval(Y, Y1),
    S is X1 + Y1.

eval(min(X, Y), S) :-
    eval(X, X1),
    eval(Y, Y1),
    S is X1 - Y1.

eval(neg(X), S) :-
    eval(X, X1),
    S is -X1.

eval(=(X, Y), tru) :-
    eval(X, X1),
    eval(Y, Y1),
    X1 =:= Y1.

eval(=(X, Y), fal) :-
    eval(X, X1),
    eval(Y, Y1),
    X1 =\= Y1.


eval(tru, tru).
eval(fal, fal).

eval(and(X, Y), tru) :-
    eval(X, tru),
    eval(Y, tru).
eval(and(X, Y), fal) :-
    eval(X, fal);
    eval(Y, fal).

eval(or(X, Y), tru) :-
    eval(X, tru);
    eval(Y, tru).
eval(or(X, Y), fal) :-
    eval(X, fal),
    eval(Y, fal).

eval(not(X), tru) :-
    eval(X, fal).
eval(not(X), fal) :-
    eval(X, tru).
