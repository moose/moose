package Moose::Exception::BuilderDoesNotExist;
our $VERSION = '3.0000';

use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::Attribute', 'Moose::Exception::Role::Instance';

sub _build_message {
    my $self = shift;
    blessed($self->instance)." does not support builder method '".$self->attribute->builder."' for attribute '".$self->attribute->name."'";
}

__PACKAGE__->meta->make_immutable;
1;
