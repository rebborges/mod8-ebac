#language: pt

Funcionalidade: Configurar produto no EBAC-SHOP
  Como cliente da EBAC-SHOP
  Quero configurar meu produto com cor, tamanho e quantidade
  Para depois inserir no carrinho

  Cenário: Exibir mensagem de erro para campos obrigatórios não preenchidos
    Dado que o cliente acessa a página de um produto
    Quando não seleciona a cor, o tamanho ou a quantidade
    E clica no botão de adicionar ao carrinho
    Então o sistema deve exibir uma mensagem de erro solicitando as seleções obrigatórias

  Cenário: Informar limite máximo de produtos por venda
    Dado que o cliente seleciona uma quantidade superior a 10 unidades
    Quando tenta adicionar o produto ao carrinho
    Então o sistema deve exibir uma mensagem informando que o limite máximo é de 10 produtos por venda

  Cenário: Limpar configurações do produto
    Dado que o cliente tenha realizado seleções de cor, tamanho e quantidade
    Quando clica no botão "Limpar"
    Então o sistema deve redefinir todas as seleções para o estado original (não selecionado)

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

    Funcionalidade: Cadastro no checkout
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Cenário: Concluir cadastro com todos os campos obrigatórios preenchidos
    Dado que o cliente esteja na tela de checkout
    Quando preenche todos os campos obrigatórios corretamente
    Então o sistema deve concluir o cadastro com sucesso

  Cenário: Exibir erro para e-mail inválido
    Dado que o cliente esteja na tela de cadastro
    Quando preenche o campo de e-mail com um formato inválido
    Então o sistema deve exibir uma mensagem de erro informando e-mail inválido

  Esquema do Cenário: Exibir alertas para campos obrigatórios não preenchidos ou inválidos
    Dado que o cliente está na tela de cadastro
    Quando tentar concluir o cadastro com os dados <nome>, <sobrenome>, <email> e <telefone>
    Então o sistema deve exibir uma mensagem de alerta para os campos não preenchidos ou inválidos

    Exemplos:
      | nome  | sobrenome | email             | telefone  |
      |       | Silva     | jose@email.com    | 119999999 |
      | Ana   |           | ana@email.com     |           |
      | João  | Souza     | joaoemail.com     | 119999999 |


