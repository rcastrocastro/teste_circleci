Dado("que acesso a página login") do
  visit "/login"
end

Quando("faço login com {string} e {string}") do |user, pass|
  within("#login") do
    fill_in "username", with: user
    fill_in "password", with: pass
    click_on "Login"
  end
end

Então("devo ver o resultado") do |mensagem_esperada|
  expect(page).to have_text mensagem_esperada
end
