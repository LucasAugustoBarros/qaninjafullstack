#language: pt

Funcionalidade: Login
    Sendo um usuário previamente cadastrado
    Quero acessar o sistema com meu email e senha
    Para que eu possa ter acesso as playlist do Parodify

    Cenário: Login do Usuário
        Dado que acesso a pagina de login
        Quando submento minhas credenciais "lucas.barros@gmail.com" e "123123"
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de cadastro
        Dado que acesso a pagina de login
        Quando submento minhas credenciais "<email>" e "<senha>"
        Então devo ver a mensagem: "<mensagem_saida>"

        Exemplos:
            | email                  | senha   | mensagem_saida                    |
            | lucas.barros@gmail.com | 1231234 | Opps! Dados de acesso incorretos! |
            |                        |         | Opps! Dados de acesso incorretos! |
            | lucas.barros@gmail.com |         | Opps! Dados de acesso incorretos! |
            |                        | 1231234 | Opps! Dados de acesso incorretos! |