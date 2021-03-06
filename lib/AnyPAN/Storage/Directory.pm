package AnyPAN::Storage::Directory;
use strict;
use warnings;
use utf8;

use Path::Tiny ();

sub new {
    my ($class, %args) = @_;
    my $path = delete $args{path};
    bless {
        path => Path::Tiny->new($path),
    } => $class;
}

sub copy {
    my ($self, $from_path, $save_key) = @_;
    my $save_path = $self->{path}->child($save_key);
    $save_path->parent->mkpath();
    $from_path->copy($save_path);
}

sub exists :method {
    my ($self, $save_key) = @_;
    my $save_path = $self->{path}->child($save_key);
    return $save_path->exists;
}

sub fetch {
    my ($self, $save_key) = @_;
    my $save_path = $self->{path}->child($save_key);
    return unless $save_path->exists;
    return $save_path;
}

1;
__END__
