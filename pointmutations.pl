#!/usr/bin/perl
my $input;

my $dna;
my $i;
my $temp1=0;
my $temp2=0;
my $c=0;
my $pm;
print "Enter the  first dna  file containing sequence only with complete address like(/usr/desktop/abc)\n";
my  $input1 =  <STDIN>;                                                 #asking for input file1#
 chomp($input1);

print "Enter the  second dna  file containing sequence only with complete address like(/usr/desktop/abc)\n";
 my $input2 =  <STDIN>;                                                 #asking for input file2#
 chomp($input2);

 print "you have entered  \t ' $input1 $input2 ' ";
 print  "\n no of point mutations in pointmutations.txt\n"; 
  my $INA = IO::File->new("$input1", 'r');                     #opening input  file for reading#
  my $INB = IO::File->new("$input2", 'r');                     #opening input  file for reading#
  my $OUT = IO::File->new('pointmutations.txt', 'w');    #opening output file for writing#
   
    while((my $line1=$INA->getline)  &&  (my $line2=$INB->getline))
    {
     my  @dna1=split("",$line1);
     my @dna2=split("",$line2);
    my $count1=@dna1;
    my $count2=@dna2;
    $OUT->print("$line1");
    if($count1 < $count2)
    {
     
         for(my $i=0;$i <=$count1 ;$i++)
            {
              $temp1=$temp1 +1;;
               if($dna1[$i] eq $dna2[$i])
               {
                $OUT->print(" ");
               }
               else
               {
               $OUT->print("|"); 
               $pm=$pm+1;
               }
            }
    }
    else
    {
          for(my $i=0;$i <=$count2;$i++)
            {
              $temp2=$temp2+1;
               if($dna1[$i] eq $dna2[$i])
               {
                $OUT->print(" ");
               }
               else
               {
               $OUT->print("|"); 
               $pm=$pm+1;
               }
            }
    }
     $OUT->print("\n$line2"); 
    }
    $OUT->print("Total no point mutations $pm");
    print "$temp1 $temp2";
    