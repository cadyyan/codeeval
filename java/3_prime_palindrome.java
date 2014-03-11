import java.lang.Math;

public class Main
{
	public static boolean isPalindrome(Integer n)
	{
		String s = n.toString();

		for (int i = 0; i <= s.length() / 2; i++)
			if (s.charAt(i) != s.charAt(s.length() - i - 1))
				return false;

		return true;
	}

	public static boolean isPrime(int n)
	{
		if (n <= 1)
			return false;
		else if (n == 2)
			return true;
		else if (n % 2 == 0)
			return false;

		double sqrt = Math.sqrt(n);
		for (int i = 3; i <= sqrt; i++)
			if (n % i == 0)
				return false;

		return true;
	}

	public static void main(String args[])
	{
		for (int i = 999; i >= 3; i -= 2)
		{
			if (!Main.isPalindrome(i) || !Main.isPrime(i))
				continue;

			System.out.println(i);
			break;
		}
	}
}

