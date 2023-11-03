:- dynamic tower/1.
on(b, a).
on(c, b).
above(X, Y) :- on(X, Y).
above(X, Y) :- on(X, Z), above(Z, Y).

atLeastThree(X) :- on(X,Y), on(Y,Z), on(Z,A).

exactlyThree(X) :- on(X,Y), on(Y,Z), on(Z,A), not(on(A,_)).