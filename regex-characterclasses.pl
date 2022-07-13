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
  my $content = "The 39 steps BALAmurugan_2805 ==%== ABBCCBBACCBB";
  if ($content =~ /([^0-9T\s]{10,})/) {
    print "Matched '$1'";
  }
  else {
    print " Not Matched";
  }



}

main ();
