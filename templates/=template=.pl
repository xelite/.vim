#!/usr/bin/env perl
#
# %FFILE%
#

=head1

 description: %HERE%

=cut

use feature ':5.10';
use strict;
use Getopt::Long;

my $usage = <<EOQ;
Usage for $0:

  $0 [-help -verbose]

EOQ

my $help;
my $debug;
my $verbose = 1;


my $ok = GetOptions(
                    'debug:i'   => \$debug,
                    'verbose:i' => \$verbose,
                    'help'      => \$help,
                   );

if ($help || !$ok ) {
    print $usage;
    exit;

}

# %DATE% %GIT_AUTHOR_NAME% <%GIT_AUTHOR_EMAIL%>
# %USER%@%HOST%:%FULLPATH%
