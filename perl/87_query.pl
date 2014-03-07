open my $fh, '<', $ARGV[0];

my $board = [];
for ( my $i = 0; $i != 256; $i++ ) {
	push @$board, [];

	for ( my $j = 0; $j != 256; $j++ ) {
		push @{ $board->[0] }, 0;
	}
}

for my $line ( <$fh> ) {
	$line =~ s/[\n\r]+//g;
	next if $line eq '';

	(my $cmd, my @args) = split / /, $line;

	if ( $cmd eq 'SetCol' ) {
		my $col = $args[0];
		my $x = $args[1];

		for ( my $i = 0; $i != 256; $i++ ) {
			$board->[$i]->[$col] = $x;
		}
	}
	elsif ( $cmd eq 'SetRow' ) {
		my $row = $args[0];
		my $x = $args[1];

		for ( my $i = 0; $i != 256; $i++ ) {
			$board->[$row]->[$i] = $x;
		}
	}
	elsif ( $cmd eq 'QueryCol' ) {
		my $col = $args[0];

		my $sum = 0;
		for ( my $i = 0; $i != 256; $i++ ) {
			$sum += $board->[$i]->[$col];
		}

		print "$sum\n";
	}
	elsif ( $cmd eq 'QueryRow' ) {
		my $row = $args[0];

		my $sum = 0;
		for ( my $i = 0; $i != 256; $i++ ) {
			$sum += $board->[$row]->[$i];
		}

		print "$sum\n";
	}
}

close $fh;

exit 0;

