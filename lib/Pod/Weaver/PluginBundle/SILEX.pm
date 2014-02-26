use strict;
use warnings;

package Pod::Weaver::PluginBundle::SILEX;
# VERSION

# Dependencies
use Moose 0.99;
use namespace::autoclean 0.09;

extends 'Pod::Weaver::PluginBundle::DAGOLDEN';

# ABSTRACT: SILEX's default Pod::Weaver config
# COPYRIGHT

1;

=for Pod::Coverage mvp_bundle_config

=head1 DESCRIPTION

This is a L<Pod::Weaver> PluginBundle.  It is roughly equivalent to the
following weaver.ini:

  [-WikiDoc]

  [@Default]

  [Support]
  perldoc = 0
  websites = none
  bugs = metadata
  bugs_content = ... stuff (web only, email omitted) ...
  repository_link = both
  repository_content = ... stuff ...

  [Contributors]

  [-Transformer]
  transformer = List

=head1 USAGE

This PluginBundle is used automatically with the C<@SILEX> L<Dist::Zilla>
plugin bundle.

It also has region collectors for:

=for :list
* requires
* construct
* attr
* method
* func

=head1 SEE ALSO

=for :list
* L<Pod::Weaver::PluginBundle::DAGOLDEN>
* L<Pod::Weaver>
* L<Pod::Weaver::Plugin::WikiDoc>
* L<Pod::Elemental::Transformer::List>
* L<Pod::Weaver::Section::Contributors>
* L<Pod::Weaver::Section::Support>
* L<Dist::Zilla::Plugin::PodWeaver>

=cut
