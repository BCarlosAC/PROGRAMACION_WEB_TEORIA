#!/usr/bin/perl
use strict;
use warnings;
use CGI;

my $q = CGI->new;
print $q->header(-type => 'text/html', -charset => 'UTF-8');

my $query = $q->param('query');
print "<html><body>";
print "<script>window.location.href='https://www.google.com/search?q=$query';</script>";
print "</body></html>";
