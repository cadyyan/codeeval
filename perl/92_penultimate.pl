open my $fh, '<', $ARGV[0];

for my $line ( <$fh> ) {
	$line =~ s/[\n\r]+//;
	next if $line eq '';

	print [split / /, $line]->[-2], "\n";
}

close $fh;

exit 0;

