eval(int(X), _, X).
eval(var(X), List, Val) :-
    get_val(List, X, Val).

eval(plus(X, Y), List, S) :-
    eval(X, List, X1),
    eval(Y, List, Y1),
    S is X1 + Y1.

eval(times(X, Y), List, S) :-
    eval(X, List, X1),
    eval(Y, List, Y1),
    S is X1 * Y1.

eval(pow(X, Y), List, S) :-
    eval(X, List, X1),
    eval(Y, List, Y1),
    S is X1 ** Y1.

eval(min(X), List, S) :-
    eval(X, List, X1),
    S is -X1.

get_val([pair(Var, Num)|_], Var, Num).
get_val([_|Xs], Var, Num) :-
    get_val(Xs, Var, Num).
