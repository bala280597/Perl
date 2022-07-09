use strict;
use warnings;

use Data::Dumper;

sub main {
my @lines = ('dog','cat','rabbit');
my @fruits = ('apple','orange','fig');
my @values;
push @values,\@lines;
push @values,\@fruits;
#print Dumper(@values);
my $item = \@fruits;

print "Animal: " . $item -> [0] . "\n";

}

main();
