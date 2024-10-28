#!/usr/bin/perl

use strict;
use warnings;
use JSON; # Importa o módulo JSON para manipulação de arquivos JSON

# Nome do arquivo CSV a ser lido e do JSON a ser criado
my $arquivo_csv = 'DNA.csv';
my $arquivo_json = 'DNA_output.json';

# Abrir o arquivo CSV
open(my $fh, '<', $arquivo_csv) or die "Não foi possível abrir o arquivo '$arquivo_csv' $!";

# Array para armazenar as informações de cada sequência de DNA
my @dados_dna;

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

    # Armazena as informações da sequência em um hash
    my %sequencia_info = (
        dna_sequence => $dna,
        rna_sequence => $rna,
        counts       => {
            A => $a_count,
            T => $t_count,
            G => $g_count,
            C => $c_count,
        },
        gc_percentage => $pc_gc,
    );

    # Adiciona o hash ao array de dados
    push @dados_dna, \%sequencia_info;
}

# Fecha o arquivo após a leitura
close($fh);

# Converter os dados para JSON e salvar no arquivo
open(my $json_fh, '>', $arquivo_json) or die "Não foi possível criar o arquivo JSON '$arquivo_json' $!";
print $json_fh encode_json(\@dados_dna);
close($json_fh);

print "As informações foram salvas no arquivo JSON '$arquivo_json'.\n";
