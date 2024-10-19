#!/usr/bin/perl
##Ejercicio1
use strict;
use warnings;
use utf-8;
print "Ingrese su usuario: ";
my $usuario = <STDIN>;
chomp($usuario);
print "Ingrese su dominio: ";
my $dominio = <STDIN>;
chomp($dominio);
print "\n$usuario\@$dominio"
