#!/usr/intel/bin/perl

use strict;
use warnings;
use Data::Dumper;

my %hash = (a => 10, 
	    e => 40,
	    c => 30, 
	    d => 40,
	    b => 20, 
            a => 100);

#Print Keys
print "\n Only Keys:\n" . Dumper(keys %hash);

print "\n\n";
#Print Values
print "\n Only Values:\n" . Dumper(values %hash);


print "\n\n";
#Print Keys and Values
while ( my ($key, $value) = each %hash) 
{
   print "$key => $value\n";
}

print "\n\n";



#Print Keys
print "\n Sorted Keys:\n" . Dumper(sort keys %hash);

print "\n\n";
#Print Values
print "\n Sorted Values:\n" . Dumper(sort values %hash);
