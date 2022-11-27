byCar(auckland,hamilton).
byCar(hamilton,raglan).
byCar(valmont,saarbruecken).
byCar(valmont,metz).

byTrain(metz,frankfurt).
byTrain(saarbruecken,frankfurt).
byTrain(metz,paris).
byTrain(saarbruecken,paris).

byPlane(frankfurt,bangkok).
byPlane(frankfurt,singapore).
byPlane(paris,losAngeles).
byPlane(bangkok,auckland).
byPlane(singapore,auckland).
byPlane(losAngeles,auckland).


travel(X, Y) :-
    byCar(X, Y);
    byTrain(X, Y);
    byPlane(X, Y).
travel(X, Y) :-
    (
        byCar(X, Z);
        byTrain(X, Z);
        byPlane(X, Z)
    ),
    travel(Z, Y).

travel(X, Y, go(X, Y)) :-
    byCar(X, Y);
    byTrain(X, Y);
    byPlane(X, Y).
travel(X, Y, go(X, Z, L)) :-
    (
        byCar(X, Z);
        byTrain(X, Z);
        byPlane(X, Z)
    ),
    travel(Z, Y, L).

travel_specific(X, Y, go(byCar(X, Y))) :- byCar(X, Y).
travel_specific(X, Y, go(byTrain(X, Y))) :- byTrain(X, Y).
travel_specific(X, Y, go(byPlane(X, Y))) :- byPlane(X, Y).
travel_specific(X, Y, go(byCar(X, Z, L))) :-
    byCar(X, Z),
    travel_specific(Z, Y, L).
travel_specific(X, Y, go(byTrain(X, Z, L))) :-
    byTrain(X, Z),
    travel_specific(Z, Y, L).
travel_specific(X, Y, go(byPlane(X, Z, L))) :-
    byPlane(X, Z),
    travel_specific(Z, Y, L).
