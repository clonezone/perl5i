#!/usr/bin/perl

use perl5i::latest;
use Test::More;

{
    package Foo;
    sub bar { 42 }
}

my $class = "Foo";
TODO: {
    local $TODO = "autobox can() bug [github 112]";
    ok $class->can("bar"),                  "autoboxing vs can()";
}
ok $class->UNIVERSAL::can("bar"),       "  no really, it should work";

done_testing();
