use strict;
use warnings;

use Locale::Maketext::Test;
use List::Util qw(uniq);
 
my $test = Locale::Maketext::Test->new(directory => 'src/locales');
my $rslt = $test->testlocales();
use Data::Dumper;
print Dumper($rslt);

