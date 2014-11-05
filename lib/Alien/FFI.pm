package Alien::FFI;

use strict;
use warnings;
use base qw( Alien::Base );

# ABSTRACT: Build and make available libffi
our $VERSION = '0.01'; # VERSION


1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Alien::FFI - Build and make available libffi

=head1 VERSION

version 0.01

=head1 SYNOPSIS

In your C<Build.PL>:

 use Alien::FFI;
 use Module::Build;
 
 my $build = Module::Build->new(
   ...
   extra_compiler_flags => Alien::FFI->cflags,
   extra_linker_flags   => Alien::FFI->libs,
   ...
 );
 
 $build->create_build_script;

In your L<FFI::Raw> script:

 use Alien::FFI;
 use FFI::Raw;
 
 my($dll) = Alien::FFI->dynamic_libs;
 FFI::Raw->new($dll, '...', ...);

=head1 DESCRIPTION

This distribution installs libffi so that it can be used by other Perl distributions.  If already
installed for your operating system, and it can be found, this distribution will use the libffi
that comes with your operating system, otherwise it will download it from the Internet, build and
install it fro you.

=head1 AUTHOR

Graham Ollis <plicease@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
