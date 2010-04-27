use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
                                  module_name        => 'threads::variables::reap::attr',
                                  license            => 'perl',
                                  dist_author        => q{Jens Rehsack <rehsack@cpan.org>},
                                  dist_version_from  => 'lib/threads/variables/reap/attr.pm',
                                  build_requires     => { 'Test::More' => 0, },
                                  add_to_cleanup     => ['threads-variables-reap-attr-*'],
                                  create_makefile_pl => 'traditional',
                                  requires           => {
                                                'Attribute::Lexical'       => 0.002,
                                                'threads::variables::reap' => 0.05,
                                                perl                       => 5.008,
                                              },
                                  recommends => { threads => 0, },
                                );

$builder->create_build_script();
