#!/usr/bin/env perl

use strict;
use warnings;

sub is_prime {
	my $n = shift @_;

	return 0 if $n <= 1;
	return 1 if $n == 2;
	return 0 if $n % 2 == 0;

	my $sqrt = sqrt $n;
	for ( my $i = 3; $i <= $sqrt; $i += 2 ) {
		return 0 if $n % $i == 0;
	}

	return 1;
}

my $sum   = 2;
my $count = 1;
my $i     = 1;
while ( $count != 1000 ) {
	$i += 2;
	next if not is_prime( $i );

	$sum += $i;
	$count++;
}

print "$sum\n";

