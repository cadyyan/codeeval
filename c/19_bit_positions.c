#include "stdio.h"
#include "string.h"

#define bit(x, p) ((x & (1 << (p - 1))) >> (p - 1))

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

		int n, p0, p1;
		sscanf(pcLine, "%d,%d,%d", &n, &p0, &p1);

		if (bit(n, p0) == bit(n, p1))
			printf("true\n");
		else
			printf("false\n");
	}

	fclose(pfh);

	return 0;
}

