#include <stdio.h>

#include "array.h"

int main() {
 	void *arr = array_input();
	//Print the array for 64 bit computers	
#ifdef __LP64__
	long long *pt;
	for (pt = arr;*pt>0;pt++){
		printf ("%Ld ", *pt);
	}
	printf ("\n");
	return 0;
#else
	//Print the array for 32 bit computers
	long *pt;
	for (pt = arr;*pt>0;pt++){
		printf ("%ld ", *pt);
	}
	printf ("\n");
	return 0;
#endif
};
