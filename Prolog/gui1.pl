:- use_module(library(pce)).
ejemplo:-

% Crea el objeto dialogo en la variable D

new(D, dialog('Nombre del Dialogo')),
     new(@boton, button('Cerrar Dialogo',
and(
message(D, destroy),
message(D, free),
message(@boton, free)))),
/*
 * Inserta el botón en el diálogo
*/
send(D, append(@boton)),
/*
 * Le envia el mensaje open al dialogo para que cree y muestre la ventana.
*/
send(D, open).
