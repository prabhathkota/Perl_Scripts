#!/usr/intel/bin/perl
package AAA;

use strict;
use warnings;
use Data::Dumper;

#use vars '$AUTOLOAD';

sub new {
    my $class = shift;
    print "\n\nInside Class Name : " . $class;
    my $self = {};
    bless $self, $class;
    return $self;
}	

sub foo {
   print "\nInside AAA foo";
}

sub bar {
   print "\nInside AAA bar";
}

#sub AUTOLOAD {
#   print "\n In Auto load";
#   my $self = shift;
#   print "\n Val : " . $AUTOLOAD; 
#}	

1;
