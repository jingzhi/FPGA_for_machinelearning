#include <stdio.h>
#include <stdint.h>
#include <stddef.h>
#include <stdlib.h>
#include "system.h"
#include "io.h"
#define BUF_SIZE (50)
int main()
{
//	STOH_BASE;
//	HTOS_BASE;
	//uint32_t* indexdata =0x1003010;
	//uint32_t countdata =0x0;
	FILE* fp_ascii = NULL;
	fp_ascii  = fopen ("/mnt/host/test.txt", "w");
	if (fp_ascii ==	NULL)
	{
	 printf ("Cannot open file test.txt.\n");
	 exit (1);
	}

	IOWR(STOH_BASE,0,0);
	IOWR(STOH_BASE,0,1);
	int a;

	while(1){
			//uint32_t a=IORD_32DIRECT(INDEX_DATA_BASE, 0);
			if(IORD(HTOS_BASE, 0)){
				char buffer[BUF_SIZE];
				IOWR(STOH_BASE,0,0);
				a=IORD_32DIRECT(INDEX_DATA_BASE, 0);
				if(a>>8==1){sprintf(buffer,"sof\r\n");
				fputs(buffer, fp_ascii);}
				sprintf(buffer,"%d \r\n",a&0xff);
				fputs(buffer, fp_ascii);
				IOWR(STOH_BASE,0,1);
			}
			else{IOWR(STOH_BASE,0,0);}

	}
	fclose (fp_ascii);


return 0;
}
