Dado("que acesso a pagina de login") do
  visit "http://parodify.qaninja.com.br/"
  find("div.column.menu-button > a").click
end

Quando("submento minhas credenciais {string} e {string}") do |email, senha|
  find("input#user_email").set email
  find("input#user_password").set senha
  find("input[type=submit]").click
end

Então('devo ver a mensagem: {string}') do |expect_message|
    
    alert = find("form#new_user article > div");
    expect(alert.text).to eql expect_message;
end