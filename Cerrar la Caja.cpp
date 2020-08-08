#include <iostream>
#include <string>
#include <stdlib.h>
#include <time.h>
#include <stdio.h>
#include <windows.h>
#include <conio.h>
using namespace std;

	int x,y,SUMA;
	int n,n1,n2,n3,n4,na,nb,nc,nd;
    bool v1,v2,v3,v4,v5,v6,v7,v8,v9,v10;
    int caja1,caja2,caja3,caja4;
    char j1[20],j2[20],j3[20],j4[20],l;
    bool OK,oki,D;
    int cont;
    int dado;
    int num;

int tirar_dado(){
	dado=rand() % 6 +1;
	return(dado);
}

int tiro(){
	n=2;
	if(v7==true&&v8==true&&v9==true){
		printf("Cuantos dados desea tirar? (1,2)\n"); scanf("%d", &n);
	}
	printf("Presione una tecla para tirar los dados!\n"); getch();
	printf("."); Sleep(250); printf("."); Sleep(250); printf("."); Sleep(250);
	if(n==2){
		x=tirar_dado();
		y=tirar_dado();
	} else {
		x=tirar_dado();
		y=0;
	}
	SUMA = x+y;
}

int num_cub(){
	do{
		oki = true; scanf("%d", &num);
	    switch (num){
	    	case 1: { if (v1==true){printf("Escriba un numero que no este cubierto.\n"); scanf("%d", &num);}else{oki = false;}; break; }
	    	case 2: { if (v2==true){printf("Escriba un numero que no este cubierto.\n"); scanf("%d", &num);}else{oki = false;}; break; }
	    	case 3: { if (v3==true){printf("Escriba un numero que no este cubierto.\n"); scanf("%d", &num);}else{oki = false;}; break; }
	    	case 4: { if (v4==true){printf("Escriba un numero que no este cubierto.\n"); scanf("%d", &num);}else{oki = false;}; break; }
	    	case 5: { if (v5==true){printf("Escriba un numero que no este cubierto.\n"); scanf("%d", &num);}else{oki = false;}; break; }
	    	case 6: { if (v6==true){printf("Escriba un numero que no este cubierto.\n"); scanf("%d", &num);}else{oki = false;}; break; }
	    	case 7: { if (v7==true){printf("Escriba un numero que no este cubierto.\n"); scanf("%d", &num);}else{oki = false;}; break; }
	    	case 8: { if (v8==true){printf("Escriba un numero que no este cubierto.\n"); scanf("%d", &num);}else{oki = false;}; break; }
	    	case 9: { if (v9==true){printf("Escriba un numero que no este cubierto.\n"); scanf("%d", &num);}else{oki = false;}; break; }
	    	case 10:  { if (v10==true){printf("Escriba un numero que no este cubierto.\n"); scanf("%d", &num);}else{oki = false;}; break; }
	    	default: { printf("Solo se permiten numeros del 1 al 10. Ingrese otro numero.\n"); scanf("%d", &num); }
	    }  
	}while(oki==true);
	return(num);
}

int conjunto(){
	n1=0; n2=0; n3=0; n4=0;
	if (n==1) {printf("Ingrese un numero\n");}else{printf("Ingrese numeros distintos\n");};
	switch (n){
		case 1: {n1=num_cub(); break;}
		case 2:	{n1=num_cub(); n2=num_cub(); while(n1==n2){printf("No pueden escribir dos numeros iguales, ingrese otro numero\n");n2=num_cub();};break;}
		case 3: {n1=num_cub(); n2=num_cub(); while(n1==n2){printf("No pueden escribir dos numeros iguales, ingrese otro numero\n");n2=num_cub();};
				n3=num_cub(); while(n3==n1 || n3==n2){printf("No pueden escribir dos numeros iguales, ingrese otro numero\n"); n3=num_cub();};break;}
		case 4: {n1=num_cub(); n2=num_cub(); while(n1==n2){printf("No pueden escribir dos numeros iguales, ingrese otro numero\n");n2=num_cub();};
				n3=num_cub(); while(n3==n1 || n3==n2){printf("No pueden escribir dos numeros iguales, ingrese otro numero\n"); n3=num_cub();};
				n4=num_cub(); while(n4==n1 || n4==n2 || n4==n3){printf("No pueden escribir dos numeros iguales, ingrese otro numero\n"); n4=num_cub();};break;}
	}
}

