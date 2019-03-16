#language:pt 
Funcionalidade: Login
  Eu como usuario desejo realizar login no site

  @login_invalido 
  Cenario: Realizar login no site com dados invalidos
    Dado que estou no site "https://www.mercadolivre.com.br"
    E clico no botao ".option-login"
    E preencho o campo "#user_id" com "teste@gmail.com"
    E clico no botao ".ui-button.ui-button--primary.auth-button.auth-button--user"
    E preencho o campo "#password" com "senha"
    Quando clico no botao "#action-complete"
    Entao deve ser exibida a mensagem "Revise a sua senha."

  @login_valido
  Cenario: Realizar login no site com dados validos
    Dado que estou no site "https://www.mercadolivre.com.br"
    E clico no botao ".option-login"
    E preencho o campo "#user_id" com "ana.akisawa1@gmail.com"
    E clico no botao ".ui-button.ui-button--primary.auth-button.auth-button--user"
    E preencho o campo "#password" com "1357911"
    Quando clico no botao "#action-complete"
    Entao eu consigo visualizar ".nav-header-avatar-user"
    E deve ser exibida a mensagem "TESTE"
