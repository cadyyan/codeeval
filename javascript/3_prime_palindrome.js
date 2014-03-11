function is_palindrome(n) {
	var s = n.toString();
	var length = s.length;

	for (var i = 0; i <= length / 2; i++) {
		if (s[i] != s[length - i - 1])
			return false;
	}

	return true;
}

function is_prime(n) {
	if (n <= 1) {
		return false;
	}
	else if (n == 2) {
		return true;
	}
	else if (n % 2 === 0) {
		return false;
	}

	var root = Math.sqrt(n);
	for (var i = 3; i <= root; i++) {
		if (n % i === 0) {
			return false;
		}
	}

	return true;
}

for (var i = 999; i >= 3; i -= 2) {
	if (!is_palindrome(i) || !is_prime(i)) {
		continue;
	}

	console.log(i);
	break;
}

