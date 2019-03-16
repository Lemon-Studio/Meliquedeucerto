
Dado("que estou no site {string}") do |site|
  visit site 
end

Quando("clico no botao {string}") do |botao|
  find(botao).click
end

Dado("preencho o campo {string} com {string}") do |campo, valor|
  find(campo).set(valor)
end

Entao("deve ser exibida a mensagem {string}") do |mensagem|
  assert_text mensagem
end

Entao("eu consigo visualizar {string}") do |icon|
  find(icon)
    puts 'icone encontrado'
end

Dado("clico no primeiro {string}") do |elemento|
  first(elemento).click  
end

Dado("estou logado") do
  Login.new.login_valido    
end

Dado("eu preencho o primeiro input com {string}") do |value|
  first("input").set(value)
end