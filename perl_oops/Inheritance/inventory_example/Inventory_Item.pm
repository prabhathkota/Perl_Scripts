#!/usr/intel/bin/perl

use strict;
use warnings;
use Data::Dumper;


package Inventory_Item;

sub new {
    my($class)  = shift;
    my(%params) = @_;
    bless {
       "PART_NUM"    => $params{"PART_NUM"},
       "QTY_ON_HAND" => $params{"QTY_ON_HAND"}
    }, $class;
}

1;

