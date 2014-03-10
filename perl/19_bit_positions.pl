#!/usr/bin/env perl

use strict;
use warnings;

sub bit {
	my $n = shift @_;
	my $p = shift @_;

	$p--;

	return ( $n & 1 << $p ) >> $p;
}

open my $fh, '<', $ARGV[0];

for my $line ( <$fh> ) {
	chomp $line;
	next if $line eq '';

	my @parts = split /,/, $line;
	my $n     = $parts[0];
	my $p1    = $parts[1];
	my $p2    = $parts[2];

	print bit( $n, $p1 ) eq bit( $n, $p2 ) ? "true\n" : "false\n";
}

close $fh;

