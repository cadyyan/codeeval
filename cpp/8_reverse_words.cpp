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

		std::size_t nPos, nLast = sLine.length() - 1;
		while ((nPos = sLine.find_last_of(" ", nLast)) != std::string::npos)
		{
			std::cout << sLine.substr(nPos + 1, nLast - nPos) << " ";
			nLast = nPos - 1;
		}

		std::cout << sLine.substr(0, sLine.find(" ")) << std::endl;
	}

	fsInput.close();

	return 0;
}

