#!/usr/bin/perl -w

use Math::SigFigs;
$runtests=shift(@ARGV);
if ( -f "t/test.pl" ) {
  require "t/test.pl";
} elsif ( -f "test.pl" ) {
  require "test.pl";
} else {
  die "ERROR: cannot find test.pl\n";
}

print "CountSigFigs...\n";

$tests="

0.003
1

0.103
3

1.0500
5

11.
2

11
2

110
2

110.
3

0
0

0.0
0

";

test_Func(\&CountSigFigs,$tests,$runtests);

1;

# Local Variables:
# mode: cperl
# indent-tabs-mode: nil
# cperl-indent-level: 3
# cperl-continued-statement-offset: 2
# cperl-continued-brace-offset: 0
# cperl-brace-offset: 0
# cperl-brace-imaginary-offset: 0
# cperl-label-offset: -2
# End:

