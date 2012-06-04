#!/usr/bin/perl
# My attempt to fix the problem with cd4count in the system
# Note that this is highly experimental, and will require 
# Human confirmation once it spits out the results
#
#
# This can later be re written in any language I know, just
# right now an online perl interpreter is all I have
#
#
# There are two known ways to measure CD4 counts in  
# One is percent of white blood cells, the other is absolute  
#
#
# Note that the special case here can be that if the data is 
# 0 - then it can be considered that for both. However, for the intent
# and purposes of it right now, I will count 0 as an absolute rather than a
# percentage

sub infer_cd4_measurement_type{
    my @list_of_measurement_types = qw|Percent Absolute Range|;
    my $input_array = @_[0];
    my $length = @_[1];
    # Test to make sure there is no fence post
    # PASSED
    for($i=0;$i<=$length;$i++){
	#print $input_array->[$i]."\n";
    }
}

sub classify_inferred_types{
    
}

sub convert_inferred_types{
    
}

# Takes in the array of values and then determines them by type.
sub main{
    # Note that eventually this could be from an imported file
    my @cd4_count_array = (
	'123',
	'432',
	'435',
	'0.34',
	'0.023',
	'214',
	'UNKNOWN',
	'N/A',
	'1334',
	'0.32',
	'.123',
	'441',
	'432',
	'0.0123',
	'0.05',
	'12',
	'0.654',
	'123',
	'0.213',
	'0',
	'0',
	'<300',
	'<200',
	'<240',
	'>600',
	);
    # Pass in the pointer to the array (Keep extensibility)
    &infer_cd4_measurement_type(\@cd4_count_array,$#cd4_count_array);
}

# Run the main method
&main;