open my $fh, '<', $ARGV[0];

for $line ( <$fh> ) {
	$line =~ s/[\n\r]+//g;
	next if $line eq '';

	print join( " ", map { ucfirst $_ } split / /, $line), "\n";
}

close $fh;

exit 0;

