#!/usr/bin/perl
use strict;
use warnings;
sub tokenize{
	my $output = {};
	for(my $i = 0; $i < $#_; $i++){
		$output->{$_[$i]}= $_[$i + 1]; #map each element in the array to the next element
	}
	return $output;
}
my $hash = tokenize @ARGV;
print keys %$hash, "\n";
