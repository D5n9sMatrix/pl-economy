use strict;
use warnings FATAL => 'all';

use Getopt::Long;
use Pod::Usage;
use Data::Dumper;
use File::Basename;
use Cwd;
use FindBin;
use lib "$FindBin::Bin/../lib";

my $help = 0;
my $man = 0;
GetOptions(
    'Help/h'  => \$help,
    'Man/man' => \$man,
) or pod2usage(2);
pod2usage(1) if defined $help;
pod2usage(-exists()) if defined $man;

my $working_dir = getcwd();
print "Working directory: $working_dir\n";

1;

__END__

=head1 API

=head2 getcwd

=head2 chdir

=head2 chdir($dir)

=head2 getcwd

=head2 chdir($dir)

=over 1

=item $dir

=encoding UTF-8

=item $working_dir



=back

=cut

