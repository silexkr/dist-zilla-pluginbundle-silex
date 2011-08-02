package Dist::Zilla::Plugin::Silex::Catalyst;
# ABSTRACT: dist zilla plugin for silex catalyst web application
use Moose;

with qw( Dist::Zilla::Role::TextTemplate );
extends qw( Dist::Zilla::Plugin::Catalyst::New );

use Catalyst::Helper::Silex::Fey::ORM;
use Catalyst::Helper::Silex::PSGI;
use Catalyst::Helper::Silex::YAML;
use Dist::Zilla::Catalyst::Helper;

after make_module => sub {
	my ( $self ) = @_;

    # format $name to what C::Helper wants
    my $name = $self->zilla->name;
    $name =~ s/-/::/g;

    # turn authors into a scalar it's what C::Helper wants
    my $authors = join( ',', @{$self->zilla->authors} );

    my $helper
        = Dist::Zilla::Catalyst::Helper->new({
            name            => $name,
            author          => $authors,
            _zilla_gatherer => $self,
        });
    $helper->{app} = $name;

    # $name here is for backcompat in older versions of C::Devel
    use File::Spec::Functions;

    $self->log_debug('generating yaml configuration');
    Catalyst::Helper::Silex::YAML->mk_stuff($helper);

    $self->log_debug('generating psgi script');
    Catalyst::Helper::Silex::PSGI->mk_stuff($helper);

    $self->log_debug('generating fey orm modules');
    Catalyst::Helper::Silex::Fey::ORM->mk_stuff($helper);
};

__PACKAGE__->meta->make_immutable;
no Moose;
1;
__END__
