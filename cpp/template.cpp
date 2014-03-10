#include <fstream>
#include <iostream>
#include <string>

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
		if (sLine == "\n")
			continue;

		// TODO:
	}

	fsInput.close();

	return 0;
}

