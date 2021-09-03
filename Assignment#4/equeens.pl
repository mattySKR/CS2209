eightQueens(N,Board) :-
    numlist(1,N,List),
    permutation(List,Board),
    checkDiagonals(Board).

checkDiagonals([]).
 
checkDiagonals([Heads|Tails]) :- 
    checkDiagonals(Tails),
    nocollision(Heads,Tails,1).


nocollision(_,[],_).
 
nocollision(Y,[Heads|Tails],Dist) :- 
    Heads-Y=\=Dist,
    Y-Heads=\=Dist,
    NewDist is Dist + 1,
    nocollision(Y,Tails,NewDist).
