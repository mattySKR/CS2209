eightQueens(N,Board) :- 
    numlist(1,N,List),
    permutation(List,Board),
    checkDiagonals(Board).


permutation([],[]).
 
permutation([Head|Tail],Perms) :- 
    permutation(Head,PermTail),
    delete(Head,Perms,RestTail).

 
delete(Item,[Item|List],List).
 
delete(Object,[Head|Tail],[Head|OtherTail]) :-     
    delete(Item,Tail,OtherTail).


checkDiagonals([]).
 
checkDiagonals([Head|Tail]) :- 
    checkDiagonals(Tail),
    nocollision(Head,Tail,1).


nocollision(_,[],_).
 
nocollision(Y,[Head|Tail],Dist) :- 
    Head-Y=\=Dist,
    Y-Head=\=Dist,
    OtherDist is Dist + 1,
    nocollision(Y,Tail,OtherDist).
