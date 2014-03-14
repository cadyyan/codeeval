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
		if (sLine.empty())
			continue;

		for (std::size_t i = 0; i != sLine.length(); i++)
			sLine[i] = tolower(sLine[i]);

		std::cout << sLine << std::endl;
	}

	fsInput.close();

	return 0;
}

