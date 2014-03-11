#!/usr/bin/env perl

use strict;
use warnings;

open my $fh, '<', $ARGV[0];

my @lines = <$fh>;
for my $line ( @lines ) {
	chomp $line;
	print join " ", ( reverse( split( / /, $line ) ), "\n" );
}

close $fh;

