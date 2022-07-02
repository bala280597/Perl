use strict;
use warnings;

$|=1;

sub main {
  
  # \d digit
  # \s space
  # \S nonspace
  # \w alphanumeric
  # * zero or more of preceding
  # + one or more of preceding
  # *? zero or more with minimum - Non Greedy
  # +? one or more with minimum - Non Greedy
  # {5} - 5 of precceding
  # { 3,6} - atleast 3 and max 6
  # {3,} - atleast 3
  
  
  #my $text = 'I am   115 years old 012.';
  #my $text = 'DE$12345';
  #if ($text =~ /(DE\$\d{2})/){
  #print "Matched : '$1' \n";
  #}
  my @emails = ('bala@gmail.com','@gmail.com','bala@');
  for my $email(@emails){
    #print "Email: $email\n";
	if ($email =~ /(\w+\@\w+\.\w+)/){
	  print "Email : '$1' \n";
	}
  }
}

main();
