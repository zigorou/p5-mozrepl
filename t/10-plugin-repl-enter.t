use Test::More tests => 3;
use MozRepl;

my $repl = MozRepl->new;

SKIP: {
    eval { $repl->setup( { plugins => { plugins => [qw/Repl::Enter/] } } ); };

    skip( "MozRepl is not started or MozLab is not installed." . $@, 3 ) if ($@);

    ok($repl->can('repl_enter'));
    like($repl->repl_enter( { source => 'window' } ), qr/^\[object ChromeWindow\]/);
    like($repl->repl_enter( { source => 'document' } ),qr/^\[object XULDocument\]/);
}
