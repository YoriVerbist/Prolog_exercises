%%%%%%%%%%%%%%%%%%
%% ASSIGNMENT 1 %%
%%%%%%%%%%%%%%%%%%

distinct([]).
distinct([H|T]) :-
    \+ member(H, T),
    distinct(T).

identical([]).
identical([H|T]) :-
    \+ (member(H2,T),
        H2 \= H).

ascending([]).
ascending(L) :-
    min_list(L, X),
    max_list(L, Y),
    numlist(X, Y, L).

valid_row(crow(Blocks)) :-
    length(Blocks, Len),
    Len >= 3,
    findall(Color, member(block(_, Color), Blocks), Colors),
    distinct(Colors),
    findall(Number, member(block(Number, _), Blocks), Numbers),
    identical(Numbers).

valid_row(nrow(Blocks)) :-
    length(Blocks, Len),
    Len >= 3,
    findall(Color, member(block(_, Color), Blocks), Colors),
    identical(Colors),
    findall(Number, member(block(Number, _), Blocks), Numbers),
    ascending(Numbers).

valid_table(Table) :-
    \+ (member(Row, Table),
    \+ valid_row(Row)).

%%%%%%%%%%%%%%%%%%
%% ASSIGNMENT 2 %%
%%%%%%%%%%%%%%%%%%

play_game(_P1,_P2,_Table,_Bag) :- fail.
