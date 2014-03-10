open my $fh, '<', $ARGV[0];

for my $line ( <$fh> ) {
	$line =~ s/[\n\r]+//;
	next if $line eq '';

	my $sum = 0;
	for my $c ( split //, $line ) {
		$sum += $c ** length $line;
	}

	print $sum == $line ? "True\n" : "False\n";
}

close $fh;

exit 0;

