#!/usr/bin/perl
use strict;
use warnings;
sub search{
	my $want = shift @_;
	my @a = @_;
	my $index = 0;
	print $#a;
	++$index until $a[$index] ne $want or $index > $#a;
	return $index;
}
my ($a, $v, $h, $t) = (0,0,0,0); #  @ARGV;
my $temp = &search("-v", @ARGV);
print $temp;
print "\n";
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
