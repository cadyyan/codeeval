#include "stdio.h"
#include "math.h"

int is_prime(int n)
{
	if (n <= 1)
		return 0;
	else if (n == 2)
		return 1;
	else if (n % 2 == 0)
		return 0;

	double root = sqrt(n);
	for (int i = 3; i <= root; i += 2)
		if (n % i == 0)
			return 0;

	return 1;
}

int main()
{
	int sum = 2;
	int count = 1;
	int i;
	for (i = 3; count != 1000; i += 2)
	{
		if (!is_prime(i))
			continue;

		count += 1;
		sum += i;
	}

	printf("%d\n", sum);

	return 0;
}

