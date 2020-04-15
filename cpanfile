requires 'Class::Accessor::Lite';
requires 'Exception::Tiny';
requires 'Furl';
requires 'Furl::Response';
requires 'Getopt::Long', '2.36';
requires 'IO::Compress::Gzip';
requires 'IO::Uncompress::Gunzip';
requires 'List::UtilsBy';
requires 'Path::Tiny';
requires 'Pod::Usage';
requires 'Time::Moment';
requires 'URI';
requires 'URI::Escape';
requires 'feature';
requires 'parent';
requires 'perl', '5.010000';
requires 'version';

on configure => sub {
    requires 'Module::Build::Tiny', '0.035';
};

on test => sub {
    requires 'Exporter', '5.57';
    requires 'Test2::API';
    requires 'Test2::V0';
    requires 'Test::More', '0.98';
};
