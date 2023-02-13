move(0, _, _, _) :- !.  % base case if N equals 0 is no more executions so cut the execution with !
move(N, Start, Aux, End) :-  % Starts the execution 
   N1 is N - 1, 
   move(N1, Start, End, Aux), % call again the predicate but changing end and aux
   write('Move disk '), write(N), write(' from '), write(Start), write(' to '), write(End),write('.\n'), % Print the change of the state
   move(N1, Aux, Start, End). % Call the predicate exchanging the auxiliar and start

% Calling the predicate where N is the number of rings in the first pile 
tower_of_hanoi(N) :-
   move(N, left, center, right).
