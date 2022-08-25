word(astante, a,s,t,a,n,t,e).
word(astoria, a,s,t,o,r,i,a).
word(baratto, b,a,r,a,t,t,o).
word(cobalto, c,o,b,a,l,t,o).
word(pistola, p,i,s,t,o,l,a).
word(statale, s,t,a,t,a,l,e).

crossword(V1, V2, V3, H1, H2, H3) :-
    word(V1, _,Y1,_,Y2,_,Y3,_),
    word(V2, _,Y4,_,Y5,_,Y6,_),
    word(V3, _,Y7,_,Y8,_,Y9,_),
    word(H1, _,Y1,_,Y4,_,Y7,_),
    word(H2, _,Y2,_,Y5,_,Y8,_),
    word(H3, _,Y3,_,Y6,_,Y9,_).
