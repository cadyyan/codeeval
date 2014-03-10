#include <iostream>
#include <math.h>

bool is_prime(int n)
{
	if (n <= 1)
		return false;
	else if (n == 2)
		return true;
	else if (n % 2 == 0)
		return false;

	double root = sqrt(n);
	for (int i = 3; i <= root; i += 2)
		if (n % i == 0)
			return false;

	return true;
}

int main()
{
	int sum = 2;
	int count = 1;
	for (int i = 3; count != 1000; i += 2)
	{
		if (!is_prime(i))
			continue;

		sum += i;
		count++;
	}

	std::cout << sum << std::endl;

	return 0;
}

