#!/usr/bin/perl

use strict;
use warnings;

# Nome do arquivo CSV a ser lido
my $arquivo_csv = 'DNA.csv';

# Abrir o arquivo CSV
open(my $fh, '<', $arquivo_csv) or die "Não foi possível abrir o arquivo '$arquivo_csv' $!";

# Loop através das linhas do arquivo
while (my $linha = <$fh>) {
    chomp $linha;  # Remove o caractere de nova linha

    # Ignorar cabeçalhos ou linhas em branco (se houver cabeçalhos)
    next if $. == 1 || $linha =~ /^\s*$/;

    # Analisa a linha do CSV para obter a sequência de DNA
    my $dna = $linha;
    print "Sequência de DNA: $dna\n";

    # Conversão de DNA para RNA
    my $rna = $dna;
    $rna =~ tr/T/U/;
    print "Sequência de RNA: $rna\n";

    # Contagem das bases de DNA
    my $a_count = ($dna =~ tr/A/A/);
    my $t_count = ($dna =~ tr/T/T/);
    my $g_count = ($dna =~ tr/G/G/);
    my $c_count = ($dna =~ tr/C/C/);
    print "A: $a_count, T: $t_count, G: $g_count, C: $c_count\n";

    # Cálculo da porcentagem de GC
    my $pc_gc = ($g_count + $c_count) / length($dna) * 100;
    print "Percentual GC: $pc_gc%\n";

    print "----------\n";
}

# Fecha o arquivo após a leitura
close($fh);
