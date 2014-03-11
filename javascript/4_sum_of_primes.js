function is_prime(n) {
	if (n <= 1) {
		return false;
	}
	else if (n == 2) {
		return true;
	}
	else if (n % 2 == 0) {
		return false;
	}

	var sqrt = Math.sqrt(n);
	for (var i = 3; i <= sqrt; i += 2) {
		if (n % i == 0) {
			return false;
		}
	}

	return true;
}

var sum = 2;
var count = 1;
for (var i = 3; count != 1000; i++) {
	if (!is_prime(i)) {
		continue;
	}

	count++;
	sum += i;
}

console.log(sum);

