open my $fh, '<', $ARGV[0];

for $line ( <$fh> ) {
	$line =~ s/[\n\r]+//g;
	next if $line eq '';

	# TODO:
}

close $fh;

exit 0;

