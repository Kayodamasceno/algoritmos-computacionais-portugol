# Testes e validações — NP1 (Algoritmos Computacionais)

Este arquivo é um **roteiro de testes a executar**, não uma declaração de que todos os cenários foram comprovados. O documento PDF original foi entregue no AVA anteriormente e não deve ser modificado.

## Casos já documentados no relatório original
- Cadastro de estudante com matrícula 1001, notas 8 e 7, frequência 90%.
- Rejeição de nota 11 e aceitação posterior do valor 5.
- Listagem de estudantes cadastrados.
- Boletim de matrícula 1001: média 7,5, aprovado.
- Relatório geral com três estudantes.

## Testes complementares solicitados pelo professor (a comprovar)

| Cenário | Procedimento sugerido | Resultado esperado |
|---|---|---|
| Matrícula duplicada | Cadastrar matrícula já existente | Rejeitar repetição sem sobrescrever cadastro |
| Frequência inválida | Informar -1 e 101 | Solicitar valor entre 0 e 100 novamente |
| Pesquisa inexistente | Buscar matrícula não cadastrada | Mensagem de não encontrado |
| Turma vazia | Abrir boletim e relatório antes de cadastrar | Mensagens apropriadas, sem divisão por zero |
| Capacidade máxima | Cadastrar até 15 estudantes e tentar o 16º | Bloqueio pelo limite do sistema |
| Média 4,0 | Notas 4 e 4 com frequência 75% | Recuperação |
| Média 7,0 | Notas 7 e 7 com frequência 75% | Aprovado |
| Frequência 74% | Notas 10 e 10 com frequência 74% | Reprovado por frequência |
| Frequência 75% | Notas 7 e 7 com frequência 75% | Aprovado |
| Opção inválida | Digitar opção fora de 0 a 6 | Mensagem de erro e retorno ao menu |

Para cada teste, anotar entrada, saída efetivamente observada e, se possível, inserir um print real do Portugol Studio. Não registrar como aprovado sem execução.
