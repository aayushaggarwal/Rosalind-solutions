#!/usr/bin/perl
my $input;
my $input2;
my $temp=0;
my $temp1=0;
my $temp2=0;
my $final;
my $final2;
my $i;
my $j;
my $k=0;
print "Enter the dna  file containing sequence only with complete address like(/usr/desktop/abc)\n";
 $input =  <STDIN>;                                                 #asking for input file#
 chomp($input);
 print "Enter the motif file containing sequence only with complete address like(/usr/desktop/abc)\n";
 $input2 =  <STDIN>;                                                 #asking for input file#
 chomp($input2);
 print "you have entered  \t ' $input  $input2' ";
 print  "\n motif info.  in motif.txt\n"; 
  my $IN = IO::File->new("$input", 'r');                     #opening input  file for reading#
  my $IN2 = IO::File->new("$input2", 'r');                     #opening input  file for reading#
  my $OUT = IO::File->new('motif.txt', 'w');    #opening output file for writing#
   
    while(my $line=$IN->getline)
    {
     $temp=$line;
     $final=$final.$temp;    
     }
    while(my $line2=$IN2->getline)
    {
     $temp2=$line2;
     $final2=$final2.$temp2;    
     }

my @dna=split("",$final);
my @dna2=split("",$final2);
print"\n@dna \n @dna2";
pop(@dna);
pop(@dna2);
my $count=@dna;
my $count2=@dna2;
print"$count \n $count2";
if($count < $count2)
{
 print "motif not possible";
 $OUT->print ("motif not possible");
 }
 else
 {
             
                     for($j=0;$j<=$count;$j++)
                     {
                      if($dna[$j] eq $dna2[0])
                           {
                                  for($k=0;$k<=$count2;$k++)
                                  {
                                       if($dna[$j+$k] eq $dna2[0+$k])
                                          {
                                              $temp1++;
                                          }  
                                  }
                               print "\n$temp1 \t $j ";
                               if($temp1 == $count2)
                               {
                                my $pos=$j+1;
                                $OUT->print("$pos\t");
                                  print "\nmotif present";
                                }
                               $temp1=0;    
                           }
                      }
             
  }
  