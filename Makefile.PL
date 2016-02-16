use 5.008001;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

# The dependency on libghttp is too flakey to smoke test
exit(0) if $ENV{AUTOMATED_TESTING}; # do not smoke

WriteMakefile(
    NAME             => 'LWP::Protocol::GHTTP',
    AUTHOR           => q{Gisle Aas <gisle@activestate.com>},
    VERSION_FROM     => 'lib/LWP/Protocol/GHTTP.pm',
    ABSTRACT_FROM    => 'lib/LWP/Protocol/GHTTP.pm',
    LICENSE          => 'perl',
    META_MERGE   => {
        dynamic_config => 0,
        'meta-spec' => {version => 2},
        prereqs => {runtime => {requires => {perl => '5.008001'}}},
        resources => {
            bugtracker  => {web =>'http://github.com/genio/lwp-protocol-ghttp/issues'},
            homepage    => 'http://github.com/genio/lwp-protocol-ghttp',
            repository  => {
                type => 'git',
                url => 'http://github.com/genio/lwp-protocol-ghttp.git',
                web => 'http://github.com/genio/lwp-protocol-ghttp',
            },
            x_MailingList => 'mailto:libwww@perl.org',
            x_IRC => 'irc://irc.perl.org/#lwp',
        },
        # x_authority => 'cpan:LWWWP',
        no_index => {directory => ['t']},
    },
    BUILD_REQUIRES => {
        'HTTP::Daemon' => 6.0,
        'Test::More' => 0,
        'Test::Pod' => 0,
        'Test::Pod::Coverage' => 0,
        'Test::LWP::UserAgent' => 0,
    },
    PREREQ_PM => {
        'HTTP::GHTTP' => 1.07,
        'HTTP::Message' => 6.0,
        'LWP' => 6.15,
        'Try::Tiny' => 0.2,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'LWP-Protocol-GHTTP*' },
    test => {TESTS => 't/*.t'},
);
