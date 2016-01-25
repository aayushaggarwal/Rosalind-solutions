#!/usr/bin/perl
my $input;

my $dna;
my $count1=0;
my $total=0;
print "Enter the dna  file containing sequence only with complete address like(/usr/desktop/abc)\n";
 $input =  <STDIN>;                                                 #asking for input file#
 chomp($input);
 print "you have entered the file \t ' $input ' ";
 print  "\n Total no nucleotides is in nt.txt\n"; 
   my $IN = IO::File->new("$input", 'r');                     #opening input  file for reading#
   my $OUT = IO::File->new('nt.txt', 'w');    #opening output file for writing#
   
  while(my $line=$IN->getline)
    {
     @dna=split("",$line);
     $count1=@dna;
     $total=$total+$count1;
    }
    $OUT->print("$total");
    