:- dynamic(last/2).

last(List, LastItem):-
	reverse(List, [Z|T]),
	write(Z).
