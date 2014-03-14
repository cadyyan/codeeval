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

				int sum = 0;
				for (int i = 0; i != line.length(); i++)
					sum += Integer.parseInt(line.substring(i, i + 1));

				System.out.println(sum);
			}

			scanner.close();
		}
		catch (IOException e)
		{
		}
	}
}

