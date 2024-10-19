#!/usr/bin/perl
use strict;
use warnings;
use utf-8;
# Pedir al usuario que ingrese las notas una por una
my @notas;
my $nota;
print "Ingrese las notas (-1 para terminar): \n";
do {
    $nota = <STDIN>;
    chomp($nota);
    $nota += 0;  # Convertir a número
    push @notas, $nota; # Agregar la nota a la lista si no es -1
} 
while ($nota != -1);
# Para salir del bucle tiene que ser -1, eliminamos ese -1
pop(@notas);
@notas = sort {$a <=> $b} @notas;
print "Ingreso las siguientes notas: ";
imprimitNotas(@notas); 
my $promedio = calcularPromedio(@notas);
print "El promedio es: $promedio\n";

sub calcularPromedio {
    my @notas = @_;
    my $notaMin = $notas[0]; #toma el primer elemento (menor) 
    my $notaMax = $notas[@notas-1]; #toma el ultimo elemento (mayor)
    shift(@notas);
    print "La menor nota a reemplazar es $notaMin\n";
    # Duplicamos la mayor nota
    push(@notas, $notaMax);
    print "La mayor nota que reemplzará a la menor es: $notaMax\nSus notas serán: ";
    imprimitNotas(@notas);
    # Calcular el promedio
    my $suma = 0;
    foreach my $nota (@notas){
        $suma += $nota;
    }
    my $promedio = ($suma * 1.0) / @notas;
    return $promedio;
}
sub imprimitNotas{
    my @notas = @_;
    foreach my $nota (@notas) {
    print "$nota ";
    }
    print "\n";
}