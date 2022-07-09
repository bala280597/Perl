use strict;
use warnings;

$|=1;

use Data::Dumper;

sub main {
  my %foods = ('dog' => 'treat','cat' => 'milk','bird' => 'seeds');
  
  my @animals;
  
  push @animals,\%foods;
  
  print Dumper(@animals);
}

main();
