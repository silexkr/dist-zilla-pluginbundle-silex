requires "Dist::Zilla" => "5";
requires "Dist::Zilla::Plugin::ReadmeAnyFromPod" => "0.133360";
requires "Dist::Zilla::PluginBundle::DAGOLDEN" => "0.062";
requires "Dist::Zilla::Role::PluginBundle::PluginRemover" => "0";
requires "Dist::Zilla::Util" => "0";
requires "List::MoreUtils" => "0";
requires "Moose" => "0.99";
requires "Pod::Weaver::PluginBundle::DAGOLDEN" => "0";
requires "autodie" => "2.00";
requires "namespace::autoclean" => "0.09";
requires "perl" => "5.006";

on 'test' => sub {
  requires "ExtUtils::MakeMaker" => "0";
  requires "File::Spec::Functions" => "0";
  requires "List::Util" => "0";
  requires "Test::More" => "0";
  requires "version" => "0";
};

on 'test' => sub {
  recommends "CPAN::Meta" => "0";
  recommends "CPAN::Meta::Requirements" => "2.120900";
};

on 'configure' => sub {
  requires "ExtUtils::MakeMaker" => "6.17";
};

on 'develop' => sub {
  requires "Dist::Zilla" => "5.013";
  requires "Dist::Zilla::PluginBundle::SILEX" => "0";
  requires "File::Spec" => "0";
  requires "File::Temp" => "0";
  requires "IO::Handle" => "0";
  requires "IPC::Open3" => "0";
  requires "Pod::Coverage::TrustPod" => "0";
  requires "Test::CPAN::Meta" => "0";
  requires "Test::More" => "0";
  requires "Test::Pod" => "1.41";
  requires "Test::Pod::Coverage" => "1.08";
};
