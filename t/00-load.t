use strict;
use warnings FATAL => 'all';
use Test::More;

use Try::Tiny;
use v5.8;

use FindBin;
use lib "$FindBin::Bin/lib";

plan tests => 2;
BEGIN {
	use_ok( 'LWP::Protocol::GHTTP' ) || BAIL_OUT("Can't use LWP::Protocol::GHTTP");
}

can_ok('LWP::Protocol::GHTTP', qw(request));
