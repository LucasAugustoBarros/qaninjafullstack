Dado('que acesso a página de cadastro') do
    visit "http://parodify.qaninja.com.br/"
    find("div > div > a").click;
  end
  
Quando('submeto o meu cadastro com:') do |table|
  user = table.rows_hash
  removeUser user[:email];
  find("input[name='user[email]']").set user[:email];
  find("input#user_password").set user[:senha];
  find("input#user_password_confirmation").set user[:confirmacao_senha];
  click_on "Cadastrar";
end
  
Então('devo ser redirecionado para a área logada') do
  expect(page).to have_css '.dashboard';
end

Então('eu vejo a mensagem {string}') do |expect_message|
  alert = find("form#new_user p");
  expect(alert.text).to eql expect_message
end