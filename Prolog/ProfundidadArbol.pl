retorna(N,T,R):-N is 0,R is 2*T-1;
N>0,W is 2*T,potencia(W,N,Z),R is (2*T-1)*Z.

retor(N,T,R):-N is 0,R is 2*T-1;
N>0,W is 2*T,J is N-1,potencia(W,N,Z),retor(J,T,Q),R is (2*T-1)*Z+Q.


potencia(X,Y,Z):- Y is 0 ,Z is 1;
Y>0,W is Y-1,potencia(X,W,Q), Z is X*Q.

