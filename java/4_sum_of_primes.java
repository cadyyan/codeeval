import java.lang.Math;

public class Main
{
	public static boolean isPrime(int n)
	{
		if (n <= 1)
			return false;
		else if (n == 2)
			return true;
		else if (n % 2 == 0)
			return false;

		double sqrt = Math.sqrt(n);
		for (int i = 3; i <= sqrt; i += 2)
			if (n % i == 0)
				return false;

		return true;
	}

	public static void main(String args[])
	{
		int sum = 2;
		int count = 1;
		for (int i = 3; count != 1000; i += 2)
		{
			if (!Main.isPrime(i))
				continue;

			count++;
			sum += i;
		}

		System.out.println(sum);
	}
}

