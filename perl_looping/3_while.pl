#!/usr/intel/bin/perl

use strict;
use warnings;
use Data::Dumper;


my @names = ("Mother Teresa", "Abraham Lincoln", "Winston Churchill", "Mahathma Gandhi");


print "\n Looping While using counter";

my $i=0;

print "\n Scaar Arar Size " . scalar(@names) . "\n";

while ($i <= $#names) {
   print "\n Looping ... " . $names[$i] . "\n";
   $i++;
}

print "\n";
