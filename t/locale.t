use strict;
use warnings;

use Test::More;

use Locale::Maketext::Test;
 
my $test = Locale::Maketext::Test->new(directory => 'src/locales');
my $rslt = $test->testlocales();
if($test->{status}) {
    pass('all translations ok');
} else {
    my $remap = sub {
        my $txt = shift;
        for($txt) {
            s/Unexpected error:\nmaketext doesn't know how to say:\n(.*)\nas needed at \S+ line \d+\.\n/maketext failed on $1/s;
        }
        return $txt;
    };
    for my $failed_country (sort keys %{$rslt->{errors}}) {
        for my $err (@{$rslt->{errors}{$failed_country}}) {
            fail("error - $failed_country - " . $remap->($err));
        }
    }
    for my $failed_country (sort keys %{$rslt->{warnings}}) {
        for my $warn (@{$rslt->{warnings}{$failed_country}}) {
            fail("warning - $failed_country - " . $remap->($warn));
        }
    }
    # diag explain $rslt;
}

done_testing;

