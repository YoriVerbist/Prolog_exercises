eval(int(X),_,X).
eval(var(X), L, Value) :-
    lookUp(L, X, Value).
eval(plus(X,Y), L, Value) :-
    eval(X, L, A),
    eval(Y, L, B),
    Value is A + B.
eval(times(X,Y), L, Value) :-
    eval(X, L, A),
    eval(Y, L, B),
    Value is A * B.
eval(pow(X,Y), L, Value) :-
    eval(X, L, A),
    eval(Y, L, B),
    Value is A ** B.
eval(min(X), L, Value) :-
    eval(X, L, Y),
    Value is -Y.


lookUp([pair(X,Y)|_], X, Y).
lookUp([_|Xs], X, Y) :-
    lookUp(Xs, X, Y).
