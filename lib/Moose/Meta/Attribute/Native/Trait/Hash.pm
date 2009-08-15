
package Moose::Meta::Attribute::Native::Trait::Hash;
use Moose::Role;

our $VERSION   = '0.89';
$VERSION = eval $VERSION;
our $AUTHORITY = 'cpan:STEVAN';

use Moose::Meta::Attribute::Native::MethodProvider::Hash;

with 'Moose::Meta::Attribute::Native::Trait';

has 'method_provider' => (
    is        => 'ro',
    isa       => 'ClassName',
    predicate => 'has_method_provider',
    default   => 'Moose::Meta::Attribute::Native::MethodProvider::Hash'
);

sub _helper_type { 'HashRef' }

no Moose::Role;

1;

__END__

=pod

=head1 NAME

Moose::Meta::Attribute::Native::Trait::Hash

=head1 SYNOPSIS

  package Stuff;
  use Moose;

  has 'options' => (
      traits    => ['Hash'],
      is        => 'ro',
      isa       => 'HashRef[Str]',
      default   => sub { {} },
      handles   => {
          set_option     => 'set',
          get_option     => 'get',
          has_no_options => 'empty',
          num_options    => 'count',
          delete_option  => 'delete',
      }
  );

=head1 DESCRIPTION

This module provides a Hash attribute which provides a number of
hash-like operations. 

=head1 PROVIDED METHODS

These methods are implemented in
L<Moose::Meta::Attribute::Native::MethodProvider::Hash>.

=over 4

=item B<count>

Returns the number of elements in the hash.

=item B<empty>

If the hash is populated, returns false. Otherwise, returns true.

=item B<exists>

Returns true if the given key is present in the hash.

=item B<defined>

Returns true if the value of a given key is defined.

=item B<get>

Returns an element of the hash by its key.

=item B<keys>

Returns the list of keys in the hash.

=item B<values>

Returns the list of values in the hash.

=item B<kv>

Returns the key, value pairs in the hash as array references.

=item B<elements>

Returns the key, value pairs in the hash as a flattened list..

=item B<delete>

Removes the element with the given key.

=item B<clear>

Unsets the hash entirely.

=item B<set>

Sets the element in the hash at the given key to the given value.

=item B<accessor>

If passed one argument, returns the value of the requested key. If passed two
arguments, sets the value of the requested key.

=back

=head1 METHODS

=over 4

=item B<meta>

=item B<method_provider>

=item B<has_method_provider>

=back

=head1 BUGS

All complex software has bugs lurking in it, and this module is no
exception. If you find a bug please either email me, or add the bug
to cpan-RT.

=head1 AUTHOR

Stevan Little E<lt>stevan@iinteractive.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2007-2009 by Infinity Interactive, Inc.

L<http://www.iinteractive.com>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
