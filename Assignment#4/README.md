# Description 

--- Part 0: ---

Wrote a Prolog function last(List, LastItem) that gives the last item in the list. 
Theb used the function on the following lists: [], [a], [a,b,c]. Comments provided
in the program.

--- Part 1: ---

Given the Prolog function for the 8-queens program:

  eightQueens(Board) :- permutation([1,2,3,4,5,6,7,8], Board), checkDiagonals(Board).
  
2a) Completed the program with a function to perform the checkDiagonals function. 

2b) Provided an explanation of the created method to check the diagonals on the board and
    how the function implements this method using the program comments.

2c) Added another parameter, N, to our function and generalized the previous answer to 
    make an N-Queens function. Must notice: SWI-Prolog has a fucntion numlist that
    generates a list [1, ..., N]. We then run the new function with N having the
    values 1 to 8.
    
