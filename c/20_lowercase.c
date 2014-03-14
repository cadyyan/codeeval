#include "ctype.h"
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

		int nLength;
		int i;
	   	nLength = strlen(pcLine);
		for (i = 0; i != nLength; i++)
			pcLine[i] = tolower(pcLine[i]);

		printf("%s", pcLine);
	}

	fclose(pfh);

	return 0;
}

