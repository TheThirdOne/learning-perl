#!/usr/bin/perl
use strict;
use warnings;

my $filename = shift @ARGV;
open FILE, $filename or die "File doesn't work";
my $hash = {};
my @lines;
while(my $line = <FILE>){
	$line =~ s/[\.;,!?"-'\[]//g;
	@lines = split(/\s/,$line);
	foreach (@lines){
		$_ =~ tr/A-Z/a-z/;
		if(defined $hash->{$_}){
			$hash->{$_}+=1;
		}else{
			$hash->{$_}=1;
		}
		#$hash->{$_}+=1 if defined $hash->{$_} else $hash->{$_} = 1;
	}
#	print @lines;	
}
for(sort {$a cmp $b} keys %{$hash}){
	if($hash->{$_} > 1){
		print $_,",",$hash->{$_},"\n";	
	}
}
#print "I = ", $hash->{"I"};
