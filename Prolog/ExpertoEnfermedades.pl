% pagina 135
% sistema experto para el reconocimiento de las enfermedades
% de transmision sexual.
%

% database

xpositive(symbol,symbol).
xnegative(symbol,symbol).

% predicates

positive(symbol,symbol).
negative(symbol,symbol).


% clauses

run:-
	la_enfermedad(X),!,
	write('\nSu diagnostico puede ser:',X),
	nl,nl,clear_facts.
