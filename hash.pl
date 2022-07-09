use strict;
use warnings;
use Data::Dumper;

$|=1;

sub main {
  my %months = (
    "Jan" => 1,
	"Oct" => 10,
	"May" => 5,
	"July" => 7,
  );
  print $months{'May'}."\n";
  
  my @months = keys %months;
  
  #for my $month(@months){
  # my $value = $months{$month};
	#print "$value\n";
  #}
  
  while(my ($key,$value) = each %months ) {
    print "$key : $value\n "
  
  }
}

main();
