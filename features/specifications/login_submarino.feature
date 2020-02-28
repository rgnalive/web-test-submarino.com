# language: pt

@login
Funcionalidade: Login Submarino

@success
Cenário: Logar com sucesso
    Dado que eu esteja na página de login
    Quando eu digito "<incluir email valido>" no campo de E-mail
    E eu digito "<incluir senha valida>" no campo de Senha no Submarino
    E clico em Continuar
    Então devo ser direcionado para a home page
    E o nome do meu usuário "<incluir nome valido>" deve aparecer no header

@error
Cenário: Falha ao tentar logar com usuário inexistente
    Dado que eu esteja na página de login
    Quando eu digito "<incluir email invalido>" no campo de E-mail
    E eu digito "<incluir email valido>" no campo de Senha no Submarino
    E clico em Continuar
    Então devo visualizar a mensagem "E-mail ou senha incorretos"