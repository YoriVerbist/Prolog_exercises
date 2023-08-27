%!esystant


% Example knowledge base
house(5,4). % (width, height)
wall(v,2,3,4). % (vertical, xco, yco1, yco2)
wall(v,3,0,1).
wall(v,4,0,1).
wall(h,2,3,5). % (horizontal, yco, xco1, xco2)
color(1,1,green). % (xco, yco, color)
color(1,2,red).
color(3,1,red).
color(4,0,blue).

wall_in_part(part(Xco1, Yco1, Xco2, Yco2), Wall) :-
    Wall = wall(v, Xw, Yw1, Yw2),
    InnerX1 is Xco1 + 1,
    InnerX2 is Xco2 - 1,
    between(InnerX1, InnerX2, Xw),
    between(Yco1, Yco2, Yw1),
    between(Yco1, Yco2, Yw2),
    Yw1 < Yw2.

wall_in_part(part(Xco1, Yco1, Xco2, Yco2), Wall) :-
    Wall = wall(h, Yw, Xw1, Xw2),
    InnerY1 is Yco1 + 1,
    InnerY2 is Yco2 - 1,
    between(InnerY1, InnerY2, Yw),
    between(Xco1, Xco2, Xw1),
    between(Xco1, Xco2, Xw2),
    Xw1 < Xw2.
