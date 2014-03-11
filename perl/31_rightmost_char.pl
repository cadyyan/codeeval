#!/usr/bin/env perl

use strict;
use warnings;

open my $fh, '<', $ARGV[0];

for my $line ( <$fh> ) {
	next if index( $line, ',' ) == -1;

	$line =~ s/[\n\r]+//g;

	my @parts  = split /,/, $line;
	my $word   = $parts[0];
	my $letter = $parts[1];

	print rindex $word, $letter;
	print "\n";
}

close $fh;
exit 0;

