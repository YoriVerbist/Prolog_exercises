eval(tru, tru).
eval(fal, fal).

eval(and(X, Y), tru) :-
    eval(X, tru),
    eval(Y, tru).
eval(and(X, Y), fal) :-
    (
        eval(X, fal)
    ;
        eval(Y, fal)
    ).

eval(or(X, Y), tru) :-
    (
        eval(X, tru)
    ;
        eval(Y, tru)
    ).
eval(or(X, Y), fal) :-
    eval(X, fal),
    eval(Y, fal).

eval(not(X), tru) :-
    eval(X, fal).
eval(not(X), fal) :-
    eval(X, tru).

and(tru, tru, tru).
and(tru, fal, fal).
and(fal, tru, fal).
and(fal, fal, fal).

or(tru, tru, tru).
or(tru, fal, tru).
or(fal, tru, tru).
or(fal, fal, fal).

not(tru, fal).
not(fal, tru).
