balanced(nil).
balanced(Tree) :-
    Tree = t(Left, _, Right),
    depth(Left, DepthL),
    depth(Right, DepthR),
    maxOneDiff(DepthL, DepthR),
    balanced(Left),
    balanced(Right).

depth(nil, 0).
depth(Tree, D) :-
    Tree = t(L, _, R),
    depth(L, LD),
    depth(R, RD),
    Depth is max(LD, RD),
    D is Depth + 1.

maxOneDiff(A,A).
maxOneDiff(A,B) :- A is B + 1.
maxOneDiff(A,B) :- B is A + 1.

add_to(nil, X, t(nil, X, nil)).
add_to(Tree1, X, Tree2) :-
    Tree1 = t(L1, Y, R1),
    Tree2 = t(L2, Y, R2),
    depth(L1, LD),
    depth(R1, RD),
    add_to(L1, R1, X, LD, RD, L2, R2).

add_to(L,R,E,LD,RD,L,NR) :-
    LD > RD,
    add_to(R,E,NR).
add_to(L,R,E,LD,RD,NL,R) :-
    LD =< RD,
    add_to(L,E,NL).
