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

		pcLine[strlen(pcLine) - 1] = '\0';

		char *pcToken;
	   	while ((pcToken = strrchr(pcLine, ' ')) != NULL)
		{
			printf("%s ", pcToken + sizeof(char));

			int nIndex = pcToken - pcLine;
			pcLine[nIndex] = '\0';
		}

		printf("%s\n", pcLine);
	}

	fclose(pfh);

	return 0;
}

