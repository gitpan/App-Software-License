
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'App-Software-License',
  NAME      => 'App::Software::License',
  AUTHOR    => 'Florian\ Ragwitz\ \<rafl\@debian\.org\>',
  ABSTRACT  => 'commandline interface to Software::License',
  VERSION   => '0.01',
  EXE_FILES => [ qw(bin/software-license) ],
  (eval { ExtUtils::MakeMaker->VERSION(6.21) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "MooseX::Getopt" => '0',
    "namespace::clean" => '0',
    "MooseX::SimpleConfig" => '0',
    "MooseX::Types::Moose" => '0',
    "File::HomeDir" => '0',
    "Software::License" => '0',
    "File::Spec::Functions" => '0',
    "Moose" => '0',
  },
);
