#!/usr/bin/env perl
use 5.014;

use LWP::Simple;

my $NRPE = "http://liquidtelecom.dl.sourceforge.net/project/nagios/nrpe-2.x/nrpe-2.15/nrpe-2.15.tar.gz";
my $PLUGIN = "http://www.nagios-plugins.org/download/nagios-plugins-2.1.1.tar.gz";
my $DIR = "/usr/local/src";

chdir "/usr/local/src";

sub downlod {
	my ($link) = @_;
	my $file = $link =~ s!\A.*/!!r;
	getstore($link, $file);
}
