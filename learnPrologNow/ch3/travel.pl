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
    byPlane(X, Y);
    byTrain(X, Y).
travel(X, Y) :-
    (byCar(X, Z);
    byPlane(X, Z);
    byTrain(X, Z)),
    travel(Z, Y).

travel(X, Y, go(X, Y)) :-
    byCar(X, Y);
    byPlane(X, Y);
    byTrain(X, Y).
travel(X, Y, go(X, Z, L)) :-
    (byCar(X, Z);
    byPlane(X, Z);
    byTrain(X, Z)),
    travel(Z, Y, L).
