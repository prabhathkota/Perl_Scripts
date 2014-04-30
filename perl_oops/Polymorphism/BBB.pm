#!/usr/intel/bin/perl

package BBB;

use strict;
use warnings;
use Data::Dumper;

use AAA;

our @ISA = ('AAA');

sub new {
    my $class = shift;
    print "\nInside Class Name : " . $class;
    my $self = {};
    bless $self, $class;
    return $self;
}


sub foo {
   print "\nInside BBB foo";
}

1;
