#!/usr/intel/bin/perl

use strict;
use warnings;
use Data::Dumper;

my %file_content;
%file_content = read_file_content("/tmp/kotaprax/file.txt");

print "\n\n File Dump : " . Dumper(\%file_content);

sub read_file_content {

    my $input_file = shift;
    
    print "\n Reading Waive File : " . $input_file;

    unless (-f "$input_file") {
        print "\n Not a File : " . $input_file;
    }

    open(IN_FILE, "<$input_file")
                 || die "Cant open file for reading: " . "$input_file";
    my @file_content = <IN_FILE>;
    close(IN_FILE);

    my %file_content_after_remove_comments;

    #remove Comment lines
    foreach my $each_line (@file_content) {
        chomp $each_line;

        if ($each_line =~ /^$/) {
            next;
        }

        if ($each_line =~ /^\s*$/) {
            next;
        }

        if ($each_line =~ /^#/) {
            next;
        }

        $file_content_after_remove_comments{$each_line} = 1;
    }

    print "\n Total No. of Lines after removing empty and comment lines : " . scalar(keys %file_content_after_remove_comments);

    return %file_content_after_remove_comments;
}

1;
