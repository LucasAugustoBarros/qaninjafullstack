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
        |email|lucas.barros@gmail.com|
        |senha|asd1234|
        |confirmacao_senha|asd1234|
    Então devo ser redirecionado para a área logada

Cenário: Email não informado
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com:
        |email||
        |senha|asd1234|
        |confirmacao_senha|asd1234|
    Então eu vejo a mensagem "Oops! Informe seu email."


Cenário: Senha não informada
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com:
        |email|lucas.barros@gmail.com|
        |senha||
        |confirmacao_senha||
    Então eu vejo a mensagem "Oops! Informe sua senha."

Cenário: Senha divergente
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com:
        |email|lucas.barros@gmail.com|
        |senha|asd1234|
        |confirmacao_senha|asd12345|
    Então eu vejo a mensagem "Oops! Senhas não são iguais."

Cenário: Nenhum campo preenchido
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com:
        |email||
        |senha||
        |confirmacao_senha||
    Então eu vejo a mensagem "Oops! Informe seu email e sua senha."