int cerrar_turno(int caja){
	caja=0;
	if (v1==false) {caja=caja+1;};
	if (v2==false) {caja=caja+2;};
	if (v3==false) {caja=caja+3;};
	if (v4==false) {caja=caja+4;};
	if (v5==false) {caja=caja+5;};
	if (v6==false) {caja=caja+6;};
	if (v7==false) {caja=caja+7;};
	if (v8==false) {caja=caja+8;};
	if (v9==false) {caja=caja+9;};
	if (v10==false) {caja=caja+10;};
	printf("\nEl cierre de la caja es igual a %d. \n\n<<<PRESIONE CUALQUIER TECLA PARA CONTINUAR>>>", caja);
	n=0; cont=3; getch(); return(caja);
}

int correcto(){
			printf("\nEl conjunto es correcto");
			switch (n1){
				case 1:	v1=true; break;
				case 2:	v2=true; break;
				case 3:	v3=true; break;
				case 4:	v4=true; break;
				case 5:	v5=true; break;
				case 6:	v6=true; break;
				case 7:	v7=true; break;
				case 8:	v8=true; break;
				case 9:	v9=true; break;
				case 10:	v10=true; break;
			}
			switch (n2){
				case 1:	v1=true; break;
				case 2:	v2=true; break;
				case 3:	v3=true; break;
				case 4:	v4=true; break;
				case 5:	v5=true; break;
				case 6:	v6=true; break;
				case 7:	v7=true; break;
				case 8:	v8=true; break;
				case 9:	v9=true; break;
				case 10:	v10=true; break;
			}
			switch (n3){
				case 1:	v1=true; break;
				case 2:	v2=true; break;
				case 3:	v3=true; break;
				case 4:	v4=true; break;
				case 5:	v5=true; break;
				case 6:	v6=true; break;
				case 7:	v7=true; break;
				case 8:	v8=true; break;
				case 9:	v9=true; break;
				case 10:	v10=true; break;
			}
			switch (n4){
				case 1:	v1=true; break;
				case 2:	v2=true; break;
				case 3:	v3=true; break;
				case 4:	v4=true; break;
				case 5:	v5=true; break;
				case 6:	v6=true; break;
				case 7:	v7=true; break;
				case 8:	v8=true; break;
				case 9:	v9=true; break;
				case 10:	v10=true; break;
			}
			printf("\n<<<PRESIONE CUALQUIER TECLA PARA CONTINUAR>>>");
			cont=3;	getch();
}

int turno(int caja, char j[20]){
	n=2;
	v1=false; v2=false; v3=false; v4=false; v5=false; v6=false; v7=false; v8=false; v9=false; v10=false;
	while(n!=0){
		cont=0;		system("cls");
		printf("Turno de %s\n",j);
		if(v1==true && v2==true && v3==true && v4==true && v5==true && v6==true && v7==true && v8==true && v9==true && v10==true){
			printf("\nHAS CERRADO LA CAJA!\n<<<PRESIONE CUALQUIER TECLA PARA CONTINUAR>>>");
			getch(); 	system("cls");	n=0;
		} else {
			printf("Los numeros descubiertos son:\n");
			printf("                                                                       \n");
			if(v1==false){printf("  [1]  ");}else{printf("       ");}
			if(v2==false){printf("  [2]  ");}else{printf("       ");}
			if(v3==false){printf("  [3]  ");}else{printf("       ");}
			if(v4==false){printf("  [4]  ");}else{printf("       ");}
			if(v5==false){printf("  [5]  ");}else{printf("       ");}
			if(v6==false){printf("  [6]  ");}else{printf("       ");}
			if(v7==false){printf("  [7]  ");}else{printf("       ");}
			if(v8==false){printf("  [8]  ");}else{printf("       ");}
			if(v9==false){printf("  [9]  ");}else{printf("       ");}
			if(v10==false){printf("  [10]  ");}else{printf("       ");}
			printf("                                                                       \n");
			tiro();
			if(y==0){
				printf("     ");printf("     ");printf("  %d  \n",x);
				printf("     ");printf("     ");
			} else {
				printf("\n        ");printf("     ");printf("       ");printf("     \n");
				printf("        ");printf("  %d  ",x);printf("       ");printf("  %d  \n",y);
				printf("        ");printf("     ");printf("       ");printf("     \n");
			}
			printf("La suma del tiro da %d\n",SUMA);
			while(cont<3){
				cont=cont+1;
				printf("\nElija cuantos numeros descubiertos asociara para que su suma sea %d. (1,2,3,4)",SUMA);
				printf("\nDe no ser posible, ingrese 0 para finalizar su juego.INTENTOS = %d\n",4-cont);
				scanf("%d",&n);
				if(n==0){caja=cerrar_turno(caja);} else{
					conjunto();
					if(n1+n2+n3+n4==SUMA){correcto();} else {
						if(cont==3){printf("ERROR DE CAPA 8, EL PROGRAMA SE DESTRUIRA"); caja=cerrar_turno(caja); getch();}
						else {printf("La suma no es correcta\n");}
					}
				}
			}
		system("cls");
		}
	}
	return(caja);
}


