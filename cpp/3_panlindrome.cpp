#include <iostream>
#include <math.h>
#include <sstream>
#include <string>

bool is_palindrome(int n)
{
	std::stringstream ss;
	ss << n;

	std::string s = ss.str();
	int nLength = s.length();

	for (int i = 0; i != nLength / 2; i++)
		if (s[i] != s[nLength - i - 1])
			return false;

	return true;
}

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
	for (int i = 999; i >= 3; i -= 2)
	{
		if (!is_palindrome(i) || !is_prime(i))
			continue;

		std::cout << i << std::endl;
		break;
	}

	return 0;
}

