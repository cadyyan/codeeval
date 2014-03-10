#!/usr/bin/env perl

use strict;
use warnings;

open my $fh, '<', $ARGV[0];

for my $line ( <$fh> ) {
	chomp $line;
	my @numbers = split /,/, $line;

	my %set = map { $_ => $_ } @numbers;
	print join ',', sort { $a <=> $b } keys %set;
	print "\n";
}

close $fh;

