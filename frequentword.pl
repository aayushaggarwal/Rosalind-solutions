#!/usr/bin/perl
my $input;
my $k=0;
my @kmer;
my $i;
my $m;
my $j=0;
my $d=0;
my $c=0;
my $count=0;
my $total=0;
my ($final,$temp);
my @kmer_arr;

use Class::Struct;
struct( kmerstruct => 
{
count4 => '$',   
skmer => '@',  
});

print "Enter the dna  file containing sequence only with complete address like(/usr/desktop/abc)\n";
 $input =  <STDIN>;                                                 #asking for input file#
 chomp($input);

my $IN = IO::File->new("$input", 'r');                     #opening input  file for reading#


#print "Enter the dna  sequence";
 #$input =  <STDIN>;                                                 #asking for input DNA sequence#
 
 print "Enter the integer k";
 $k =  <STDIN>;                                                 #asking for integer k#
 chomp($k);

while(my $line=$IN->getline)
    {
     $temp=$line;
     $final=$final.$temp;    
     }     
my    @dna=split("",$final);
     $count=@dna;
  print "COUNT  $count\n";
  
  
 for($c=0;$c<$count;$c++)
  {
               for($j=0;$j<$k;$j++)
               {
                    $kmer[$j]=$dna[$c+$j];
                }
                
my $count3=slider( @kmer);

$kmer_arr[$c] = kmerstruct->new( count4 => $count3,
                                                                              skmer => \@kmer);                                                      
}
 for(my $n=0;$n<$count;$n++)
  {
 print "outkmer ",$kmer_arr[$n]=>%$skmer,"\t ",$kmer_arr[$n]=>%$count4, "\t \n";
  }
  
  
  sub slider   #function to tell how many times a kmer appear in the given dna #
 { 
    my $b=0;
    my $count1;
    my $count2=0;
     my @kmer1=@_;
     my $count1=@kmer1;
        
      
     for($d=0;$d<$count;$d++)
            {
                            for($m=0;$m<$k;$m++)
                            { 
                                         if( $dna[$m+$d] eq $kmer1[$m])
                                         {
                                         $b++;
                                          }                             
                              }
                              if($b eq $k)
                              {
                               $count2++;
                               }
                              $b=0;
             }
  
     return $count2;
  }
  
