PROGRAM CerrarCaja;
    USES CRT,sysutils;
	VAR x,y,SUMA: INTEGER;
		n,n1,n2,n3,n4,na,nb,nc,nd: INTEGER;
        v1,v2,v3,v4,v5,v6,v7,v8,v9,v10:BOOLEAN;
        caja1,caja2,caja3,caja4: INTEGER;
        j1,j2,j3,j4,l: STRING[10];
        OK,oki,D: BOOLEAN;
        cont: INTEGER;

PROCEDURE num_sum (VAR nu:INTEGER);         (*controla que se ingrese el tipo de valor correcto*)
          BEGIN
          READLN(l);
          CASE nu OF
             1: BEGIN
                TRY
                BEGIN
                n1:=StrToInt(l);
                D:=TRUE;
                end;
                except
                 On EConvertError DO Writeln('Los datos ingresados no son validos');
                End;
                END;
             2: BEGIN
                TRY
                BEGIN
                n2:=StrToInt(l);
                D:=TRUE;
                end;
                except
                 On EConvertError DO Writeln('Los datos ingresados no son validos');
                End;
                END;
             3: BEGIN
                TRY
                BEGIN
                n3:=StrToInt(l);
                D:=TRUE;
                end;
                except
                 On EConvertError DO Writeln('Los datos ingresados no son validos');
                End;
                END;
             4: BEGIN
                TRY
                BEGIN
                n4:=StrToInt(l);
                D:=TRUE;
                end;
                except
                 On EConvertError DO Writeln('Los datos ingresados no son validos');
                End;
                END;
             END;
             END;

PROCEDURE tirar_dado (VAR dado:INTEGER); (*Proceso que tira un dado*)
          BEGIN
	         dado:=RANDOM(6);	(*Random no da valores al azar entre 0 y 5*)
	         IF dado=0 THEN dado:=6; (*Como el cero no es un numero del dado, si sale 0 le asignamos el valor 6*)
          END;
          
PROCEDURE tiro ; (*Funcion que decide si se tira un dado o dos y realiza la suma correspondiente*)
          BEGIN
          	n:=2;
            IF (v7=TRUE) AND (v8=TRUE) AND (v9=TRUE) THEN (*Si las casillas 7 8 y 9 estan cubiertas, se da la posibilidad al jugador de tirar un solo dado*)
            BEGIN
            D:=FALSE;
            WHILE D= FALSE DO
            BEGIN
            TRY
            BEGIN
            	WRITELN('Cuantos dados desea tirar? (1,2)'); READLN(l);
                 n:=StrToInt(l);
                  D:= TRUE
                 end;
                  except
                  On EConvertError DO Writeln('Los datos ingresados no son validos');
               End;
               END;
              END;
            BEGIN
            WRITELN; WRITELN('Presione una tecla para tirar los dados!');	readkey;
            WRITE('.'); DELAY(250);WRITE('.'); DELAY(250);WRITELN('.'); DELAY(500);					(*Sumerge mas al jugador en la experiencia del tiro*)
            IF n=2 THEN
            	BEGIN
            	tirar_dado(x);
            	DELAY(223); (*le agrego delay para agregar mas aleatoriedad*) 
            	tirar_dado(y);
            	END
            ELSE
            	BEGIN
            	tirar_dado(x); y:=0;
            	END;
            SUMA:=x+y;
            END;
            END;


