#!/usr/bin/env perl

use strict;
use warnings;

open my $fh, '<', $ARGV[0];

for my $line ( <$fh> ) {
	my @parts = split / /, $line;
	my $a     = $parts[0];
	my $b     = $parts[1];
	my $n     = $parts[2];

	my @output = ();
	for ( my $i = 1; $i <= $n; $i++ ) {
		if ( $i % $a == 0 and $i % $b == 0 ) {
			push @output, 'FB';
		}
		elsif ( $i % $a == 0 ) {
			push @output, 'F';
		}
		elsif ( $i % $b == 0 ) {
			push @output, 'B';
		}
		else {
			push @output, $i;
		}
	}

	print join( ' ', @output ) . "\n";
}

close $fh;

