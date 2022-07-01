use strict;
use warnings;

$|=1;

sub main {
  my $file = './url.pl';
  open(INPUT,$file) or die("Input file $file not found ");
  while (my $line = <INPUT>){
    
	if ( $line =~ /print/ ){
	print "$line \n";
	}
  }
  close INPUT;
}

main()
