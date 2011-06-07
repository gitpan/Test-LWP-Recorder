
use strict;
use warnings;

use 5.006;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'Create an LWP UserAgent that records and plays back sessions',
  'AUTHOR' => 'Edward Allen <ealleniii@cpan.org>',
  'BUILD_REQUIRES' => {
    'English' => '0',
    'File::Find' => '0',
    'File::Temp' => '0',
    'LWPx::Record::DataSection' => '0',
    'ExtUtils::MakeMaker' => '6.30',
    'Test::More' => '0.88'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.30'
  },
  'DISTNAME' => 'Test-LWP-Recorder',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'Test::LWP::Recorder',
  'PREREQ_PM' => {
    'Carp' => '0',
    'Digest::MD5' => '0',
    'File::Slurp' => '0',
    'File::Spec' => '0',
    'HTTP::Response' => '0',
    'HTTP::Status' => '0',
    'LWP::UserAgent' => '0',
    'List::Util' => '0'
  },
  'VERSION' => '0.1.0',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



