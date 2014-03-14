#include "stdlib.h"
#include "stdio.h"
#include "string.h"

int main(int argc, char **argv)
{
	if (argc == 1)
	{
		printf("No input file given");
		return 0;
	}

	FILE *pfh;
	pfh = fopen(argv[1], "r");

	char pcLine[1024];
	while (fgets(pcLine, 1024, pfh) != NULL)
	{
		if (!strcmp(pcLine, "\n"))
			continue;

		int nSum;
		nSum = 0;

		int nLength = strlen(pcLine);

		int i;
		for (i = nLength - 1; i >= 0; i -= 1)
		{
			nSum += atoi(pcLine + i);
			pcLine[i] = '\0';
		}

		printf("%d\n", nSum);
	}

	fclose(pfh);

	return 0;
}

