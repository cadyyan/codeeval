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

				String tokens[] = line.split(",");
				int x = Integer.parseInt(tokens[0]);
				int n = Integer.parseInt(tokens[1]);

				int v = n;
				while (v < x)
					v += n;

				System.out.println(v);
			}

			scanner.close();
		}
		catch (IOException e)
		{
		}
	}
}

