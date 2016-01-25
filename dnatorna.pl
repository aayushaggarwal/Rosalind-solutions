#!/usr/bin/perl
my $input;
my $g=0;
my $dna;
my $i;
my $t=0;
my $a=0;
my $c=0;
my $count1=0;
my $total=0;
print "Enter the dna  file containing sequence only with complete address like(/usr/desktop/abc)\n";
 $input =  <STDIN>;                                                 #asking for input file#
 chomp($input);
 print "you have entered the file \t ' $input ' ";
 print  "\n dna to  rna in dnatorna.txt\n"; 
   my $IN = IO::File->new("$input", 'r');                     #opening input  file for reading#
   my $OUT = IO::File->new('dnatorna.txt', 'w');    #opening output file for writing#
   
  while(my $line=$IN->getline)

    {
     $line =~ tr/T/U/;
     print("$line");
     $OUT->print("$line");
    }
    