use strict;
use warnings;

$|=1;
use LWP::Simple;


# [0-9] - any number 
# [A-Z] -Upper case letter
# [A-Za-z_0-9]
# [\=\%] - alternatives - special character 
# [ABC] - Match of alternatives
# [^0-9T\s] - Match anythng except specified character
sub main {
  my $content = get("http://caveofprogramming.com");
  unless(defined($content)){
    die " Unreachable URL \n";
  }
  while ($content =~ m|<\s*a\s+[^>]*href\s*=\s*['"]([^>'"]+)['"]|sig) {
    print "Match: $1 \n ";
  
  }

}

main ();
