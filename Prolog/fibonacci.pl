fibonacci(0,1).
fibonacci(1,1).
fibonacci(N,F) :-   N > 1, N1 is N-1, N2 is N-2,
sleep(100),
fibonacci(N1,F1), fibonacci(N2,F2), F is F1+F2.

fibo(N,S):- N is 0,S is 1;
N is 1,S is 1;
N>1,Y is N-1,J is N-2,fibo(Y,Q),fibo(J,Z),S is Q+Z.
