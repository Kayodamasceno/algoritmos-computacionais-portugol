# Sistema de Controle Acadêmico — Portugol

**Disciplina:** Algoritmos Computacionais — Engenharia de Software / UniAteneu  
**Aluno:** Kayo Cézar Machado Lourenço Souza Damasceno  
**Atividade:** NP1 — Atividade prática subjetiva

## Sobre o projeto

Programa de console escrito em **Portugol** para organizar os dados de uma turma durante a execução. É uma atividade acadêmica de algoritmos, com uso de vetores, funções, estruturas condicionais, repetição e `escolha/caso`. Não utiliza banco de dados nem grava arquivos permanentemente.

## Funcionalidades

1. Cadastro de até 15 estudantes, com matrícula única, nome, duas notas e frequência.
2. Listagem e pesquisa por matrícula.
3. Atualização de notas e frequência sem alterar matrícula ou nome.
4. Boletim com média e situação acadêmica.
5. Relatório da turma com média geral e quantidade de estudantes por situação.
6. Validação de notas (0 a 10), frequência (0 a 100) e opções de menu.

Os dados ficam em **vetores de 30 posições**, mas o programa limita os cadastros a **15**, conforme os requisitos funcionais no enunciado.

## Como executar

1. Abra o **Portugol Studio** (ou o ambiente Portugol compatível utilizado na disciplina).
2. Abra o arquivo [`sistema_academico_kayo.por`](sistema_academico_kayo.por).
3. Execute o programa.
4. Use as opções do menu de **0 a 6**. Os dados são descartados ao encerrar.

## Regras de classificação usadas no exercício

- Frequência inferior a 75%: **Reprovado por frequência**, independentemente da média.
- Frequência a partir de 75% e média maior ou igual a 7,0: **Aprovado**.
- Frequência a partir de 75% e média maior ou igual a 4,0 e inferior a 7,0: **Recuperação**.
- Frequência a partir de 75% e média inferior a 4,0: **Reprovado por nota**.

Essas são regras fictícias definidas na atividade, não normas acadêmicas gerais.

## Documentação

- [Código-fonte original (.por)](sistema_academico_kayo.por)
- [Relatório da NP1 (PDF)](Relatorio_NP1_Algoritmos_Kayo_FINAL.pdf) — relatório já entregue anteriormente no AVA; arquivo a ser adicionado sem alterações.
- [Roteiro de testes complementares](TESTES_E_VALIDACOES.md) — cenários adicionais solicitados no enunciado, ainda a comprovar no Portugol Studio.

## Status da validação

A análise estática do código confirma a presença das principais rotinas e verificações. O relatório original documenta exemplos de cadastro, rejeição de nota fora da faixa, listagem, boletim e relatório da turma. **Ainda falta anexar evidências específicas dos demais cenários de teste descritos no roteiro complementar.**
