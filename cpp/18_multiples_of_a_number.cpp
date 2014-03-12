#include <fstream>
#include <iostream>
#include <string>
#include <cstdlib>

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

		int x, n;
		sscanf(sLine.c_str(), "%d,%d", &x, &n);

		int v = n;
		while (v < x)
			v += n;

		std::cout << v << std::endl;
	}

	fsInput.close();

	return 0;
}

