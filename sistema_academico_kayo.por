programa
{
    // Vetores com tamanho 30, conforme solicitado no enunciado.
    // O sistema limita o cadastro a 15 estudantes, conforme os requisitos funcionais.
    inteiro matriculas[30]
    cadeia nomes[30]
    real notas1[30]
    real notas2[30]
    real frequencias[30]
    inteiro total_estudantes = 0

    funcao inteiro exibir_menu()
    {
        inteiro opcao

        escreva("\n==============================================\n")
        escreva("     SISTEMA DE CONTROLE ACADEMICO\n")
        escreva("==============================================\n")
        escreva("1 - Cadastrar estudante\n")
        escreva("2 - Listar estudantes\n")
        escreva("3 - Pesquisar estudante por matricula\n")
        escreva("4 - Atualizar notas e frequencia\n")
        escreva("5 - Emitir boletim individual\n")
        escreva("6 - Gerar relatorio da turma\n")
        escreva("0 - Sair\n")
        escreva("Escolha uma opcao: ")
        leia(opcao)

        retorne opcao
    }

    funcao inteiro pesquisar_matricula(inteiro matricula_procurada)
    {
        para (inteiro i = 0; i < total_estudantes; i++)
        {
            se (matriculas[i] == matricula_procurada)
            {
                retorne i
            }
        }

        retorne -1
    }

    funcao real ler_nota(cadeia mensagem)
    {
        real nota

        faca
        {
            escreva(mensagem)
            leia(nota)

            se (nota < 0 ou nota > 10)
            {
                escreva("Valor invalido. A nota deve estar entre 0 e 10.\n")
            }
        } enquanto (nota < 0 ou nota > 10)

        retorne nota
    }

    funcao real ler_frequencia()
    {
        real frequencia

        faca
        {
            escreva("Frequencia (0 a 100): ")
            leia(frequencia)

            se (frequencia < 0 ou frequencia > 100)
            {
                escreva("Valor invalido. A frequencia deve estar entre 0 e 100.\n")
            }
        } enquanto (frequencia < 0 ou frequencia > 100)

        retorne frequencia
    }

    funcao real calcular_media(inteiro indice)
    {
        retorne (notas1[indice] + notas2[indice]) / 2.0
    }

    funcao cadeia determinar_situacao(inteiro indice)
    {
        real media = calcular_media(indice)

        se (frequencias[indice] < 75)
        {
            retorne "Reprovado por frequencia"
        }
        senao se (media >= 7)
        {
            retorne "Aprovado"
        }
        senao se (media >= 4)
        {
            retorne "Recuperacao"
        }
        senao
        {
            retorne "Reprovado por nota"
        }
    }

    funcao cadastrar()
    {
        se (total_estudantes >= 15)
        {
            escreva("\nCapacidade maxima de 15 estudantes atingida.\n")
        }
        senao
        {
            inteiro nova_matricula
            inteiro posicao_existente

            faca
            {
                escreva("\nMatricula numerica: ")
                leia(nova_matricula)
                posicao_existente = pesquisar_matricula(nova_matricula)

                se (posicao_existente != -1)
                {
                    escreva("Matricula ja cadastrada. Digite outra matricula.\n")
                }
            } enquanto (posicao_existente != -1)

            matriculas[total_estudantes] = nova_matricula

            escreva("Nome do estudante: ")
            leia(nomes[total_estudantes])

            notas1[total_estudantes] = ler_nota("Nota 1 (0 a 10): ")
            notas2[total_estudantes] = ler_nota("Nota 2 (0 a 10): ")
            frequencias[total_estudantes] = ler_frequencia()

            total_estudantes++

            escreva("Estudante cadastrado com sucesso.\n")
        }
    }

    funcao listar()
    {
        se (total_estudantes == 0)
        {
            escreva("\nNenhum estudante cadastrado.\n")
        }
        senao
        {
            escreva("\n=============== LISTA DE ESTUDANTES ===============\n")

            para (inteiro i = 0; i < total_estudantes; i++)
            {
                escreva("Matricula: ", matriculas[i], " | Nome: ", nomes[i], "\n")
            }
        }
    }

    funcao pesquisar()
    {
        inteiro matricula_procurada
        inteiro indice

        escreva("\nDigite a matricula que deseja pesquisar: ")
        leia(matricula_procurada)

        indice = pesquisar_matricula(matricula_procurada)

        se (indice == -1)
        {
            escreva("Estudante nao encontrado.\n")
        }
        senao
        {
            escreva("\nEstudante encontrado:\n")
            escreva("Matricula: ", matriculas[indice], "\n")
            escreva("Nome: ", nomes[indice], "\n")
            escreva("Nota 1: ", notas1[indice], "\n")
            escreva("Nota 2: ", notas2[indice], "\n")
            escreva("Frequencia: ", frequencias[indice], "%\n")
        }
    }

    funcao atualizar()
    {
        inteiro matricula_procurada
        inteiro indice

        escreva("\nDigite a matricula do estudante que deseja atualizar: ")
        leia(matricula_procurada)

        indice = pesquisar_matricula(matricula_procurada)

        se (indice == -1)
        {
            escreva("Estudante nao encontrado.\n")
        }
        senao
        {
            escreva("Atualizando dados de ", nomes[indice], ".\n")
            notas1[indice] = ler_nota("Nova nota 1 (0 a 10): ")
            notas2[indice] = ler_nota("Nova nota 2 (0 a 10): ")
            frequencias[indice] = ler_frequencia()

            escreva("Notas e frequencia atualizadas com sucesso.\n")
        }
    }

    funcao emitir_boletim()
    {
        se (total_estudantes == 0)
        {
            escreva("\nNao ha estudantes cadastrados para emitir boletim.\n")
        }
        senao
        {
            inteiro matricula_procurada
            inteiro indice
            real media
            cadeia situacao

            escreva("\nDigite a matricula do estudante: ")
            leia(matricula_procurada)

            indice = pesquisar_matricula(matricula_procurada)

            se (indice == -1)
            {
                escreva("Estudante nao encontrado.\n")
            }
            senao
            {
                media = calcular_media(indice)
                situacao = determinar_situacao(indice)

                escreva("\n================ BOLETIM INDIVIDUAL ================\n")
                escreva("Matricula: ", matriculas[indice], "\n")
                escreva("Nome: ", nomes[indice], "\n")
                escreva("Nota 1: ", notas1[indice], "\n")
                escreva("Nota 2: ", notas2[indice], "\n")
                escreva("Frequencia: ", frequencias[indice], "%\n")
                escreva("Media: ", media, "\n")
                escreva("Situacao: ", situacao, "\n")
            }
        }
    }

    funcao gerar_relatorio()
    {
        se (total_estudantes == 0)
        {
            escreva("\nO relatorio nao pode ser calculado porque nao ha estudantes cadastrados.\n")
        }
        senao
        {
            real soma_medias = 0.0
            real media_turma
            inteiro aprovados = 0
            inteiro recuperacao = 0
            inteiro reprovados_nota = 0
            inteiro reprovados_frequencia = 0

            para (inteiro i = 0; i < total_estudantes; i++)
            {
                real media_atual = calcular_media(i)
                cadeia situacao_atual = determinar_situacao(i)

                soma_medias = soma_medias + media_atual

                se (situacao_atual == "Aprovado")
                {
                    aprovados++
                }
                senao se (situacao_atual == "Recuperacao")
                {
                    recuperacao++
                }
                senao se (situacao_atual == "Reprovado por nota")
                {
                    reprovados_nota++
                }
                senao
                {
                    reprovados_frequencia++
                }
            }

            media_turma = soma_medias / total_estudantes

            escreva("\n================ RELATORIO DA TURMA ================\n")
            escreva("Total de estudantes: ", total_estudantes, "\n")
            escreva("Media das medias da turma: ", media_turma, "\n")
            escreva("Aprovados: ", aprovados, "\n")
            escreva("Em recuperacao: ", recuperacao, "\n")
            escreva("Reprovados por nota: ", reprovados_nota, "\n")
            escreva("Reprovados por frequencia: ", reprovados_frequencia, "\n")
        }
    }

    funcao inicio()
    {
        inteiro opcao

        faca
        {
            opcao = exibir_menu()

            escolha (opcao)
            {
                caso 1:
                    cadastrar()
                    pare

                caso 2:
                    listar()
                    pare

                caso 3:
                    pesquisar()
                    pare

                caso 4:
                    atualizar()
                    pare

                caso 5:
                    emitir_boletim()
                    pare

                caso 6:
                    gerar_relatorio()
                    pare

                caso 0:
                    escreva("\nPrograma encerrado.\n")
                    pare

                caso contrario:
                    escreva("\nOpcao invalida. Escolha uma opcao entre 0 e 6.\n")
                    pare
            }
        } enquanto (opcao != 0)
    }
}