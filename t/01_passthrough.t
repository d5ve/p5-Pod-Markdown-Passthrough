use strict;
use Test::More 0.98;

use File::Spec ();
use FindBin qw($Bin);
FindBin::again();

use Pod::Markdown::Passthrough;

my $parser = Pod::Markdown::Passthrough->new();

ok($parser->isa('Pod::Markdown::Passthrough'), "Constructor works and object isa 'Pod::Markdown::Passthrough'");
ok($parser->isa('Pod::Markdown'), "Object also isa 'Pod::Markdown'");

my $testfile = File::Spec->catfile($Bin, 'testfile.md');
my $expected = do { local ( @ARGV, $/ ) = $testfile; <> };

$parser->parse_from_file($testfile);
my $parsed = $parser->as_markdown();

is( $parsed, $expected, 'parse_from_file() then as_markdown() return the raw markdown');

done_testing;
