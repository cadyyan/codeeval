sub is_prime {
	my $n = shift @_;

	return 0 if $n <= 1;
	return 1 if $n == 2;
	return 0 if $n & 1 == 0;

	my $sqrt = sqrt $n;
	for ( my $i = 3; $i <= $sqrt; $i++ ) {
		return 0 if $n % $i == 0;
	}

	return 1;
}

sub is_palindrome {
	my $n = shift @_;
	return $n eq reverse $n;
}

for ( my $i = 999; $i > 1; $i -= 2 ) {
	if ( is_palindrome $i and is_prime $i ) {
		print "$i\n";
		last;
	}
}

