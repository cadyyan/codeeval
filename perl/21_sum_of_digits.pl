#!/usr/bin/env perl

use strict;
use warnings;

open my $fh, '<', $ARGV[0];

for my $digit ( <$fh> ) {
	my $sum = 0;

	chomp $digit;
	for my $d ( split //, "$digit" ) {
		$sum += int( $d );
	}

	print "$sum\n";
}

close $fh;

