#include<stdio.h>
#include<string.h>
#include "lib.h"

int main(int argc, char *argv[]){
    //char *entrada[36];// tempentrada;
    int base1,base2, contagem;
    //total = strlen(argv[1]);
    //entrada[36] = malloc(total * sizeof(char*));
    
    char* numero = argv[1];
    printf("%s\n", numero);

    contagem = strlen(numero);

    /*for(i=0;i<=total-1;i++){
        if(argv[1][i]>='A' && argv[1][i]<='Z'){
			tempentrada = argv[1][i]-'0'-7;
			entrada[i] = tempentrada;
		}else if (argv[1][i]>='a' && argv[1][i]<='z'){
			tempentrada = argv[1][i]-'0'-39;
            entrada[i] = tempentrada;
		}
		else{
            tempentrada = argv[1][i]-'0';
			entrada[i] = tempentrada;
		}
	}*/
    
    base1=atoi(argv[2]);
    base2=atoi(argv[3]);
    
    validaentradas(argv, base1, argc) ;

    converttobase(numero, base1, base2, contagem);

    return 0;
}