use strict;
use warnings;
 
$|=1;

sub main {
  my $output = 'output.txt';
  my $file = 'url.pl';
  
  open ( INPUT , $file ) or die "cannot open file" ;
  open ( OUTPUT , '>'.$output ) or die("Cannot create file: $output \n");
  
  while (my $line = <INPUT>){
    if ($line =~ /print/) {
	  $line =~ s/print/Print/ig;
	  print OUTPUT "$line \n";
	}
  }
  
  close (INPUT);
  close ( OUTPUT );
}

main();
