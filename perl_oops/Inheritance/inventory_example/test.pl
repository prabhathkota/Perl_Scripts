#!/usr/intel/bin/perl

use strict;
use warnings;
use Data::Dumper;

use Pen;

my $pen = new Pen(
        "PART_NUM"    => "12A-34",
        "QTY_ON_HAND" => 34,
        "INK_COLOR"   => "blue"
        );

print("The part number is " . $pen->{'PART_NUM'}    . "\n");
print("The quantity is "    . $pen->{'QTY_ON_HAND'} . "\n");
print("The ink color is "   . $pen->{'INK_COLOR'}   . "\n");

