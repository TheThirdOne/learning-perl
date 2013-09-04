#!/usr/bin/perl
use strict;
use warnings;
my ($a, $v, $h, $t) =  @ARGV;
for(my $i = 0; $i < $t; $i++){
	print $i;
	print ",";
	print $i*$a + $v;
	print ",";
	print $a/2*$i*$i+$v*$i+$h;
	print ",";
	print $a;
	print "\n"
}
