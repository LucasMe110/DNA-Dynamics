# DNA Dynamics

DNA Dynamics é um projeto em Perl que lê sequências de DNA de um arquivo CSV e realiza diversas operações, incluindo conversão para RNA, contagem de bases e cálculo da porcentagem de bases GC.

## Funcionalidades

- Lê sequências de DNA de um arquivo CSV.
- Converte a sequência de DNA para RNA, substituindo a base T por U.
- Conta a ocorrência de cada base (A, T, G, C) na sequência de DNA.
- Calcula a porcentagem de bases GC (Guanina e Citosina).
- Ignora cabeçalhos e linhas em branco no arquivo CSV.

## Requisitos

- Perl 5.0 ou superior
- Arquivo CSV com sequências de DNA no formato correto

## Instalação

1. Clone este repositório:
   ```bash
   git clone https://github.com/LucasMe110/DNA-Dynamics
   cd DNA-Dynamics

2. Certifique-se de ter o arquivo `DNA.csv` na mesma pasta que o script `main.pl.`

## Uso
Execute o script Perl:
```r 
- perl main.pl
```

## Exemplo de saída
A execução do script produzirá uma saída semelhante a esta:
```r 
Sequência de DNA: ATCGATCG
Sequência de RNA: AUCGAUCG
A: 2, T: 2, G: 2, C: 2
Percentual GC: 50%
----------
```
## Contribuições
Contribuições são bem-vindas! Sinta-se à vontade para enviar pull requests ou abrir issues para melhorias ou bugs.

## Licença
Este projeto está licenciado sob a MIT License - veja o arquivo LICENSE para mais detalhes.
```r 
Este projeto está licenciado sob a MIT License - veja o arquivo LICENSE para mais detalhes.
```