#language:pt 
Funcionalidade: Carrinho
  Eu como usuario desejo adicionar um produto ao carrinho

  Contexto: Estar na pagina do mercado livre
  Dado que estou no site "https://www.mercadolivre.com.br"

  @produto_home 
  Cenario: Inserir produto da home no carrinho 
    E clico no primeiro ".ui-item__image" 
    E clico no botao "input[value='Adicionar ao carrinho']"
    E clico no botao "#login-link"
    E preencho o campo "#user_id" com "ana.akisawa1@gmail.com"
    E clico no botao ".ui-button.ui-button--primary.auth-button.auth-button--user"
    E preencho o campo "#password" com "1357911"
    Quando clico no botao "#action-complete"
    Entao deve ser exibida a mensagem "Você adicionou ao seu carrinho"

   @carrinho_logado
  Cenario: Inserir produto da home no carrinho 
    E estou logado
    E clico no primeiro ".ui-item__image" 
    E clico no botao "input[value='Adicionar ao carrinho']"
    Entao deve ser exibida a mensagem "Você adicionou ao seu carrinho"