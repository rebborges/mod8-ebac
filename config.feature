# language: pt

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
