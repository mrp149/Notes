#!/usr/bin/env perl
sub prinsn {
	($r, $k) = @_;
	printf(" %02o ", $r);
	if ($k & 02000000) {
		printf("%02o %05o", $k >> 15, $k & 077777);
	} else {
		printf("%03o %04o", $k >> 12, $k & 07777);
	}
}

print "B $ARGV[0]\n";

shift @ARGV;

while (<>) {
	next unless /^\d\d\d\d.\d\d\d\d:/;
	@x = split;
	$p1 = oct($x[1]);
	$p2 = oct($x[2]);
	$p3 = oct($x[3]);
	$p4 = oct($x[4]);
	$r1 = $p1 >> 8;
	$k1 = ($p1 & 0377) << 12 | $p2;
	$r2 = $p3 >> 8;
	$k2 = ($p3 & 0377) << 12 | $p4;
	print 'K';
	prinsn($r1, $k1);
	print ',';
	prinsn($r2, $k2); 
	print "\n";
}
