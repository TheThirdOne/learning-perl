#!/usr/bin/perl
use strict;
use warnings;
sub search{
	my $want = shift @_;
	my @a = @_;
	my $index = 0;
	++$index until $#a < $index or $a[$index] eq $want;
	if($index > $#a){
		return -1;
	}
	return $index;
}
#my ($a, $v, $h, $t) = (0,0,0,0); #  @ARGV;
my ($a,$v,$h,$t) = (0,0,0,0);
my $temp = &search("-a", @ARGV);
$a = $ARGV[$temp+1] unless $temp == -1;
$temp = &search("-v", @ARGV);
$v = $ARGV[$temp+1] unless $temp == -1;
$temp = &search("-h", @ARGV);
$h = $ARGV[$temp+1] unless $temp == -1;
$temp = &search("-t", @ARGV);
$t = $ARGV[$temp+1] unless $temp == -1;
print "T, V, H, A\n";
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
