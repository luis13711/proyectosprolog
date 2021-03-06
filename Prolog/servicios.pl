/*
Supongamos que, en una biblioteca, si una persona tiene prestado un libro, s�lo se le
permite consultar la base de datos y leer libros dentro del recinto. En caso contrario,
tambi�n se le permite el pr�stamo a domicilio, as� como pr�stamos de otras librer�as.
Las consultas a la BD son servicios b�sicos:
*/
servicio_basico(consulta_BD).
servicio_basico(consulta_interna).

% Las consultas externas son servicios adicionales:
servicio_adicional(prestamo_interno).
servicio_adicional(prestamo_externo).

% Los servicios completos son los b�sicos y los adicionales.
servicio_completo(X) :- servicio_basico(X).
servicio_completo(X) :- servicio_adicional(X).

/*
Ahora, si el cliente tiene un libro prestado, se le ofrecen s�lo los servicios b�sicos:
*/
servicio(Cliente,Servicio) :- prestado(Cliente,_),!,servicio_basico(Servicio).

/*
A todos los clientes que no tengan prestado un libro, se les ofrecen todos los servicios:
*/
servicio(_,Servicio) :-
servicio_completo(Servicio).

% Por ejemplo:
cliente('Juan').
cliente('Pedro').
cliente('Maria').

prestado('Juan',clave107).
prestado('Pedro',clave145).
