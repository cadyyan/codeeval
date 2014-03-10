open my $fh, '<', $ARGV[0];

for $line ( <$fh> ) {
	$line =~ s/[\n\r]+//g;
	next if $line eq '';

	( my $l0, my $l1 ) = split / \| /, $line;
	$l0 = [ split / /, $l0 ];
	$l1 = [ split / /, $l1 ];

	my $min = scalar @$l0 > scalar @$l1 ? scalar @$l0 : scalar @$l1;

	my @products = ();
	for ( my $i = 0; $i != $min; $i++ ) {
		push @products, $l0->[$i] * $l1->[$i];
	}

	print join( ' ', @products ), "\n";
}

close $fh;

exit 0;

