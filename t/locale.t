use strict;
use warnings;

use Test::More;

use Locale::Maketext::Test;
use List::Util qw(uniq);
 
my $test = Locale::Maketext::Test->new(directory => 'src/locales');
my $rslt = $test->testlocales();

# These are translations that we do not expect to be complete yet. We'll
# still include them in the output, but they should not cause the Travis
# run to fail.
my %skip_country = map {; $_ => 1 } qw(de es fr it pt th vi);

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
    my @important;
    for my $failed_country (sort +uniq keys(%{$rslt->{warnings}}), keys(%{$rslt->{errors}})) {
        subtest $failed_country => sub {
            TODO: {
                local $TODO = $skip_country{$failed_country} ? 'incomplete translations for ' . $failed_country : undef;
                for my $err (@{$rslt->{errors}{$failed_country} // []}) {
                    my $msg = "error - $failed_country - " . $remap->($err);
                    fail $msg if $msg =~ /Malformed UTF-8/;
                    push @important, $msg unless $TODO;
                }
                for my $warn (@{$rslt->{warnings}{$failed_country} // []}) {
                    my $msg = "warning - $failed_country - " . $remap->($warn);
                    fail $msg if /Malformed UTF-8/;
                    push @important, $msg unless $TODO;
                }
            }
            ok(1,'dummy');
            done_testing;
        }
    }
    #diag "The following issues affect our main languages and need fixing:\n", explain(\@important) if @important;
    # diag explain $rslt;
}

done_testing;