int leer(char *cad, int n) { 
    int i, c; 

    c=getchar(); 
    if (c == EOF) { 
        cad[0] = '\0'; 
        return 0; 
    } 

    if (c == '\n') 
        i = 0; 
    else { 
        cad[0] = c; 
        i = 1; 
    } 

    for (; i < n-1 && (c=getchar())!=EOF && c!='\n'; i++) 
       cad[i] = c; 

    cad[i] = '\0'; 

    if (c != '\n' && c != EOF) 
        while ((c = getchar()) != '\n' && c != EOF); 

    return 1; 
}

int jugar(){
   	printf("Cuantos jugadores participaran en el juego? (1-4)\n");
   	scanf("%d",&n);
	system("cls");
	  switch(n){
			  	  case 1:{ 	printf("Escriba el nombre del primer jugador\n"); scanf("%s",&j1); turno(caja1,j1); printf("\nFIN DEL JUEGO"); printf("\n %s logro un puntaje de %d",j1,caja1);
							break;	}
				  case 2:{ printf("Escriba el nombre del primer jugador\n"); scanf("%s",&j1);
				           printf("Escrina el nombre del segundo jugador\n"); scanf("%s",&j2);
				           caja1=turno(caja1,j1); caja2=turno(caja2,j2); printf("\nFIN DEL JUEGO"); printf("\nResultados");
				           printf("\n %s logro un puntaje de %d",j1,caja1); printf("\n %s logro un puntaje de %d",j2,caja2);
				           if(caja1<caja2){ printf("\nEl ganador es %s",j1);
						   }else{ 
						           if(caja2<caja1){ printf("\nEl ganador es %s",j2);
								   }else{ printf("\nEs un merecido empate");
								   }
						   }

							break;
						  }
				  case 3:{ printf("Escriba el nombre del primer jugador\n"); scanf("%s",&j1);
				           printf("Escrina el nombre del segundo jugador\n"); scanf("%s",&j2);
				           printf("Escriba el nombre del tercer jugador\n"); scanf("%s",&j3);
				           caja1=turno(caja1,j1); caja2=turno(caja2,j2); caja3=turno(caja3,j3); printf("\nFIN DEL JUEGO"); printf("\nResultados");
				           if(caja1<caja2){ 
				              if(caja1<caja3){ printf("\nEl ganador es $s",j1);
							  }
						   }
						   if(caja2<caja1){
						   	 if(caja2<caja3){ printf("\nEl ganador es %s",j2);
								}
						   }
						   if(caja3<caja1){
						   	 if(caja3<caja2){ printf("\nEl ganador es %s",j3);
								}
				         	}
							break;
						  }
				  case 4:{ printf("Escriba el nombre del primer jugador\n"); scanf("%s",&j1);
				           printf("Escrina el nombre del segundo jugador\n"); scanf("%s",&j2);
				           printf("Escriba el nombre del tercer jugador\n"); scanf("%s",&j3);
				           printf("Escriba el nombre del cuarto jugador\n"); scanf("%s",&j4);
				           caja1=turno(caja1,j1); caja2=turno(caja2,j2); caja3=turno(caja3,j3); caja4=turno(caja4,j4); printf("\nFIN DEL JUEGO"); printf("\nResultados");
				           if(caja1<caja2){ 
				            if(caja1<caja3){
				            	if(caja1<caja4){ printf("\nEl ganador es %s",j1);
								}
							}
						   }
						   if(caja2<caja1){ 
				            if(caja2<caja3){
				            	if(caja2<caja4){ printf("\nEl ganador es %s",j2);
								}
							}
						   }
						   if(caja3<caja1){ 
				            if(caja3<caja2){
				            	if(caja3<caja4){ printf("\nEl ganador es %s",j3);
								}
							}
						   }
						   if(caja4<caja1){ 
				            if(caja4<caja2){
				            	if(caja4<caja3){ printf("\nEl ganador es %s",j4);
								}
							}
						   }
							break;
				  		}
			  			random: {printf("\nNo se toleraran este tipo de actitdes, vuelva pronto");}
			  	}
          printf("\n<<<PRESIONE CUALQUIER TECLA PARA VOLVER AL INICIO>>>"); getch();
}

