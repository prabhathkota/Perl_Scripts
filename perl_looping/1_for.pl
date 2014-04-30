#!/usr/intel/bin/perl

use strict;
use warnings;
use Data::Dumper;


my @arr = ("Mother Teresa", "Abraham Lincoln", "Winston Churchill", "Mahathma Gandhi");

print "\n 1) For Loop"; 

for (my $i = 0; $i < scalar(@arr); $i++) {
    print "\n Each Element : " . $arr[$i];
}

print "\n\n";


print "\n 2) ForEach Loop"; 

foreach my $each (@arr) {
   print "\n Salute - " . $each;
}

print "\n\n";


print "\n 3) ForEach with \$_ Loop"; 

foreach (@arr) {
   print "\n Salute - " . $_;
}

print "\n\n";
