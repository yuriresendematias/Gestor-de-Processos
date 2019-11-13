And ('Eu clico no link New Advogado') do
  click_link 'New Advogado'
end

And ('Eu preencho o campo nome com {string}') do |nome|
  fill_in 'Nome', :with => nome
end

And ('O campo N oab com {string}') do |n_OAB|
  fill_in 'N oab', :with => n_OAB
end

And ('Eu clico no botao Create Advogado') do
  click_button 'Create Advogado'
end

Then ('Eu vejo que o advodago {string} foi criado com sucesso') do |nome|
  expect(page).to have_content(nome)
end

Then ('Eu vejo uma tela de erro indicando que o nome e n_OAB estao invalidos') do
  assert_selector('div#error_explanation')
end

And ('Existe um advogado com o nome {string}') do |nome|
  a = Advogado.new(:nome => nome, :email => 'marcos@hotmail.com', :n_OAB =>'111111')
  a.save!
end

And ('Eu acesso o advogado com o nome {string}') do |nome|
  visit '/advogados'
  expect(page).to have_content(nome)
end

When ('Eu clico no link Edit com o advogado de nome Marcos') do
  click_link "Edit"
end

And ('Eu clico no botao Update Advogado') do
  click_button 'Update Advogado'
end

Then ('Eu vejo {string} e o Advogado foi editado com sucesso') do |sucesso|
  expect(page).to have_content(sucesso)
end

When ('Eu clico no link Show com o advogado de nome Marcos') do
  click_link "Show"
end

Then ('Eu acesso a pagina do advogado {string} e vejo os detalhes de seu cadastro') do |nome|
  expect(page).to have_content("Advogado - #{nome}")
end

When ('Eu clico no link Destroy com o advogado de nome Marcos') do
  click_link "Destroy"
end

Then ('Eu vejo {string} e o Advogado foi removido com sucesso') do |sucesso|
  expect(page).to have_content(sucesso)
end