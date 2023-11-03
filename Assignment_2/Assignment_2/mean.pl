sum([], 0).
sum([Head|Tail], Sum) :- sum(Tail,TailSum), Sum is Head + TailSum.

mean(L,M) :- sum(L, Sum), length(L,Len), M is Sum//Len.
