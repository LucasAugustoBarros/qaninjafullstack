#language: pt

Funcionalidade: Cadastro de Usuários
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

    # BDD (Behavior Driven Development)
    # Desenvolvimento guiado por Comportamento

    Cenário: Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email             | lucas.barros@gmail.com |
            | senha             | asd1234                |
            | confirmacao_senha | asd1234                |
        Então devo ser redirecionado para a área logada

    # cenário OutLine
    Esquema do Cenário: Tentativa de cadastro

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email             | <email>             |
            | senha             | <senha>             |
            | confirmacao_senha | <confirmacao_senha> |
        Então eu vejo a mensagem "<mensagem_saida>"

        Exemplos:
            | email                  | senha   | confirmacao_senha | mensagem_saida                       |
            |                        | asd1234 | asd1234           | Oops! Informe seu email.             |
            | lucas.barros@gmail.com |         |                   | Oops! Informe sua senha.             |
            | lucas.barros@gmail.com | 123123  | 1231234           | Oops! Senhas não são iguais.         |
            |                        |         |                   | Oops! Informe seu email e sua senha. |
    
    @temp
    Cenário: Validação de email
        Quando acesso a página de cadastro
        Então deve exibir o seguinte css "input[type=email]"