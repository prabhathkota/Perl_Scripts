use strict;
use warnings;
use warnings;
use Data::Dumper;

my $dir = 'C:\Users\521051\Desktop\Phub\Perl_Requirement\glob';

#Method 1
my (@FILE) = glob('C:\Users\521051\Desktop\Phub\Perl_Requirement\glob\Log*');
print "\n" . Dumper(\@FILES);


#Method2 (read directory and get the file name)
opendir(DIR, 'C:\Users\521051\Desktop\Phub\Perl_Requirement\glob') or die "Cannot open directory: $!";
my @files = readdir(DIR);
closedir(DIR);
my @log_files;

foreach my $each_file (@files) {
	if ($each_file =~ /Log.*$/) {
		push(@log_files, $each_file);
	} 
}

print "\n" . Dumper(\@files);
print "\n" . Dumper(\@log_files);

my $infile = $log_files[0];

print "\n Result File : " . $infile;
print "\n Result File With Full path : " . $dir . '\\' . $infile;