open my $fh, '<', $ARGV[0];

for $line ( <$fh> ) {
	$line =~ s/[\n\r]+//g;
	next if $line eq '';

	$line =~ /\((\-?\d+), (\-?\d+)\) \((\-?\d+), (\-?\d+)\)/;

	( my $x0, my $y0, my $x1, my $y1 ) = ( $1, $2, $3, $4 );

	print sqrt( ( $x1 - $x0 ) ** 2 + ( $y1 - $y0 ) ** 2 ), "\n";
}

close $fh;

exit 0;

