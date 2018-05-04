sumatoria(T,N,Z):- N is 0,Z is 2*T-1;
N>0,Q is N-1,X is 2*T,I is 2*T-1, sumatoria(T,Q,J),potencia(X,N,W), Z is J+I*W.

potencia(X,Y,Z):- Y is 0 ,Z is 1;
Y>0,N is Y-1,potencia(X,N,Q), Z is X*Q.
