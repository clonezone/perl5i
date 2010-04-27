#!perl

use perl5i::latest;
use Test::More "no_plan";

ok !eval { open my $fh, "hlaglaghlaghlagh"; 1 };

# autodie guarantees that the shell won't be involved in multi-argument system,
# even on Windows.
ok !eval { system 'haljlkjadlkjflajdf', 'blahlala'; 1; };