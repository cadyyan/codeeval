open my $fh, '<', $ARGV[0];

for my $line ( <$fh> ) {
	$line =~ s/[\n\r]//;
	next if $line eq '';
	print join( ' ', sort { $a <=> $b } split( / /, $line ) ), "\n";
}

close $fh;

exit 0;

