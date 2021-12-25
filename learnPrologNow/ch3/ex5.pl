swap(leaf(X), leaf(X)).
swap(tree(X, Y), tree(A, B)) :-
    swap(X, B),
    swap(Y, A).
