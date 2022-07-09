use strict;
use warnings;

use Data::Dumper;

$|=1;

sub main {
  my $input = 'bala.csv';
  unless(open(INPUT,$input)){
    die "\n Cannot open $input \n";
  }
  <INPUT>;
  my @lines;
  #my $count = 0;
  while (<INPUT>){
    chomp $_;
    #print " '$_'\n";
    my @values = split(/\s*,\s*/,$_);
    #print $values[0]."\n" ;
	#print Dumper(@values);
	#$lines[$count] = $_;
	#$count++;
	push @lines,$_;
  }
  foreach my $newline(@lines) {
    print "$newline"."\n" ;

  }
  close INPUT;

}

main();
