use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Net::PJLink',
    AUTHOR              => q{Kyle Emmons <kemmons@nkcsd.k12.mo.us>},
    VERSION_FROM        => 'lib/Net/PJLink.pm',
    ABSTRACT_FROM       => 'lib/Net/PJLink.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More'       => 0,
        'Exporter'         => 0,
        'Digest::MD5'      => 0,
        'IO::Socket::INET' => 0,
        'IO::Select'       => 0,
        'Switch'           => 0,
        'Carp'             => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Net-PJLink-*' },
);
