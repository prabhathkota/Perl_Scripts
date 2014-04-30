#!/usr/intel/bin/perl

use strict;
use warnings;

#my $filename = 'input.txt';
#my $filename_op = 'output.txt';


my ($a, $b, $c);

print "Enter input file : ";
chomp ($a = <> );

print "Enter output file : ";
chomp ($b = <> );

&read_write($a, $b);

sub read_write {

my $filename = shift;
my $filename_op = shift;

open (FILE_WRITE, ">$filename_op");

#"FILE_READ" is File Handle
open (FILE_READ, $filename);

#Check if file is present in the path or not
unless (-e $filename) {
    print "\n File Doesn't Exist!" . $filename;
    exit;
} 

while (my $each_line = <FILE_READ>) {
   
   #"chomp" removes the new lines characters like "\n" at the end of each line 
   chomp $each_line;   
   
   print "Hello.." .  $each_line . "\n";
   print FILE_WRITE "Hello.." .  $each_line . "\n";
   
}

close (FILE_READ);
close (FILE_WRITE); 

}

print "Enter Read again output file : ";
chomp ($c = <> );

&read_again($c);

sub read_again {

my $filename_again_read = shift;

unless (-e $filename_again_read) {
    print "\n File Doesn't Exist!" . $filename_again_read;
    exit;
} 

open (FILE_READ_AGAIN, $filename_again_read); 

while (my $each_line = <FILE_READ_AGAIN>) {
   
   #"chomp" removes the new lines characters like "\n" at the end of each line 
   chomp $each_line;   
   
   print "Again..." .  $each_line . "\n";
      
}

close (FILE_READ_AGAIN);
}

&dead_end;

sub dead_end {
    print "\n Came inside dead_end";
}	


print "\n Came to last line of program";
