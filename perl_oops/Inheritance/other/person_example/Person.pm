#!/usr/intel/bin/perl
package Person;

use strict;
use warnings;
use Data::Dumper;

sub new {
    my $class = shift;
    print "\nClass Name : " . $class;
    my $self = {
        _firstName => shift,
        _lastName  => shift,
        _ssn       => shift,
    };
    # Print all the values just for clarification.
    print "\nFirst Name is $self->{_firstName}";
    print "\nLast Name is $self->{_lastName}";
    print "\nSSN is $self->{_ssn}";
    bless $self, $class;
    return $self;
}

sub setFirstName {
    my ( $self, $firstName ) = @_;
    $self->{_firstName} = $firstName if defined($firstName);
    return $self->{_firstName};
}

sub getFirstName {
    my( $self ) = @_;
    return $self->{_firstName};
}

1;
