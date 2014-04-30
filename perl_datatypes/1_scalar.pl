#!/usr/intel/bin/perl

use strict;
use warnings;
use Data::Dumper;

#In Perl, scalar can store a single value at any time.
#In the following example, $str contains a string value.
#We can store any single integer, string, float value in a scalar. It's as simple as that.


#Integer
my $num = 300;
print "\n Number : " . $num;

#String
my $str = "Alex Perter John Dane";

#Array
my @arr = split(/ /,$str);

print "\n After Split : " . Dumper(\@arr);

