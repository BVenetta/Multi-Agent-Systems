subtract(X,0,X).
subtract(0, X, -X).

subtract(succ(X), succ(Y), Z) :- subtract(X,Y,Z).