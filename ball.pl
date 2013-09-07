#!/usr/bin/perl
use strict;
use warnings;
use Tokenizer qw(tokenize);

my ($a,$v,$h,$t) = (0,0,0,0);
my $inputs = tokenize @ARGV;

$a = $inputs->{"-a"};
$v = $inputs->{"-v"};
$h = $inputs->{"-h"};
$t = $inputs->{"-t"};

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
