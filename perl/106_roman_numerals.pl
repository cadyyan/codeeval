#!/usr/bin/env perl

use strict;
use warnings;

use POSIX qw/ floor /;

sub log10 {
	my $n = shift @_;
	return log( $n ) / log( 10 );
}

my %roman_numerals = (
	1    => 'I',
	5    => 'V',
	10   => 'X',
	50   => 'L',
	100  => 'C',
	500  => 'D',
	1000 => 'M',
);

my @sorted_keys = sort { $b <=> $a } keys( %roman_numerals );

open my $input_fh, '<', $ARGV[0];

my @numbers = <$input_fh>;
for my $number ( @numbers ) {
	my $output = '';

	for ( my $i = 0; $i != scalar @sorted_keys; $i++ ) {
		my $key      = $sorted_keys[$i];
		my $char     = $roman_numerals{$key};
		my $quantity = floor( $number / $key );
		my $log_val  = 10 ** floor( log10( $key ) + 1 );
		my $unit_val = floor( 10 * $number / $log_val );

		if ( $unit_val == 4 or $unit_val == 9 ) {
			my $next_key = ($unit_val + 1) * $log_val / 10;
			my $diff     = $next_key - $unit_val * $log_val / 10;

			$output .= $roman_numerals{$diff} . $roman_numerals{$next_key};
			$number -= $unit_val * $log_val / 10;
		}
		else {
			$output .= $char x $quantity;
			$number -= $key * $quantity;
		}
	}

	print $output . "\n";
}

close $input_fh;

