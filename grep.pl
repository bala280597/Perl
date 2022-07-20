use strict;
use warnings;
use Data::Dumper;
use Getopt::Std;

$|=1;
use LWP::Simple;

sub main {
  my %opts;
  getopts('d:r:',\%opts);
  if(!checkusage(\%opts)){
    usage();
  }
  my $input_dir = $opts{'d'};
  my @files = get_dir($input_dir);
  print Dumper(\@files);
 }

sub get_dir{
  my $input_dir = shift;
  unless(opendir(INPUTDIR, $input_dir)){
     die "\n Unable to open dir";
  }
  my @files = readdir(INPUTDIR);
  closedir(INPUTDIR);
  
  @files = grep(/\.csv$/,@files);
  return @files;
  
  #print " Input Dir : $input_dir \n";
}

sub checkusage {
  my $opt_ref = shift;
  my $d = $opt_ref->{'d'};
  my $r = $opt_ref->{'r'};
  
  unless(defined($d)) {
	return 0;
  }

  return 1;
}

sub usage {
  print <<USAGE;
  usage: perl main.pl -d directory
         -r <filename>  specify filename to parse
USAGE

  exit();
}

main ();
