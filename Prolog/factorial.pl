factorial(N,F) :- N is 0, F is 1;
N > 0, M is N - 1, factorial(M,G), F is N*G.

fact(N,S):- N is 0, S is 1;
N>0,Q is N-1,fact(Q,W),S is N*W.

main:-
	write('escriba aqui un numero luego punto\npara sacar factorial\n'),
	read(X),fact(X,S),
	write('factorial es '+S).

