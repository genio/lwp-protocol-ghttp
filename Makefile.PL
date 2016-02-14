use 5.008001;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'LWP::Protocol::GHTTP',
    AUTHOR           => q{Chase Whitener <cwhitener@gmail.com>},
    VERSION_FROM     => 'lib/LWP/Protocol/GHTTP.pm',
    ABSTRACT_FROM    => 'lib/LWP/Protocol/GHTTP.pm',
    LICENSE          => 'perl',
    META_MERGE   => {
        dynamic_config => 0,
        'meta-spec' => {version => 2},
        prereqs => {runtime => {requires => {perl => '5.010001'}}},
        resources => {
            bugtracker  => {web =>'http://github.com/genio/lwp-protocol-ghttp/issues'},
            homepage    => 'http://github.com/genio/lwp-protocol-ghttp',
            repository  => {
                type => 'git',
                url => 'http://github.com/genio/lwp-protocol-ghttp.git',
                web => 'http://github.com/genio/lwp-protocol-ghttp',
            },
        },
        no_index => {directory => ['t']}
    },
    BUILD_REQUIRES => {
        'Test::More' => 0,
        'Test::Pod' => 0,
        'Test::Pod::Coverage' => 0,
        'Test::LWP::UserAgent' => 0,
    },
    PREREQ_PM => {
        'HTTP::GHTTP' => 1.07,
        'HTTP::Message' => 6.0,
        'LWP::UserAgent' => 6.0,
        'Try::Tiny' => 0.2,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'LWP-Protocol-GHTTP*' },
    test => {TESTS => 't/*.t'},
);
