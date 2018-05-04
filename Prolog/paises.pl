% Autor:  Luis Correa
% Fecha: 03/03/2013

pais(brasil).
area(brasil,8511965).
capital(brasilia).
limita(brasil,paraguay).
limita(brasil,bolivia).
limita(brasil,uruguay).
limita(brasil,peru).

pais(venezuela).
area(venezuela,912050).
capital(caracas).
limita(venezuela,colombia).
limita(venezuela,guyana).
limita(venezuela,brasil).

pais(colombia).
area(colombia,1.138910).
capital(bogota).
limita(colombia,ecuador).
limita(colombia,peru).
limita(colombia,brasil).

pais(guyana).
area(guyana,215083).
capital(georgetown).

pais(argentina).
area(argentina,3761274).
capital(buenosaires).
limita(argentina,uruguay).
limita(argentina,brasil).
limita(argentina,paraguay).
limita(argentina,bolivia).
limita(argentina,chile).


areaM(X,Z):- area(X,Y),Y<Z.

limitrofes(X,Y):-limita(X,Y);limita(Y,X).

translimitrofes(X,Y):-
limitrofes(X,Z),
limitrofes(Z,Y),
dif(X,Y),not(limitrofes(X,Y)).
