open my $fh, '<', $ARGV[0];

for my $line ( <$fh> ) {
	next if $line =~ /^\s*$/;

	(my $n, my $m) = split /,/, $line;
	while ( $n >= $m ) {
		$n -= $m;
	}

	print "$n\n";
}

close $fh;

exit 0;

