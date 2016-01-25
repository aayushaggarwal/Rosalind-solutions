#!/usr/bin/perl
my $input;
my $g=0;
my $dna;
my $i;
my $t=0;
my $a=0;
my $c=0;
my $temp=0;
my $final=0;
print "Enter the dna  file containing sequence only with complete address like(/usr/desktop/abc)\n";
 $input =  <STDIN>;                                                 #asking for input file#
 chomp($input);
 print "you have entered  \t ' $input ' ";
 print  "\n reverse complement in complement.txt\n"; 
  my $IN = IO::File->new("$input", 'r');                     #opening input  file for reading#
  my $OUT = IO::File->new('rcomplement.txt', 'w');    #opening output file for writing#
   
    while(my $line=$IN->getline)

    {
     $temp=$line;
     $final=$final.$temp;
    
     }
    $final =~ tr/ATGC/TACG/;
    $final=reverse($final);
    $OUT->print("$final");
