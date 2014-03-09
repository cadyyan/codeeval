import java.io.File;
import java.io.IOException;
import java.util.Scanner;

public class Main
{
	public static void main(String args[])
	{
		if (args.length == 0)
		{
			System.out.println("No input file given");
			return;
		}

		File file = new File(args[0]);
		try
		{
			Scanner scanner = new Scanner(file);
			scanner.useDelimiter("\\s+");

			while (scanner.hasNext())
			{
				int fizz = scanner.nextInt();
				int buzz = scanner.nextInt();
				int count = scanner.nextInt();

				String output = "";
				for (Integer i = 1; i <= count; i++)
				{
					if (i != 1)
						output += " ";

					if (i % fizz == 0 && i % buzz == 0)
						output += "FB";
					else if (i % fizz == 0)
						output += "F";
					else if (i % buzz == 0)
						output += "B";
					else
						output += i.toString();
				}

				System.out.println(output);
			}

			scanner.close();
		}
		catch (IOException e)
		{
		}
	}
}

