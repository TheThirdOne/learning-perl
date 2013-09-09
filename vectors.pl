#!/usr/bin/perl
use strict;
use warnings;

sub vector_norm{
	my $total = 0;
	foreach my $comp (@_){
		$total +=$comp*$comp;
	}
	return sqrt $total;
}
sub multiply_scalar{
	my $scalar = shift @_;
	my @out;
	for(my $i = 0; $i <= $#_; $i++){
		$out[$i]=$_[$i]*$scalar;
	}
	return @out;
}
sub add_scalar{
	my $addition = shift @_;
	my @out;
	for(my $i = 0; $i <= $#_; $i++){
		$out[$i]=$_[$i]+$addition;
	}
	return @out;
}
sub add_vector{
	my $size = ($#_ + 1)/2;
	my @out;
	for(my $i = 0; $i < $size; $i++){
		$out[$i]=$_[$i]+$_[$i + $size];
	}
	return @out;
}
sub gravity{
	my $d = shift @_;
	my $GM = shift @_; #Gravitational constant * mass of orbiting body
	my @pos = @_; #vector to orbiting mass from orbited body
	my @out;
	@out = multiply_scalar(-$GM,@pos);
	print "@out ,";
	@out = multiply_scalar(1/vector_norm(@pos)**$d,@out);
	return @out;
}
sub sympletic_euler{
	my $dimensions = shift @_;
	my $n = shift @_;
	my @pos;
	my @vel;
	if ($#_ + 1 < $dimensions*2){return;}	
	for(my $i = 0; $i < $dimensions; $i++){
		$pos[$i]= $_[$i];
		$vel[$i]= $_[$i+$dimensions];		
	}
	my $outpos = [\@pos];
	my $outvel = [\@vel];
	my $h = 1;
	for my $i (0 .. 10){
		my $temppos = @$outpos[$i];
		my $tempvel = @$outvel[$i];
		my @tempp = add_vector(@$temppos, multiply_scalar($h , @$tempvel)); 
		my @tempv = add_vector(@$tempvel, multiply_scalar($h , gravity($n, 5, @$temppos))); 
 		@$outvel[$i +1] = \@tempv;
		@$outpos[$i + 1] = \@tempp; 
		print "@$temppos , @$tempvel\n";
	}
	my $hash = {"pos"=>$outpos, "vel"=>$outvel};#\ makes a reference to the arrays
	return $hash;
}
print add_vector(1, 2,1,5), "\n";
my $pos = sympletic_euler(2, 2, 1, 56, 1, 1)->{"pos"};
print "@{@$pos[1]}[0]\n : ";
my @grav = gravity(2,1,2,7);
print "@grav", "\n";
print multiply_scalar(3,4,5);
