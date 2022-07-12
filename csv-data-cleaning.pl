use strict;
use warnings;

$|=1;

use Data::Dumper;

sub main {
  
  my $input = 'bala.csv';
  unless(open(INPUT,$input)){
    die "Can't open file : $input ";
  }
  <INPUT>;
  my @data_array;
  LINE: while(my $line = <INPUT>){
    chomp $line;
	$line =~ s/^\s*|\s*$|\?|approx\.//g;
	#$line =~ s/\s*$//;
	$line =~ /\S+/ or next;
	#my ($name,$payment,$date) = split /\s*,\s*/,$_;
	my @values = split /\s*,\s*/,$line;
	if(scalar(@values) < 3 ) {
	  print "Invalid line: $line \n";
      next;	  
	}

    foreach my $lines(@values) {
	  if ( $lines eq '') {
	    print "Invalid line : $line \n";
		next LINE;
	  }
	}
    my ($name,$payment,$date) = split /\s*,\s*/,$line;
    my %values = ("Name" => $name,"Payment" => $payment,"Date" => $date,);
	push @data_array, \%values;
  }
  close INPUT;
  
  foreach my $line(@data_array){
    print Dumper($line);
  }
  
  print " BM: '$data_array[3]{'Name'}' ; '$data_array[3]{'Payment'}' ; '$data_array[3]{'Date'}' \n";
  #foreach my $data(@data_array){
  #  print $data -> {"Name"} . "\n";
  #}
}

main();