PROCEDURE num_cub (VAR num:INTEGER); (*proceso que controla que el numero ingresado no este cubierto, y que no se ingresen numeros distintos de los posibles*)
		BEGIN
			REPEAT
			oki:=TRUE;
			CASE num OF
				1:	IF v1=TRUE THEN BEGIN WRITELN('Escriba un numero que no este cubierto.'); READLN(num); END	ELSE oki:=FALSE;
				2:	IF v2=TRUE THEN BEGIN WRITELN('Escriba un numero que no este cubierto.'); READLN(num); END	ELSE oki:=FALSE;
				3:	IF v3=TRUE THEN BEGIN WRITELN('Escriba un numero que no este cubierto.'); READLN(num); END 	ELSE oki:=FALSE;
				4:	IF v4=TRUE THEN BEGIN WRITELN('Escriba un numero que no este cubierto.'); READLN(num); END	ELSE oki:=FALSE;
				5:	IF v5=TRUE THEN BEGIN WRITELN('Escriba un numero que no este cubierto.'); READLN(num); END	ELSE oki:=FALSE;
				6:	IF v6=TRUE THEN BEGIN WRITELN('Escriba un numero que no este cubierto.'); READLN(num); END	ELSE oki:=FALSE;
				7:	IF v7=TRUE THEN BEGIN WRITELN('Escriba un numero que no este cubierto.'); READLN(num); END	ELSE oki:=FALSE;
				8:	IF v8=TRUE THEN BEGIN WRITELN('Escriba un numero que no este cubierto.'); READLN(num); END	ELSE oki:=FALSE;
				9:	IF v9=TRUE THEN BEGIN WRITELN('Escriba un numero que no este cubierto.'); READLN(num); END	ELSE oki:=FALSE;
				10:	IF v10=TRUE THEN BEGIN WRITELN('Escriba un numero que no este cubierto.'); READLN(num); END	ELSE oki:=FALSE;
				ELSE
				WRITELN('Solo se permiten numeros del 1 al 10. Ingrese otro numero.'); READLN(num);
			END;
			UNTIL oki=FALSE;
		END;

