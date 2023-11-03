on(a,b).
on(b,c).
on(c,d).
on(d,e).
on(e,table).
tower([X]) :- on(X,table).
tower([X,Y|T]) :- on(X,Y), tower([Y|T]).

exactlyThreeTower(X) :- tower([X|T]), length(T,3).