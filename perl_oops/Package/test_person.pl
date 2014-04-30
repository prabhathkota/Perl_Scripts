#!/usr/intel/bin/perl

use strict;
use warnings;
use Data::Dumper;

use Person;

my $object = new Person( "David", "Johnson", 23234345);

print "\n Object : " . Dumper($object);

# Get first name which is set using constructor.
my $firstName = $object->getFirstName();

print "\n\nBefore Setting First Name is : $firstName";

# Now Set first name using helper function.
$object->setFirstName( "Mohd." );

# Now get first name set by helper function.
$firstName = $object->getFirstName();

print "\nAfter Setting First Name is : $firstName\n";

