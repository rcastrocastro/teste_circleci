#language: pt

Funcionalidade: Login
  Todos queremos a área logada

  Cenário: Entrar na área logada
    Dado que acesso a página login
    Quando faço login com "stark" e "jarvis!"
    Então devo ver o resultado 
    """
    Olá, Tony Stark. Você acessou a área logada!
    """

  Cenário: Senha Inválida
    Dado que acesso a página login
    Quando faço login com "stark" e "ultron123"
    Então devo ver o resultado
    """
    Senha é invalida!
    """
