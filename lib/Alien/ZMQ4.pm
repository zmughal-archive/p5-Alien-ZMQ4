package Alien::ZMQ4;

use strict;
use warnings;

use parent 'Alien::Base';

sub Inline {
	return unless $_[-1] eq 'C'; # Inline's error message is good
	my $self = __PACKAGE__->new;
	+{
		LIBS => $self->libs,
		INC => $self->cflags,
		#AUTO_INCLUDE => # TODO
	};
}


1;
# ABSTRACT: Alien package for the ZMQ4 library

=pod

=head1 Inline support

This module supports L<Inline's with functionality|Inline/"Playing 'with' Others">.

=head1 SEE ALSO

L<ZeroMQ|http://zeromq.org/>

=cut
