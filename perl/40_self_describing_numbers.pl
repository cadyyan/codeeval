#!/usr/bin/env perl

use strict;
use warnings;

open my $fh, '<', $ARGV[0];

sub is_self_describing {
	my $n = shift @_;

	for ( my $i = 0; $i != length $n; $i++ ) {
		my $c = substr $n, $i, 1;

		my @m = $n =~ m/$i/g;
		return 0 if $c != scalar @m;
	}

	return 1;
}

for my $line ( <$fh> ) {
	chomp $line;

	next if $line eq '';

	print is_self_describing( $line ), "\n";
}

close $fh;

exit 0;

