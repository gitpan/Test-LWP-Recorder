
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  'build_requires' => {
    'English' => '0',
    'File::Find' => '0',
    'File::Temp' => '0',
    'LWPx::Record::DataSection' => '0',
    'Module::Build' => '0.3601',
    'Test::More' => '0.88'
  },
  'configure_requires' => {
    'Module::Build' => '0.3601'
  },
  'dist_abstract' => 'Create an LWP UserAgent that records and plays back sessions',
  'dist_author' => [
    'Edward Allen <ealleniii@cpan.org>'
  ],
  'dist_name' => 'Test-LWP-Recorder',
  'dist_version' => '0.1.0',
  'license' => 'perl',
  'module_name' => 'Test::LWP::Recorder',
  'recommends' => {},
  'recursive_test_files' => 1,
  'requires' => {
    'Carp' => '0',
    'Digest::MD5' => '0',
    'File::Slurp' => '0',
    'File::Spec' => '0',
    'HTTP::Response' => '0',
    'HTTP::Status' => '0',
    'LWP::UserAgent' => '0',
    'List::Util' => '0',
    'perl' => '5.006'
  },
  'script_files' => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
