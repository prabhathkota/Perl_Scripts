#!/usr/intel/bin/perl

use strict;
use warnings;
use Data::Dumper;


my ($before_chop_str, $after_chop_str, $before_chop_arr_ref, $after_chop_arr_ref);

$before_chop_str = "Test chop sentence]";
$before_chop_arr_ref = ["10.", "20.", "30.", "40.", "50."];

print "\n Line Before Chop :" . $before_chop_str;
$after_chop_str = &chop_line_array($before_chop_str);
print "\n Line After Chop :" . $after_chop_str ."\n";


print "\n Array Before Chop " . Dumper($before_chop_arr_ref);
$after_chop_arr_ref = &chop_line_array($before_chop_arr_ref);
print "\n Array After Chop " . Dumper($after_chop_arr_ref) ."\n";

sub chop_line_array {
    my $input_line = shift;
   
    if (ref $input_line eq 'ARRAY') {
	if (scalar @{$input_line}) {   
	    my $return_arr_ref;
            foreach my $each_ref ( @{$input_line} ) {
                chop $each_ref; 
     	        push(@{$return_arr_ref}, $each_ref);
            }	        

	    return $return_arr_ref;
        } else {
	    return $input_line;
        }		
    } else {
        chop $input_line;
        return $input_line;
    }    
}

sub chop_file {

    my $input_file = shift;

    unless (-f $input_file) {
       return;
    }	    

}

sub read_file {
    my $input_file = shift;

    print "\n Reading File : " . $input_file;

    unless (-f "$input_file") {
        print "\n Not a File : " . $input_file;
    }

    open(IN_FILE, "<$input_file")
                 || die "Cant open file for reading: " . "$input_file";
    my @file_content = <IN_FILE>;
    close(IN_FILE);

    my @resultant_aray;

    #remove Comment lines
    foreach my $each_line (@file_content) {
        chop $each_line;

	#if ($each_line =~ /^$/) {
	#    next;
	#}

	#if ($each_line =~ /^\s*$/) {
	#next;
	    #}

	    #if ($each_line =~ /^#/) {
	    #next;
	    #}

        push(@resultant_aray, $each_line);
    }

    print "\n Total No. of Lines : " . scalar(@resultant_aray);

    return @resultant_aray;
}	

sub write_file {

    my $file_to_write = shift;
    my $file_content_ref = shift;

    print "\n Writing to File : " . $file_to_write;

    unless (-f "$file_to_write") {
        print "\n Not a File : " . $file_to_write;
    }

    open(OUT_FILE, ">$file_to_write")
                 || die "Cant open file for writing: " . "$file_to_write";


    unless (scalar @{$file_content_ref) {
      return 0;
    }  

    #remove Comment lines
    foreach my $each_line (@{$file_content_ref}) {

        #if ($each_line =~ /^$/) {
        #    next;
        #}

        #if ($each_line =~ /^\s*$/) {
        #next;
            #}

            #if ($each_line =~ /^#/) {
            #next;
            #}
        print OUT_FILE $each_line;
    }

    close(OUT_FILE);
}


1;
