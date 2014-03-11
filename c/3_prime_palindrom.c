#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int is_palindrome(int n)
{
	char pStr[10];
	sprintf(pStr, "%d", n);

	int nLength = strlen(pStr);
	int i;
	for (i = 0; i <= nLength / 2; i += 1)
		if (pStr[i] != pStr[nLength - i - 1])
			return 0;

	return 1;
}

int is_prime(int n)
{
	if (n <= 1)
		return 0;
	else if (n == 2)
		return 1;
	else if (n % 2 == 0)
		return 0;

	float root = sqrt(n);
	int i;
	for (i = 3; i <= root; i += 1)
		if (n % i == 0)
			return 0;

	return 1;
}

int main()
{
	int i;
	for (i = 999; i >= 2; i -= 2)
	{
		if (!is_palindrome(i) || !is_prime(i))
			continue;

		printf("%d\n", i);
		break;
	}

	return 0;
}

