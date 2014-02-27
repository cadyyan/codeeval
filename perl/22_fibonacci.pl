#!/usr/bin/env perl

use strict;
use warnings;

sub fibonacci {
	my $n = shift @_;

	return 0 if $n == 0;
	return 1 if $n == 1;

	return fibonacci( $n - 1 ) + fibonacci( $n - 2 );
}

open my $fh, '<', $ARGV[0];

for my $line ( <$fh> ) {
	print fibonacci( $line ) . "\n";
}

close $fh;

