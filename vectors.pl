#!/usr/bin/perl
use strict;
use warnings;

sub vect_norm{
	my $total = 0;
	foreach my $comp (@_){
		$total +=$comp*$comp;
	}
	return sqrt $total;
}
sub vect_multiply{
	my $scalar = shift @_;
	my @out;
	for(my $i = 0; $i <= $#_; $i++){
		$out[$i]=$_[$i]*$scalar;
	}
	return @out;
}
sub vect_add{
	my $addition = shift @_;
	my @out;
	for(my $i = 0; $i <= $#_; $i++){
		$out[$i]=$_[$i]+$addition;
	}
	return @out;
}
sub acceleration{

}
sub sympletic_euler{
	my $dimensions = shift @_;
	my @pos;
	my @vel;
	if ($#_ + 1 < $dimensions*2){return;}	
	for(my $i = 0; $i < $dimensions; $i++){
		$pos[$i]= $_[$i];
		$vel[$i]= $_[$i+$dimensions];		
	}

	#will add logic here for the simulation 

	my $hash = {"pos"=>\@pos, "vel"=>\@vel};#\ makes a reference to the arrays
	return $hash;
}
print vect_add(1,1,5), "\n";
my $pos = sympletic_euler(2, 1, 56, 3, 4)->{"pos"};
print "$pos->[1]\n";
