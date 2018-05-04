/*
C.4   Setof

setof/3 can be usefull if you want to find all the solutions of a predicate. For example if we have this database :
*/
knows(jim,fred).
knows(alf,bert).
/*
If we want to find all the solutions of knows(X,Y). we can enter :
*/
% setof([X,Y],knows(X,Y),Z).
% Z = [[jim,fred],[alf,bert]]
