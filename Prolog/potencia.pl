potencia(X,Y,Z):- Y is 0 ,Z is 1;
Y>0,N is Y-1,potencia(X,N,Q), Z is X*Q.

main:-
	write('escriba aqui un numero\nluego punto\nluego su exponente\nseguido de un punto\npara sacar potencia\n'),
	read(X),read(Y),potencia(X,Y,S),
	write('resultado es '+S).