PROCEDURE conjunto;
		BEGIN
			n1:=0; n2:=0; n3:=0; n4:=0;D:=FALSE;na:=1; nb:=2; nc:=3; nd:=4;
        	IF n=1 THEN WRITELN('Ingrese el numero') ELSE WRITELN('Ingrese numeros distintos');
        	CASE n OF
        		1:BEGIN WHILE D=FALSE DO BEGIN num_sum(na); END; num_cub(n1); END;                                		(*WHILE's anti-trampas*)
                2:BEGIN WHILE D=FALSE DO BEGIN num_sum(na); END; num_cub(n1);D:=FALSE;WHILE D=FALSE DO BEGIN num_sum(nb);END;WHILE n1=n2 DO BEGIN WRITELN('No pueden escribir dos numeros iguales, ingrese otro numero');
                  D:=FALSE;WHILE D=FALSE DO BEGIN num_sum(nb); END; END; num_cub(n2); END;
              	3:BEGIN WHILE D=FALSE DO BEGIN num_sum(na); END; num_cub(n1);D:=FALSE;WHILE D=FALSE DO BEGIN num_sum(nb);END ; WHILE n1=n2 DO BEGIN WRITELN('No pueden escribir dos numeros iguales, ingrese otro numero')
                 ;D:=FALSE;WHILE D=FALSE DO BEGIN num_sum(nb); END;END; num_cub(n2);D:= FALSE; WHILE D=FALSE DO BEGIN num_sum(nc); END; WHILE (n1=n3)OR(n2=n3) DO BEGIN WRITELN('No pueden escribir dos numeros iguales, ingrese otro numero');
                 D:=FALSE;WHILE D=FALSE DO BEGIN num_sum(nc); END;END; num_cub(n3); END;
                4: BEGIN WHILE D=FALSE DO BEGIN num_sum(na); END; num_cub(n1);D:=FALSE;WHILE D=FALSE DO BEGIN num_sum(nb);END ; WHILE n1=n2 DO BEGIN WRITELN('No pueden escribir dos numeros iguales, ingrese otro numero')
                 ;D:=FALSE;WHILE D=FALSE DO BEGIN num_sum(nb); END;END; num_cub(n2);D:= FALSE; WHILE D=FALSE DO BEGIN num_sum(nc); END; WHILE (n1=n3)OR(n2=n3) DO BEGIN WRITELN('No pueden escribir dos numeros iguales, ingrese otro numero')
                 ;D:=FALSE;WHILE D=FALSE DO BEGIN num_sum(nc); END;END; num_cub(n3); D:=FALSE;WHILE D=FALSE DO BEGIN num_sum(nd); END; WHILE (n1=n4)OR(n2=n4)OR(n3=n4) DO BEGIN WRITELN('No pueden escribir dos numeros iguales, ingrese otro numero');D:=FALSE;WHILE D=FALSE DO BEGIN num_sum(nc); END; END; num_cub(n4); END;
        	END;
		END;

PROCEDURE cerrar_turno(VAR caja:INTEGER);	(*Encargado de sumar el puntaje al jugador una vez que termina su turno*)
		BEGIN
			caja:=0;
			IF v1=FALSE THEN caja:=caja+1;
			IF v2=FALSE THEN caja:=caja+2;
			IF v3=FALSE THEN caja:=caja+3;
			IF v4=FALSE THEN caja:=caja+4;
			IF v5=FALSE THEN caja:=caja+5;
			IF v6=FALSE THEN caja:=caja+6;
			IF v7=FALSE THEN caja:=caja+7;
			IF v8=FALSE THEN caja:=caja+8;
			IF v9=FALSE THEN caja:=caja+9;
			IF v10=FALSE THEN caja:=caja+10;			
			WRITELN;WRITELN('El cierre de caja es igual a ',caja); WRITELN;WRITELN('<<<PRESIONE CUALQUIER TECLA PARA CONTINUAR>>>'); n:=0; cont:=3; readkey;
		END;

PROCEDURE correcto;	(*si la suma del conjunto es correcta, se cubren los numeros utilizados*)
		BEGIN
			WRITELN('El conjunto es correcto');
			CASE n1 OF
				1:	v1:=TRUE;
				2:	v2:=TRUE;
				3:	v3:=TRUE;
				4:	v4:=TRUE;
				5:	v5:=TRUE;
				6:	v6:=TRUE;
				7:	v7:=TRUE;
				8:	v8:=TRUE;
				9:	v9:=TRUE;
				10:	v10:=TRUE;
			END;
			CASE n2 OF
				1:	v1:=TRUE;
				2:	v2:=TRUE;
				3:	v3:=TRUE;
				4:	v4:=TRUE;
				5:	v5:=TRUE;
				6:	v6:=TRUE;
				7:	v7:=TRUE;
				8:	v8:=TRUE;
				9:	v9:=TRUE;
				10:	v10:=TRUE;
			END;
			CASE n3 OF
				1:	v1:=TRUE;
				2:	v2:=TRUE;
				3:	v3:=TRUE;
				4:	v4:=TRUE;
				5:	v5:=TRUE;
				6:	v6:=TRUE;
				7:	v7:=TRUE;
				8:	v8:=TRUE;
				9:	v9:=TRUE;
				10:	v10:=TRUE;
			END;
			CASE n4 OF
				1:	v1:=TRUE;
				2:	v2:=TRUE;
				3:	v3:=TRUE;
				4:	v4:=TRUE;
				5:	v5:=TRUE;
				6:	v6:=TRUE;
				7:	v7:=TRUE;
				8:	v8:=TRUE;
				9:	v9:=TRUE;
				10:	v10:=TRUE;
			END;
			WRITELN;WRITELN('<<<PRESIONE CUALQUIER TECLA PARA CONTINUAR>>>'); cont:=3; readkey;
		END;

PROCEDURE turno(VAR caja:INTEGER; j:STRING[10]);	(*Es el juego en si, es lo que hace que el programa funcione*)
BEGIN
	n:=2;
	v1:=FALSE; v2:=FALSE; v3:=FALSE; v4:=FALSE; v5:=FALSE; v6:=FALSE; v7:=FALSE; v8:=FALSE; v9:=FALSE; v10:=FALSE;
	WHILE n<>0 DO
	BEGIN
			cont:=0; (*Contador que limitará el numero de intentos (si falla 3 veces cierra la caja)*)
		    CLRSCR;
		    WRITELN('Turno de ',j);WRITELN;
			IF (v1=TRUE)AND(v2=TRUE)AND(v3=TRUE)AND(v4=TRUE)AND(v5=TRUE)AND(v6=TRUE)AND(v7=TRUE)AND(v8=TRUE)AND(v9=TRUE)AND(v10=TRUE) THEN (*Es ineficiente, pero no encontramos otra manera de hacerlo*)
			BEGIN textcolor(12); textbackground(16); WRITELN('HAS CERRADO LA CAJA!'); textcolor(0); textbackground(11); WRITELN;WRITELN('<<<PRESIONE CUALQUIER TECLA PARA CONTINUAR>>>'); readkey; CLRSCR; n:=0;(*Si el jugador cierra la caja, el ciclo se termina y pasa al siguiente jugador*) END
			ELSE	BEGIN WRITELN('Los numeros descubiertos son:'); textcolor(15); textbackground(0); (*Para resaltar las casillas de numeros descubiertos*)
			WRITELN('                                                                       ');
			IF v1=FALSE THEN WRITE('  [1]  ')		ELSE WRITE('       ');
			IF v2=FALSE THEN WRITE ('  [2]  ')	ELSE WRITE('       ');
			IF v3=FALSE THEN WRITE ('  [3]  ')	ELSE WRITE('       ');
			IF v4=FALSE THEN WRITE ('  [4]  ')	ELSE WRITE('       ');
			IF v5=FALSE THEN WRITE ('  [5]  ')	ELSE WRITE('       ');
			IF v6=FALSE THEN WRITE ('  [6]  ')	ELSE WRITE('       ');						(*Los WRITELN en blanco son para crear un cuadro*)
			IF v7=FALSE THEN WRITE ('  [7]  ')	ELSE WRITE('       ');
			IF v8=FALSE THEN WRITE ('  [8]  ')	ELSE WRITE('       ');
			IF v9=FALSE THEN WRITE ('  [9]  ')	ELSE WRITE('       ');
			IF v10=FALSE THEN WRITELN ('  [10]  ')	ELSE WRITELN('        '); 
			WRITELN('                                                                       ');
			WRITELN; textcolor(0); textbackground(11);
	        tiro;											(*Se realiza el tiro del dado*) (*Y aquí abajo se dibujan los dados*)
	        IF y=0 THEN BEGIN  WRITE('     ');textbackground(15); WRITELN('     ');textbackground(11);WRITE('     ');textbackground(15);WRITELN('  ',x,'  ');textbackground(11);WRITE('     ');textbackground(15);WRITELN('     '); END 
	        ELSE BEGIN WRITE('        '); textbackground(15); WRITE('     '); textbackground(11);WRITE('       '); textbackground(15); WRITELN('     '); 
	        textbackground(11); WRITE('        ');textbackground(15); WRITE('  ',x,'  '); textbackground(11);WRITE('       '); textbackground(15); WRITELN('  ',y,'  ');
	        textbackground(11);WRITE('        '); textbackground(15); WRITE('     '); textbackground(11);WRITE('       '); textbackground(15); WRITELN('     '); END; textbackground(11);
	        WRITELN('La suma del tiro da ',SUMA);	WRITELN;
		    WHILE cont<3 DO
		    	BEGIN
       cont:=cont+1;
		        WRITELN('Elija cuantos numeros descubiertos asociara para que su suma sea ',SUMA,'. (1,2,3,4)'); WRITELN('De no ser posible, ingrese 0 para finalizar su juego.INTENTOS =',4-cont);
		        READLN(n);
			        IF n=0 THEN cerrar_turno(caja)		
			        ELSE 
			        	BEGIN
			            conjunto; (*Pedimos al usuario que elija los numeros del conjunto*)
			        		IF n1+n2+n3+n4=SUMA THEN correcto (*Si la suma es correcta, "cubrirá" los valores que el eligio*)
			                ELSE 
			        		BEGIN IF cont=3 THEN BEGIN WRITELN('ERROR DE CAPA 8, EL PROGRAMA SE DESTRUIRA'); cerrar_turno(caja); readkey; END END; (*Un pequeño chiste*)
			        	END;
			    END;
      CLRSCR;
		END;
	END;
END;

PROCEDURE jugar;	(*pregunta por nombres, inicia el juego, y escribe los resultados*)
	BEGIN
            D:=FALSE;
            WHILE D= FALSE DO
            BEGIN
            TRY
	            BEGIN
	           		WRITELN('Cuantos jugadores participaran en el juego? (1-4)'); (*unicamente elige la cantidad de jugadores*)
	            	READLN(l);
	                n:=StrToInt(l);		(*LEE LA CANTIDAD DE JUGADORES Y SE ASEGURA DE QUE NO SEA ALGO DISTINTO DE UN ENTERO*)
	                D:= TRUE
	            END;
	           	EXCEPT
	           	On EConvertError DO BEGIN Writeln('Los datos ingresados no son validos'); DELAY(600); CLRSCR; END;
	            END;
            END;
               CLRSCR;
   			CASE n OF		(*Ejecuta el juego segun la cantidad de jugadores y muestra los puntajes y el ganador*)
				1:	BEGIN
					WRITELN('Escriba su nombre'); READLN(j1); turno(caja1,j1); WRITELN('FIN DEL JUEGO'); WRITELN(j1,' logro un puntaje de ',caja1);
					END;
				2:	BEGIN
					WRITELN('Escriba el nombre del primer jugador'); READLN(j1);
					WRITELN('Escriba el nombre del segundo jugador'); READLN(j2);
					turno(caja1,j1); turno(caja2,j2); WRITELN('FIN DEL JUEGO');WRITELN;WRITELN('Resultados:');WRITELN;
					WRITELN(j1,' logro un puntaje de ',caja1); WRITELN(j2,' logro un puntaje de ',caja2);
					WRITELN;
					IF caja1<caja2 THEN WRITELN('El ganador es ',j1) 
					ELSE 
					BEGIN
					IF caja2<caja1 THEN WRITELN('El ganador es ',j2) ELSE WRITELN('Es un merecido empate!');
					END;
					END;
				3:	BEGIN
					WRITELN('Escriba el nombre del primer jugador'); READLN(j1);
					WRITELN('Escriba el nombre del segundo jugador'); READLN(j2);
					WRITELN('Escriba el nombre del tercer jugador'); READLN(j3);
					turno(caja1,j1); turno(caja2,j2); turno(caja3,j3); WRITELN('FIN DEL JUEGO');WRITELN;WRITELN('Resultados:');
					WRITELN(j1,' logro un puntaje de ',caja1); WRITELN(j2,' logro un puntaje de ',caja2); WRITELN(j3,' logro un puntaje de ',caja3);
					WRITELN;
					IF caja1<caja2 THEN BEGIN IF caja1<caja3 THEN WRITELN('El ganador es ',j1) END;
					IF caja2<caja1 THEN BEGIN IF caja2<caja3 THEN WRITELN('El ganador es ',j2) END;
					IF caja3<caja1 THEN BEGIN IF caja3<caja2 THEN WRITELN('El ganador es ',j3) END;
					END; 
				4:	BEGIN
					WRITELN('Escriba el nombre del primer jugador'); READLN(j1);
					WRITELN('Escriba el nombre del segundo jugador'); READLN(j2);
					WRITELN('Escriba el nombre del tercer jugador'); READLN(j3);
					WRITELN('Escriba el nombre del cuarto jugador'); READLN(j4);
					turno(caja1,j1); turno(caja2,j2); turno(caja3,j3); turno(caja4,j4); WRITELN('FIN DEL JUEGO');WRITELN;WRITELN('Resultados:');
					WRITELN(j1,' logro un puntaje de ',caja1); WRITELN(j2,' logro un puntaje de ',caja2); WRITELN(j3,' logro un puntaje de ',caja3);
					WRITELN(j4,' logro un puntaje de ',caja4); WRITELN;
					IF caja1<caja2 THEN BEGIN IF caja1<caja3 THEN BEGIN IF caja1<caja4 THEN WRITELN('El ganador es ',j1) END; END;
					IF caja2<caja1 THEN BEGIN IF caja2<caja3 THEN BEGIN IF caja2<caja4 THEN WRITELN('El ganador es ',j2) END; END;
					IF caja3<caja1 THEN BEGIN IF caja3<caja2 THEN BEGIN IF caja3<caja4 THEN WRITELN('El ganador es ',j3) END; END;
					IF caja4<caja1 THEN BEGIN IF caja4<caja2 THEN BEGIN IF caja4<caja3 THEN WRITELN('El ganador es ',j4) END; END;
					END;
				ELSE WRITELN('No se toleraran este tipo de actitudes, vuelva pronto.');(*Si ingresan mas jugadores de los posibles, tira un mensaje de error*)
			END;												(*Si ingresan una letra, el sistema colapsa, ¿¿¿no se puede corregir???*)
			WRITELN;WRITELN('<<<PRESIONE CUALQUIER TECLA PARA VOLVER AL INICIO>>>');readkey; 
	END;

BEGIN
RANDOMIZE; (*Utilizamos esto para que los dos tiros de dados no sean iguales*) OK:=TRUE; (*Inicializo el booleano encargado de cerrar el programa*);
	textcolor(10);
    writeln('                                             DESARROLLADO POR CHACORRIENTES');	DELAY(125);
    writeln('                        ====================================================================');	DELAY(125);
    writeln('                        ||                                                                ||');	DELAY(125);
    writeln('                        ||   ########  ########  ########  ########  ########  ########   ||');	DELAY(125);
    writeln('                        ||   ###       ###       ###  ###  ###  ###  ###  ###  ###  ###   ||');	DELAY(125);
    writeln('                        ||   ###       ###       ###  ###  ###  ###  ###  ###  ###  ###   ||');	DELAY(125);
    writeln('                        ||   ###       ######    ########  ########  ########  ########   ||');	DELAY(125);
    writeln('                        ||   ###       ###       ### ##    ### ##    ###  ###  ### ##     ||');	DELAY(125);
    writeln('                        ||   ########  ########  ### ###   ### ###   ###  ###  ### ###    ||');	DELAY(125);
    writeln('                        ||   ########  ########  ###  ###  ###  ###  ###  ###  ###  ###   ||');	DELAY(125);
    writeln('                        ||                                                                ||');	DELAY(125);
    writeln('                        ||                       ###       ########                       ||');	DELAY(125);
    writeln('                        ||                       ###       ###  ###                       ||');	DELAY(125);
    writeln('                        ||                       ###       ###  ###                       ||');	DELAY(125);
    writeln('                        ||                       ###       ########                       ||');	DELAY(125);
    writeln('                        ||                       ###       ###  ###                       ||');	DELAY(125);
    writeln('                        ||                       ########  ###  ###                       ||');	DELAY(125);
    writeln('                        ||                       ########  ###  ###                       ||');	DELAY(125);
    writeln('                        ||                                                                ||');	DELAY(125);
    writeln('                        ||             ########  ########  ########  ########             ||');	DELAY(125);
    writeln('                        ||             ###       ###  ###     ###    ###  ###             ||');	DELAY(125);
    writeln('                        ||             ###       ###  ###     ###    ###  ###             ||');	DELAY(125);
    writeln('                        ||             ###       ########     ###    ########             ||');	DELAY(125);
    writeln('                        ||             ###       ###  ###     ###    ###  ###             ||');	DELAY(125);
    writeln('                        ||             ########  ###  ###  ######    ###  ###             ||');	DELAY(125);
    writeln('                        ||             ########  ###  ###  ######    ###  ###             ||');	DELAY(125);
    writeln('                        ||                                                                ||');	DELAY(125);
    writeln('                        ====================================================================');	DELAY(125);
    WRITELN('                        <<<<<<<<<<<<<<<<<<<<<<<<<PRESS ENTER TO START>>>>>>>>>>>>>>>>>>>>>>>');
    readln;
    textcolor(0);  textbackground(11); CLRSCR;
    WHILE OK=TRUE DO
     BEGIN
     CLRSCR;
     D:=FALSE;
     WHILE D= FALSE DO
     BEGIN
     TRY
     BEGIN
	WRITELN('Elija una opcion (1,2,3,4). Presione ENTER luego de ingresar cada numero.');
	WRITELN('1-JUGAR');
	WRITELN('2-TUTORIAL');
	WRITELN('3-Soporte tecnico');
	WRITELN('4-CERRAR');
	READLN(l);
    n:=StrToInt(l);
    D:= TRUE
    end;
    except
    On EConvertError DO BEGIN Writeln('Los datos ingresados no son validos'); DELAY(600); CLRSCR; END;
    End;   
    CLRSCR;
    END;
    D:=FALSE;
   	CASE n OF
		1: 	jugar; (*Se llama al proceso para comenzar el juego*)
		2:	BEGIN
				WRITELN('TUTORIAL'); WRITELN;
				WRITELN('El objetivo fundamental es cubrir completamente todos los numeros del 1 al 10 o "cerrar la caja" que da por resultado el mejor puntaje posible que es cero. ');
				WRITELN('Puede ser jugado por cualquier cantidad de jugadores, aunque es más ameno con dos, tres o cuatro.');
				WRITELN('Una ronda se basa en un turno para cada jugador. El turno del jugador consiste en el lanzamiento repetido de 2 dados hasta que no pueda continuar. Cada tiro de los dados se toma como sigue: ');
				WRITE('El jugador tira el dado o dados en la caja y suma los puntos. Luego debe cubrir un conjunto de números descubiertos que sumó en el tiro. Si el 7, 8 y 9 están cubiertos,');
				WRITE(' el jugador decide si tirar un dado o dos. Si cualesquiera de estos tres números aún no están cubiertos, el jugador debe usar ambos dados.'); 
				WRITELN('Por ejemplo, si el total de puntos es 8, el jugador puede elegir uno de los siguientes conjuntos de números siempre y cuando todos los números del conjunto están disponibles para cubrirse: ');
				WRITELN('8; 7 & 1; 6 & 2; 5 & 3; 5 & 2 & 1; 4 & 3 & 1 ');
				WRITELN('El jugador continua haciendo lo mismo con un segundo tiro y asi sucesivamente.');
				WRITE('Una vez que un numero se cubre, permanece cubierto, y eventualmente, el jugador tirara un total por el que no es posible encontrar un conjunto de números descubiertos.');
				WRITELN(' Cuando esto suceda, el jugador se anotará la suma de los números que no se cubrieron. Asi, si no se cubrieron los números 1, 5 y 9 y el jugador tira un 4, cuyas opciones son: ');
				WRITELN('4 ó 3 & 1,');
				WRITELN('el turno finaliza y el puntaje del jugador es 15 (1 + 5 + 9) ');
				WRITE('Si alguien consigue cerrar la caja, o sea, tapar todos los numeros, ese jugador gana al instante y recibe la puesta doble de todos los jugadores. De lo contrario, después');
				WRITELN('que cada jugador haya tenido su turno, el ganador es el que tiene el puntaje mas bajo.'); WRITELN;
				WRITELN('<<<PRESIONE UNA TECLA PARA VOLVER AL INICIO>>>'); readkey;
			END;
		3: 	BEGIN WRITELN('CONTACTO: Todos los dias de lunes a viernes en la UTN'); WRITELN('<<<PRESIONE UNA TECLA PARA VOLVER AL INICIO>>>'); readkey; END;
		4:	OK:=FALSE;
	END;
 END;
END.

