#!/usr/intel/bin/perl

use strict;
use warnings;
use Data::Dumper;

my @arr = ("Mother Teresa", "Abraham Lincoln", "Winston Churchill", "Mahathma Gandhi");

print "\n Print Array Values just like that : @arr";

print "\n\n Print Array Values with Dumper : " . Dumper(\@arr);


my @num_arr = qw/100 200 300/;

print "\n First Val : " . $num_arr[0]; 

print "\n";

