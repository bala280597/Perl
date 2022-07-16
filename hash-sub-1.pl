use strict;
use warnings;
use Data::Dumper;
use Getopt::Std;

$|=1;
use LWP::Simple;

sub main {
  my %opts;
  getopts('f:b:c:',\%opts);
  if(!checkusage(\%opts)){
    usage();
  }
 }
  
sub checkusage {
  my $opt_ref = shift;
  my $f = $opt_ref->{'f'};
  my $b = $opt_ref->{'b'};
  my $c = $opt_ref->{'c'};
  unless(defined($c) and defined($f)) {
	return 0;
  }
  unless(defined($f =~ /\.xml$/i)){
    print "-f need to be .xml file";
    return 0;
  }
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
