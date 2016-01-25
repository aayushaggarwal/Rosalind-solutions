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
 print  "\n GC content in gc content.txt\n"; 
   my $IN = IO::File->new("$input", 'r');                     #opening input  file for reading#
   my $OUT = IO::File->new('gc content.txt', 'w');    #opening output file for writing#
   
  while(my $line=$IN->getline)
    {
     @dna=split("",$line);
     $count1=@dna;
     $total=$total+$count1;
        for($i=0;$i<=$count1;$i++)
        {
               if($dna[$i] eq 'A' || $dna[$i] eq 'a')   
               {
               $a++;
               }
               elsif($dna[$i] eq 'T' || $dna[$i] eq 't')
               {
                $t++;
               }
               elsif($dna[$i] eq 'C' || $dna[$i] eq 'c')
               {
                $c++;
               } 
               elsif($dna[$i] eq 'G' || $dna[$i] eq 'g')
               {
                $g++;
               }
        }
    
    }
    $OUT->print("\nTotal no of bases : $total");
    $OUT->print("\nTotal no of A : $a");
    $OUT->print("\nTotal no of T : $t");
    $OUT->print("\nTotal no of C : $c"); 
     $OUT->print("\nTotal no of G : $g");
     my $gc= ($g+$c)*100/$total;
      $OUT->print("\nGC content : $gc %");