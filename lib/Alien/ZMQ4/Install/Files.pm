package Alien::ZMQ4::Install::Files;

# allows other packages to use ExtUtils::Depends like so:
#   use ExtUtils::Depends;
#   my $p = new ExtUtils::Depends MyMod, Alien::ZMQ4;
# and their code will have all ZMQ4 available at C level

use strict;
use warnings;

use Alien::ZMQ4 qw(Inline);
BEGIN { *Inline = *Alien::ZMQ4::Inline }
sub deps { () }
