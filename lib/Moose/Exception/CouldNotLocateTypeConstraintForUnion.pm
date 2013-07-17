package Moose::Exception::CouldNotLocateTypeConstraintForUnion;

use Moose;
extends 'Moose::Exception';

has 'type_name' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

sub _build_message {
    my $self = shift;
    "Could not locate type constraint (".$self->type_name.") for the union";
}

1;
