% algebra.pro: Procesamiento Simbólico (SWI-Prolog)

sum(X,Y,R) :-
	number(X),
	number(Y),
	R is X+Y.
sum(X,X,R) :-
    atom(X),
    concat('2',X,R).
sum(X,Y,R) :-
    concat(X,'+',Z),
    concat(Z,Y,R).

res(X,Y,R) :-
	number(X),
	number(Y),
	R is X-Y.
res(X,X,R) :-
    atom(X),
    concat('2',X,R).
res(X,Y,R) :-
    concat(X,'-',Z),
    concat(Z,Y,R).

mul(X,Y,R) :-
	number(X),
	number(Y),
	R is X*Y.
mul(X,X,R) :-
    atom(X),
    concat('2',X,R).
mul(X,Y,R) :-
    concat(X,'*',Z),
    concat(Z,Y,R).

div(X,Y,R) :-
	number(X),
	number(Y),
	R is X/Y.
div(X,X,R) :-
    atom(X),
    concat('2',X,R).
div(X,Y,R) :-
    concat(X,'/',Z),
    concat(Z,Y,R).

%?- sum(x,1,R).
%R = 'x+1'


%?- sum(2,3,R).
%R = 5;
%R = '2+3'


%?- sum(1,0.5,R).
%R = 1.5;
%R = '1+0.5'


%?- sum(x,x,R).
%R = '2x';
%R = 'x+x'


?- sum(x,y,R).
R = 'x+y'


