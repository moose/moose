package Moose::Exception::CannotCreateHigherOrderTypeWithoutATypeParameter;
our $VERSION = '3.0000';

use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::TypeConstraint';

sub _build_message {
    "You cannot create a Higher Order type without a type parameter";
}

__PACKAGE__->meta->make_immutable;
1;
