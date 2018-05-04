pdc(p,gripe).
pdc(j,hepa).
pdc(c,intox).
pdc(p,hepa).
pdc(m,hepa).

stm(fieb,gripe).
stm(diar,intox).
stm(can,hepa).
stm(can,gripe).

spm(asp,fieb).
spm(loc,diar).
spm(for,can).

% Un f�rmaco alivia una enfermedad si la enfermedad tiene un s�ntoma que sea suprimido por el f�rmaco. 

alv(F_A,E):-
	stm(_S,E),
	spm(F_A,_S).

% Una persona deber�a tomar un f�rmaco si padece una enfermedad que sea aliviada por el f�rmaco.
tm(P,F):-
	pdc(P,E),
	alv(F,E).





