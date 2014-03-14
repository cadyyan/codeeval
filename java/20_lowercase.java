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

				System.out.println(line.toLowerCase());
			}

			scanner.close();
		}
		catch (IOException e)
		{
		}
	}
}