int main(){

srand (time(NULL));
OK=true;
printf("                                        DESARROLLADO POR CHACORRIENTES"); Sleep(125);
printf("\n                    ====================================================================");Sleep(125);
printf("\n                    ||                                                                ||");Sleep(125);
printf("\n                    ||   ########  ########  ########  ########  ########  ########   ||");Sleep(125);
printf("\n                    ||   ###       ###       ###  ###  ###  ###  ###  ###  ###  ###   ||");Sleep(125);
printf("\n                    ||   ###       ###       ###  ###  ###  ###  ###  ###  ###  ###   ||");Sleep(125);
printf("\n                    ||   ###       ######    ########  ########  ########  ########   ||");Sleep(125);
printf("\n                    ||   ###       ###       ### ##    ### ##    ###  ###  ### ##     ||");Sleep(125);
printf("\n                    ||   ########  ########  ### ###   ### ###   ###  ###  ### ###    ||");Sleep(125);
printf("\n                    ||   ########  ########  ###  ###  ###  ###  ###  ###  ###  ###   ||");Sleep(125);
printf("\n                    ||                                                                ||");Sleep(125);
printf("\n                    ||                       ###       ########                       ||");Sleep(125);
printf("\n                    ||                       ###       ###  ###                       ||");Sleep(125);
printf("\n                    ||                       ###       ###  ###                       ||");Sleep(125);
printf("\n                    ||                       ###       ########                       ||");Sleep(125);
printf("\n                    ||                       ###       ###  ###                       ||");Sleep(125);
printf("\n                    ||                       ########  ###  ###                       ||");Sleep(125);
printf("\n                    ||                       ########  ###  ###                       ||");Sleep(125);
printf("\n                    ||                                                                ||");Sleep(125);
printf("\n                    ||             ########  ########  ########  ########             ||");Sleep(125);
printf("\n                    ||             ###       ###  ###     ###    ###  ###             ||");Sleep(125);
printf("\n                    ||             ###       ###  ###     ###    ###  ###             ||");Sleep(125);
printf("\n                    ||             ###       ########     ###    ########             ||");Sleep(125);
printf("\n                    ||             ###       ###  ###     ###    ###  ###             ||");Sleep(125);
printf("\n                    ||             ########  ###  ###  ######    ###  ###             ||");Sleep(125);
printf("\n                    ||             ########  ###  ###  ######    ###  ###             ||");Sleep(125);
printf("\n                    ||                                                                ||");Sleep(125);
printf("\n                    ====================================================================");Sleep(125);
printf("\n                    <<<<<<<<<<<<<<<<<<<<<<<<<PRESS ENTER TO START>>>>>>>>>>>>>>>>>>>>>>>");Sleep(125);
getch();  system("CLS");
    while(OK==true){
       system("cls");
					 printf("\nElija una opcion (1,2,3,4). Presione ENTER luego de ingresar cada numero");
					 printf("\n1-JUGAR");
					 printf("\n2-TUTORIAL");
					 printf("\n3-Soporte");
					 printf("\n4-Cerrar \n");
					 scanf("%d",&n);
                     system("CLS");
             switch(n){
			  	case 1:	{  jugar();break;	}
			   	case 2:	{ printf("\nTUTORIAL");
			            printf("\nEl objetivo fundamental es cubrir completamente todos los números del 1 al 10 o cerrar la caja que da por resultado el mejor puntaje posible que da que es 0");
				        printf("\nPuede ser jugado por cualquier cantidad de jugadores, aunque es más ameno con dos,tres o cuatro");
				        printf("\nSi alguien consigue cerrar la caja, o sea, tapar todos los números, ese jugador gana alinstante y recibe la puesta doble de todos los jugadores. De lo contrario, después que cada jugador haya tenido su turno, el ganador es el que tiene el puntaje más bajo.");
				        getch(); break;
			   			}
			   	case 3:	 { printf("Cotactos oficial +5493624179528"); getch(); break;}
			  	 case 4: {	OK=false;break;	}
			    }
			}
      return(0);
}
