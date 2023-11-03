bike(wn_entrance,mb_entrance,1).
bike(botanic_garden,wn_entrance,4).
walk(wn_entrance,wn_k137,2).
walk(mb_entrance,mb_6th_floor,5).

route_by_bike(F, T) :- bike(F, T, M) ; bike(F, X, M), route_by_bike(X, T).

route(F, T) :- bike(F, T, Z) ; walk(F, T, Z) ; (bike(F, X, Z) ; walk(F, X, Z)), route(X, T).

route(F, T, M) :- bike(F, T, M) ; walk(F, T, M) ; (bike(F, X, M1) ; walk(F, X, M1)), route(X, T, M2), M is M1 + M2.
