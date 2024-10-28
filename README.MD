# DNA Dynamics

DNA Dynamics é um projeto em Perl que lê sequências de DNA de um arquivo CSV, realiza diversas operações e armazena os resultados em um arquivo JSON. As operações incluem conversão para RNA, contagem de bases e cálculo da porcentagem de bases GC.

## Funcionalidades

- Lê sequências de DNA de um arquivo CSV.
- Converte a sequência de DNA para RNA, substituindo a base T por U.
- Conta a ocorrência de cada base (A, T, G, C) na sequência de DNA.
- Calcula a porcentagem de bases GC (Guanina e Citosina).
- Ignora cabeçalhos e linhas em branco no arquivo CSV.
- Gera um arquivo JSON com as informações processadas de cada sequência de DNA.

## Requisitos

- Perl 5.0 ou superior
- Módulo `JSON` para Perl (`cpan JSON` para instalar, caso não tenha)
- Arquivo CSV com sequências de DNA no formato correto

## Instalação

1. Clone este repositório:
   ```bash
   git clone https://github.com/LucasMe110/DNA-Dynamics
   cd DNA-Dynamics

2. Certifique-se de ter o arquivo `DNA.csv` na mesma pasta que o script `main.pl.`

3. Instale o módulo JSON (caso ainda não tenha):
```r 
cpan JSON
```

## Uso
Execute o script Perl:
```r 
perl main.pl
```
Após a execução, o script exibirá as informações no terminal e criará um arquivo DNA_output.json com as informações no formato JSON.


## Exemplo de saída
A execução do script produzirá uma saída semelhante a esta:
```r 
Sequência de DNA: ATCGATCG
Sequência de RNA: AUCGAUCG
A: 2, T: 2, G: 2, C: 2
Percentual GC: 50%
----------
```
## Exemplo de arquivo JSON gerado
Após a execução, o conteúdo do arquivo `DNA_output.json` será semelhante a:
```r 
[
    {
        "dna_sequence": "ATCGATCG",
        "rna_sequence": "AUCGAUCG",
        "counts": {
            "A": 2,
            "T": 2,
            "G": 2,
            "C": 2
        },
        "gc_percentage": 50
    }
]
```
## Contribuições
Contribuições são bem-vindas! Sinta-se à vontade para enviar pull requests ou abrir issues para melhorias ou bugs.