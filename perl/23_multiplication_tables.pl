#!/usr/bin/env perl

use strict;
use warnings;

for ( my $i = 1; $i <= 12; $i++ ) {
	my $row = '';
	for ( my $j = 1; $j <= 12; $j++ ) {
		my $m = $i * $j;
		$row .= sprintf '%4s', $m;
	}
	print "$row\n";
}

