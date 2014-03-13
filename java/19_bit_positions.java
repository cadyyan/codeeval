import java.io.File;
import java.io.IOException;
import java.util.Scanner;

public class Main
{
	public static int bit(int n, int p)
	{
		p--;

		return (n & 1 << p) >> p;
	}

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

				Scanner lineScanner = new Scanner(line);
				lineScanner.useDelimiter(",");

				int n = lineScanner.nextInt();
				int p0 = lineScanner.nextInt();
				int p1 = lineScanner.nextInt();

				System.out.println(Main.bit(n, p0) == Main.bit(n, p1) ? "true" : "false");
			}

			scanner.close();
		}
		catch (IOException e)
		{
		}
	}
}

