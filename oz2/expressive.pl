eval(int(X), [], X).
eval(var(X), [], X).

eval(plus(X,Y), [], Z) :-
    eval(X,A),
    eval(Y,B),
    Z is A + B.
