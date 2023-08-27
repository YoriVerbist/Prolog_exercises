
max_one_difference(D, D).
max_one_difference(D1, D2) :-
    D1 is D2 + 1.
max_one_difference(D1, D2) :-
    D2 is D1 + 1.

depth(nil, 0).
depth(t(L, _, R), Depth) :-
    depth(L, LD),
    depth(R, RD),
    D is max(LD, RD),
    Depth is D + 1.

balanced(nil).
balanced(t(L, _, R)) :-
    depth(L, Dl),
    depth(R, Dr),
    max_one_difference(Dl, Dr),
    balanced(L),
    balanced(R).

add_to(nil, Val, t(nil, Val, nil)).
add_to(t(L, X, R), Val, t(L1, X, R1)) :-
    depth(L, Ld),
    depth(R, Rd),
    add_to(L, R, Val, Ld, Rd, L1, R1).
add_to(_, R, Val, Ld, Rd, _, R1) :-
    Ld > Rd,
    add_to(R, Val, R1).
add_to(L, _, Val, Ld, Rd, L1, _) :-
    Ld =< Rd,
    add_to(L, Val, L1).


add_to2(_, _, _) :- fail.
