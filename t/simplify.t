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

print "Simplify...\n";

$tests="

0.00
0

100
100

+ 100
100

 - 100
-100

-100.
-100.

-00100
-100

54.43
54.43

054.54
54.54

0.05
0.05

00.05
0.05

.055
.055

x.055
_undef_

";

test_Func(\&Math::SigFigs::_Simplify,$tests,$runtests);

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

