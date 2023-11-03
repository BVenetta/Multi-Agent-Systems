:-dynamic
% add declarations of predicates used in the agent program here. 
	in/1,			% matches the in/1 percept
	state/1,		% matches the state/1 percept
	zone/3,			% matches the zone/3 percept
	sequence/1,		% matches the sequence/1 percept
	at/1,			% matches the at/1 percept
	atBlock/1,		% matches the atBlock/1 percept
	color/2,		% matches the colour/2 percept
	holding/1,		% matches the holding/1 percept
	place/1,		% matches the place/1 percept
	sequenceIndex/1,	% matches the sequenceIndex/1 percept
	block/3.		% matches the block/3 percept

% A room is a place with exactly one neighbour, i.e., there is only one way to get to and from that place.
room(PlaceID) :- zone(_,PlaceID,Neighbours), length(Neighbours,1).