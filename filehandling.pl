#!/usr/bin/perl
use strict;use warnings;
open my $fh,"<", "filehandling.pl" or die "Error: $!";
while(my $first = <$fh>){
	print $first;
}
$fh->close();
