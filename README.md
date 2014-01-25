# NAME

App::Software::License - command-line interface to Software::License

# VERSION

version 0.02

# SYNOPSIS

    software-license --holder 'J. Random Hacker' --license Perl_5 --type notice

# DESCRIPTION

# ATTRIBUTES

## holder

Name of the license holder.

## year

Year to be used in the copyright notice.

## license

Name of the license to use. Must be the name of a module available under the
Software::License:: namespace. Defaults to Perl\_5.

## type

The type of license notice you'd like to generate. Available values are:

__\* notice__

This method returns a snippet of text, usually a few lines, indicating the
copyright holder and year of copyright, as well as an indication of the license
under which the software is distributed.

__\* license__

This method returns the full text of the license.

__\* fulltext__

This method returns the complete text of the license, preceded by the copyright
notice.

__\* version__

This method returns the version of the license.  If the license is not
versioned, this returns nothing.

__\* meta\_yml\_name__

This method returns the string that should be used for this license in the CPAN
META.yml file, or nothing if there is no known string to use.

This module provides a command-line interface to Software::License. It can be
used to easily produce license notices to be included in other documents.

All the attributes documented below are available as command-line options
through [MooseX::Getopt](https://metacpan.org/pod/MooseX::Getopt) and can also be configured in
[".software\_license.conf" in $HOME](https://metacpan.org/pod/$HOME#software_license.conf) though [MooseX::SimpleConfig](https://metacpan.org/pod/MooseX::SimpleConfig).

# AUTHOR

Florian Ragwitz <rafl@debian.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2009 by Florian Ragwitz.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

# CONTRIBUTORS

- Karen Etheridge <ether@cpan.org>
- Randy Stauner <rwstauner@cpan.org>
