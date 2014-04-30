#!/usr/intel/bin/perl

package Pen;

use strict;
use warnings;
use Data::Dumper;

use Inventory_Item;

our @ISA = qw(Inventory_Item);    #### Inheritance

sub new {
    my($class) = shift;
    my(%params) = @_;

    #my($self) = Inventory_Item->new(@_);
    my($self) = new Inventory_Item(@_);

    $self->{"INK_COLOR"} = $params{"INK_COLOR"};
    return(bless($self, $class));
}

1;
