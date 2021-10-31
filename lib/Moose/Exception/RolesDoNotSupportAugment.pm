package Moose::Exception::RolesDoNotSupportAugment;
our $VERSION = '2.2201';

use Moose;
extends 'Moose::Exception';

sub _build_message {
    "Roles cannot support 'augment'";
}

__PACKAGE__->meta->make_immutable;
1;
