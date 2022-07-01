use strict;
use warnings;

sub main{
my @files = ('./image.png',
  './array.pl','./missing.txt'
);

foreach my $file(@files) {
  if ( -f $file){
  print "Found: $file \n"
  }
  else {
  print "File not found: $file \n";
  }
 }
}


main();
