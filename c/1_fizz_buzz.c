#include "stdio.h"

#ifdef debug
#define dprint printf
#else
#define dprint(x ...)
#endif

int main(int argc, char **argv)
{
	FILE *pfh;
   	pfh = fopen(argv[1], "r");

	int nFizz, nBuzz, nCount;
	while (fscanf(pfh, "%d %d %d\n", &nFizz, &nBuzz, &nCount) != EOF)
	{
		dprint("%d %d %d\n", nFizz, nBuzz, nCount);

		int i;
		for (i = 1; i <= nCount; i += 1)
		{
			if (i != 1)
				printf(" ");

			if (i % nFizz == 0 && i % nBuzz == 0)
				printf("FB");
			else if (i % nFizz == 0)
				printf("F");
			else if (i % nBuzz == 0)
				printf("B");
			else
				printf("%d", i);
		}

		printf("\n");
	}

	fclose(pfh);

	return 0;
}

