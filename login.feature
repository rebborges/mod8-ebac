#language: pt

Funcionalidade: Configuração de produto no EBAC-SHOP
  Como cliente da EBAC-SHOP
  Quero configurar meu produto com cor, tamanho e quantidade
  Para depois inserir no carrinho

  Cenário: Validação de campos obrigatórios
    Quando eu não seleciono a cor, tamanho ou quantidade
    E tento adicionar ao carrinho
    Então deve ser exibida uma mensagem de erro solicitando as seleções obrigatórias

  Cenário: Limite máximo de produtos por venda
    Quando eu seleciono uma quantidade superior a 10 unidades
    Então deve ser exibida uma mensagem informando que o limite máximo é de 10 produtos por venda

  Cenário: Limpar configurações
    Quando eu clicar no botão "limpar"
    Então todas as seleções devem retornar ao estado original (não selecionado)


Funcionalidade: Login na plataforma EBAC-SHOP
  Como cliente da EBAC-SHOP
  Quero fazer o login na plataforma
  Para visualizar meus pedidos

  Cenário: Login com credenciais válidas
    Quando eu insiro um e-mail válido e senha correta
    Então devo ser redirecionado para a tela de checkout

  Cenário: Login com credenciais inválidas
    Quando eu insiro um e-mail ou senha inválidos
    Então deve ser exibida a mensagem de alerta "Usuário ou senha inválidos"



Funcionalidade: Cadastro no checkout
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra


  Cenário: Cadastro com campos obrigatórios preenchidos
    Quando eu preencho todos os campos obrigatórios corretamente
    Então meu cadastro deve ser concluído com sucesso

  Cenário: Validação de e-mail inválido
    Quando eu preencho o campo de e-mail com um formato inválido
    Então o sistema deve exibir uma mensagem de erro informando e-mail inválido

  Esquema do Cenário: Cadastro com campos vazios ou inválidos
    Quando eu tento cadastrar com os seguintes dados:
      | nome     | sobrenome | e-mail              | telefone  |
      |          | Silva     | jose@email.com      | 119999999 |
      | Ana      |           | ana@email.com       |           |
      | João     | Souza     | joaoemail.com       | 119999999 |
    Então deve ser exibida uma mensagem de alerta para os campos não preenchidos ou inválidos
