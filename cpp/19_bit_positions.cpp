#include <cstdlib>
#include <fstream>
#include <iostream>
#include <string>

#define bit(x, p) ((x & (1 << (p - 1))) >> (p - 1))

int main(int argc, char **argv)
{
	if (argc == 1)
	{
		std::cout << "No input file given" << std::endl;
		return 0;
	}

	std::ifstream fsInput(argv[1]);
	std::string sLine;
	while (getline(fsInput, sLine))
	{
		if (sLine.empty())
			continue;

		int n, p0, p1;
		sscanf(sLine.c_str(), "%d,%d,%d", &n, &p0, &p1);

		std::cout << (bit(n, p0) == bit(n, p1) ? "true" : "false") << std::endl;
	}

	fsInput.close();

	return 0;
}

