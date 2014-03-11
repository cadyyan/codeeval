#!/usr/bin/env perl

use strict;
use warnings;

sub is_happy {
	my $n = shift @_;

	return 0 if $n == 0;
	return 1 if $n == 1;

	for ( my $tolerance = 100; $tolerance > 0; $tolerance-- ) {
		my $sum = 0;
		for my $i ( split //, $n ) {
			$sum += $i * $i;
		}

		return 1 if $sum == 1;

		$n = $sum;
	}

	return 0;
}

open my $fh, '<', $ARGV[0];

for my $line ( <$fh> ) {
	chomp $line;

	next if $line eq '';

	print is_happy( $line ), "\n";
}

close $fh;

exit 0;

