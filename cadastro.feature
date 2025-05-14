

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
      | nome  | sobrenome | email           | telefone  |
      | maria | Silva     | jose@email.com  | 119999999 |
      | Ana   | santos    | ana@email.com   | 119999999 |
      | João  | Souza     | joaoemail.com   | 119999999 |
