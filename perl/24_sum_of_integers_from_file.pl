#!/usr/bin/env perl

use strict;
use warnings;

open my $fh, '<', $ARGV[0];

my $sum = 0;
for my $line ( <$fh> ) {
	$sum += $line;
}
print "$sum\n";

close $fh;

