gossip(p0,p1).
gossip(p0,p2).
gossip(p1,p3).
gossip(p1,p4).
gossip(p2,p5).
gossip(p4,p7).
gossip(p4,p8).
gossip(p8,p9).

gossip(X, Y).

gossipSource(X, Y) :- gossip(X, Y) ; (gossip(X, Z) , gossipSource(Z, Y)).
