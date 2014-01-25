use strict;
use warnings;
use Test::More;

use App::Software::License;

# Make this a no-op to avoid checking the file system.
App::Software::License->meta->make_mutable;
App::Software::License->meta->add_around_method_modifier(
  get_config_from_file => sub {},
);
App::Software::License->meta->make_immutable;

local @ARGV = ('--holder=FooBar');

my $app = App::Software::License->new_with_options;

like $app->notice, qr/^\QThis software is Copyright (c)\E/i,
  'Copyright notice generated';

done_testing;
