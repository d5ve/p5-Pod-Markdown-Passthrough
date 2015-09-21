package Pod::Markdown::Passthrough;
use 5.008001;
use strict;
use warnings;

our $VERSION = "0.01";



1;
__END__

=encoding utf-8

=head1 NAME

Pod::Markdown::Passthrough - A passthrough mode for Pod::Markdown.

=head1 SYNOPSIS

    use Pod::Markdown::Passthrough;

    my $parser = Pod::Markdown::Passthrough->new();
    $parser->read_from_file($file_containing_markdown);
    # Outputs the raw contents of $file_containing_markdown.
    print $parser->as_markdown;

=head1 DESCRIPTION

Pod::Markdown::Passthrough is a child class of Pod::Markdown which makes the
assumption that the source file is already markdown, and performs no processing
of it at all.

github-aware CPAN module authoring tools such as L<Minilla> build README.md
from the module POD, but sometimes you want the README.md to be something
specific, and independent of the module POD.

For example, using L<Minilla>, add the following two lines to C<minil.toml> to
have the build process leave README.md untouched.

    readme_from="README.md"
    markdown_maker="Pod::Markdown::Passthrough"

=head1 LICENSE

Copyright (C) Dave Webb.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

Dave Webb E<lt>github@d5ve.comE<gt>

=cut

