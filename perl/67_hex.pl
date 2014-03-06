open my $fh, '<', $ARGV[0];

for my $line ( <$fh> ) {
	next if $line =~ /^\s*$/;
	print hex($line), "\n";
}

close $fh;

exit 0;

