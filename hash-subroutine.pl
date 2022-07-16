use strict;
use warnings;
use Data::Dumper;
use Getopt::Std;

$|=1;
use LWP::Simple;

sub main {
  my %opts;
  getopts('a:f:b:cd:',\%opts);
  if(!checkusage(\%opts)){
    usage();
  }
  
  #use hash directly
  #print $opts{'f'} . "\n";
  
  #use hash with reference
  #my $opts_ref = \%opts;
  #print $opts_ref->{'f'}."\n";
}

sub checkusage {
  #my %opts = @_;
  #print $opts{'f'};
  
  #print Dumper(%opts);
  
  my $opts_ref = shift;
  print "File: $opts_ref->{'f'} \n Build type : $opts_ref->{'b'} ";
  
  return 1;
}

sub usage {
  print <<USAGE;
  usage: perl main.pl -f <filename>
         -f <filename>  specify filename to parse
USAGE

  exit();
}

main ();
