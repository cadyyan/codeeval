import java.io.File;
import java.io.IOException;
import java.util.Scanner;

public class Main
{
	public static void main(String args[])
	{
		File file = new File(args[0]);

		try
		{
			Scanner scanner = new Scanner(file);
			while (scanner.hasNextLine())
			{
				String line = scanner.nextLine();
				if (line.equals(""))
					continue;

				String words[] = line.split(" ");
				for (int i = 0; i != words.length; i++)
				{
					if (i != 0)
						System.out.print(" ");

					System.out.print(words[words.length - i - 1]);
				}

				System.out.println();
			}

			scanner.close();
		}
		catch (IOException e)
		{
		}
	}
}

