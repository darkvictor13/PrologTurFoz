# Prolog Tur Foz

Aplicação para linha de comando escrita em prolog com a finalidade de auxiliar usuários de transporte público em Foz do Iguaçu, a usar o transporte público da cidade.

## Instruções para execução

### Pré-requisitos:

- Aplicação de linha de comando `swipl (swi-prolog)`

### Execução:

A execução da aplicação é feita executando os seguintes comandos:

```bash
swipl main.pl [arquivo de entrada]
```

[Arquivo de entrada] é um arquivo prolog contendo o mapa da linha do transporte público e a distância entre duas estações

### Exemplo de execução:

```bash
swipl main.pl input/input1.pl
```

### Obtendo menor caminho:

```prolog
menor_caminho(X).
```

Tendo em vista que X é uma lista de estações que compõem o menor caminho entre a origem e o destino.
