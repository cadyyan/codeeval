#!/usr/bin/env perl

use strict;
use warnings;

open my $fh, '<', $ARGV[0];

for my $line ( <$fh> ) {
	chomp $line;
	next if $line eq '';
	print $line & 1 ^ 0x1;
	print "\n";
}

close $fh;

