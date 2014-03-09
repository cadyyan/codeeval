#include <fstream>
#include <iostream>
#include <string>
#include <sstream>

int main(int argc, char **argv)
{
	if (argc == 1)
	{
		std::cout << "No input file given" << std::endl;
		return 1;
	}

	std::ifstream fsInput(argv[1]);

	while (!fsInput.eof())
	{
		std::string sLine;
		std::getline(fsInput, sLine);

		if (sLine.length() == 0)
			continue;

		std::stringstream ssTokens(sLine);
		int nFizz, nBuzz, nCount;

		ssTokens >> std::skipws >> nFizz >> nBuzz >> nCount;
		for (int i = 1; i <= nCount; i++)
		{
			if (i != 1)
				std::cout << " ";

			if (i % nFizz == 0 && i % nBuzz == 0)
				std::cout << "FB";
			else if (i % nFizz == 0)
				std::cout << "F";
			else if (i % nBuzz == 0)
				std::cout << "B";
			else
				std::cout << i;
		}

		std::cout << std::endl;
	}

	fsInput.close();

	return 0;
}

