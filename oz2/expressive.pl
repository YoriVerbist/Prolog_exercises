eval(int(X), _, X).

eval(var(X), L, Val) :-
    look_up(L, X, Val).

eval(plus(X, Y), L, Val) :-
    eval(X, L, Vx),
    eval(Y, L, Vy),
    Val is Vx + Vy.

eval(times(X, Y), L, Val) :-
    eval(X, L, Vx),
    eval(Y, L, Vy),
    Val is Vx * Vy.

eval(pow(X, Y), L, Val) :-
    eval(X, L, Vx),
    eval(Y, L, Vy),
    Val is Vx ** Vy.

eval(min(X), L, Val) :-
    eval(X, L, Xv),
    Val is -Xv.

look_up([pair(Key, Val)|_], Key, Val).
look_up([_|Xs], Key, Val) :-
    look_up(Xs, Key, Val).
