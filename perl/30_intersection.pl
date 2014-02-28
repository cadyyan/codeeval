#!/usr/bin/env perl

use strict;
use warnings;

open my $fh, '<', $ARGV[0];

for my $line ( <$fh> ) {
	chomp $line;
	next if $line eq '';

	my @sets = split /;/, $line;
	my %set1 = map { $_ => $_ } split /,/, $sets[0];
	my %set2 = map { $_ => $_ } split /,/, $sets[1];

	print join ',', sort { $a <=> $b } grep { $set1{$_} } keys %set2;
	print "\n";
}

close $fh;

