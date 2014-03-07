open my $fh, '<', $ARGV[0];

for $line ( <$fh> ) {
	$line =~ s/[\n\r]+//g;
	next if $line eq '';

	$line =~ tr/A-Za-z/a-zA-Z/;
	print "$line\n";
}

close $fh;

exit 0;

