#!/usr/intel/bin/perl

use strict;
use warnings;
use Data::Dumper;

use BBB;

my $b_obj = new BBB();

$b_obj->foo();
$b_obj->bar();

my $a_obj = new AAA();

$a_obj->foo();
$a_obj->bar();
#$a_obj->unknown();

print "\n\n";
