#!/usr/bin/perl
use strict;
use warnings;
sub search{
	my $want = shift @_;
	my @a = @_;
	my $index = 0;
	until($a[$index] eq $want or $index > $#a){
		++$index;
	}
	if($index > $#a){
		return -1;
	}
	return $index;
}
#my ($a, $v, $h, $t) = (0,0,0,0); #  @ARGV;
my $temp = &search("-a", @ARGV);
my $a = $ARGV[$temp+1];
$temp = &search("-v", @ARGV);
my $v = $ARGV[$temp+1];
$temp = &search("-h", @ARGV);
my $h = $ARGV[$temp+1];
$temp = &search("-t", @ARGV);
my $t = $ARGV[$temp+1];

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
