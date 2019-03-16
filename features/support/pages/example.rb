class Login
  include Capybara::DSL

    def login_valido
        find(".option-login").click
        find("#user_id").set("ana.akisawa1@gmail.com")
        find(".ui-button.ui-button--primary.auth-button.auth-button--user").click
        find("#password").set("1357911")
        find("#action-complete").click
        find(".nav-header-avatar-user")
    end




















































end