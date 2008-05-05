#!/usr/bin/perl -w

use Math::SigFigs qw(:all);
$runtests=shift(@ARGV);
if ( -f "t/test.pl" ) {
  require "t/test.pl";
} elsif ( -f "test.pl" ) {
  require "test.pl";
} else {
  die "ERROR: cannot find test.pl\n";
}

print "subSF...\n";

$tests="

112.345
-10
120

112.345
-11
123.

112.345
-11.1
123.4

112.345
-11.11
123.46

112.345
10
100

112.345
11
101.

112.345
11.1
101.2

112.345
11.11
101.24

+3.20
+3.89
-0.69

+3.89
+3.20
0.69

3.20
3.89
-0.69

3.89
3.20
0.69

-3.20
-3.89
0.69

-3.89
-3.20
-0.69

";

test_Func(\&subSF,$tests,$runtests);

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

