open my $fh, '<', $ARGV[0];

for my $line ( <$fh> ) {
	$line =~ s/[\n\r]+//g;
	next if $line eq '';

	$line = lc $line;
	$line =~ s/[^a-z]//g;

	my %alphabet = map { $_ => $_ } split //, $line;
	my @counts = ();
	for my $l ( keys %alphabet ) {
		my $c =()= $line =~ m/$l/g;
		push @counts, $c;
	}

	@counts = sort { $b <=> $a } @counts;
	my $score = 0;
	for ( my $i = 0; $i != scalar @counts; $i++ ) {
		$score += (26 - $i) * $counts[$i];
	}

	print "$score\n";
}

close $fh;

exit 0;

