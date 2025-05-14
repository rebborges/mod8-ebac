# language: pt

Funcionalidade: Login na plataforma EBAC-SHOP  
  Como cliente da EBAC-SHOP  
  Quero fazer login na plataforma  
  Para visualizar meus pedidos

  Cenário: Login com credenciais válidas  
    Dado que o cliente possui um cadastro válido  
    Quando insere um e-mail válido e senha correta  
    Então o sistema deve redirecioná-lo para a tela de checkout

  Cenário: Login com credenciais inválidas  
    Dado que o cliente está na tela de login  
    Quando insere um e-mail ou senha inválidos  
    Então o sistema deve exibir a mensagem de alerta "Usuário ou senha inválidos"
