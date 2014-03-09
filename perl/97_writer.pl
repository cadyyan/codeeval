open my $fh, '<', $ARGV[0];

for $line ( <$fh> ) {
	$line =~ s/[\n\r]+//g;
	next if $line eq '';

	(my $s, my $raw_args) = split /\|/, $line;
	my @args = split / /, $raw_args;

	shift @args;

	print substr( $line, $_ - 1, 1 ) foreach @args;
	print "\n";
}

close $fh;

exit 0;

