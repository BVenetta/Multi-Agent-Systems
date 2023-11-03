movie("The Imitation Game",[actor("Knightely","Keira"),
actor("Cumberbatch","Benedict")],[genre("drama")],114,13,8).
movie("The Godfather",[actor("Brando","Marlon")],[genre("drama"),genre("crime")],170,18,9).
movie("A Bad Movie",[actor("Eastwood","Clint")],[genre("action")],100,16,2).
movie("Z Good Movie",[actor("Thurman","Uma")],[genre("thriller")],90,16,10).

db([
    movie("The Imitation Game",[actor("Knightely","Keira"),actor("Cumberbatch","Benedict")],
    [genre("drama")],114,13,8),
    movie("The Godfather",[actor("Brando","Marlon")],[genre("drama"),genre("crime")],170,18,9),
    movie("A Bad Movie",[actor("Eastwood","Clint")],[genre("action")],100,16,2),
    movie("Z Good Movie",[actor("Thurman","Uma")],[genre("thriller")],90,16,10)
    ]).

listMovies(L) :- findall(Title, movie(Title,_,_,_,_,_), L).

listMoviesByName(L1) :- listMovies(L2), sort(L2, L1).

listMoviesByGenre(G, L) :- findall(Title, (movie(Title,_,Genre,_,_,_), member(G,Genre)), L).

listMoviesByRank(L, S) :- findall(Rating-Title,movie(Title,_,_,_,_,Rating), R), sort(1, @>=, R, Sort), pairs_values(Sort, S).

numberMovies(L, G, Count) :- listMoviesByGenre(G,R), length(R, Count).