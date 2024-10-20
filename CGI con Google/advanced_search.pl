#!/usr/bin/perl
use strict;
use warnings;
use CGI;

my $q = CGI->new;
print $q->header(-type => 'text/html', -charset => 'UTF-8');

my $as_q = $q->param('as_q');
my $as_epq = $q->param('as_epq');
my $as_eq = $q->param('as_eq');

# Construcción de la URL para Google
my $query = "https://www.google.com/search?as_q=$as_q&as_epq=$as_epq&as_eq=$as_eq";
print "<html><body>";
print "<script>window.location.href='$query';</script>";
print "</body></html>";
