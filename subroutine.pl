use strict;
use warnings;
use Data::Dumper;
use Getopt::Std;

$|=1;
use LWP::Simple;

sub main {
  my %opts;
  getopts('a:f:b:cd:',\%opts);
  #print Dumper(%opts);
  #my $file = $opts{'f'};
  #print "File: $file";
  if(!checkusage("Hello",9)){
    usage();
  }
}

sub checkusage {
  #print Dumper(@_);
  #print $_[0];
  
  #my ($name,$number) = @_;
  #print "$name number is $number";
  my $name = shift @_;
  my $number = shift @_;
  print "$name number is $number";
  return 1;
}

sub usage {
  print <<USAGE;
  usage: perl main.pl -f <filename>
         -f <filename>  specify filename to parse
USAGE
=pod
   Multi line parser
=cut
  exit();
}

main ();
