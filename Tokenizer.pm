use strict;
use warnings;

use Exporter qw(import);

our @EXPORT_OK = qw(tokenize);

sub tokenize{
	my $output = {};
	for(my $i = 0; $i < $#_; $i++){
		$output->{$_[$i]}= $_[$i + 1]; #map each element in the array to the next element
	}
	return $output;
}
