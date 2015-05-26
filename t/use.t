use Test::More;

use_ok('Alien::ZMQ4');

my $u = Alien::ZMQ4->new;

like( $u->libs, qr/-lzmq/ );

done_testing;
