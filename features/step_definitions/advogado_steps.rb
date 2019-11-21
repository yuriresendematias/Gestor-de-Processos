And ('Eu clico no link New Advogado') do
  click_link 'New Advogado'
end

And ('Eu preencho o campo nome com {string}') do |nome|
  fill_in 'Nome', :with => nome
end

And ('O campo N oab com {string}') do |n_OAB|
  fill_in 'N oab', :with => n_OAB
end

Then ('Eu vejo que o advodago {string} foi criado com sucesso') do |nome|
  expect(page).to have_content(nome)
end

Then ('Eu vejo uma tela de erro indicando que o nome e n_OAB estao invalidos') do
  assert_selector('div#error_explanation')
end

And ('Existe um advogado com o nome {string}') do |nome|
  a = Advogado.new(:nome => nome, :n_OAB =>'111111')
  a.save!
end

And ('Eu estou na pagina de advogados') do
  visit '/advogados'
end

And ('Eu vejo o advogado com o nome {string}') do |nome|
  expect(page).to have_content(nome)
end

When ('Eu clico no link Edit do advogado de nome {string}') do |nome|
  click_link "e-#{nome}"
end

And ('Eu clico em confirmar') do
  click_button 'submit'
end

Then ('Eu vejo que o Advogado foi editado com sucesso') do
  expect(page).to have_content('Advogado was successfully updated.')
end

When ('Eu clico no em exibir detalhes do advogado com o nome {string}') do |nome|
  click_link "s-#{nome}"
end

Then ('Eu vejo os detalhes do cadastro do advogado de nome {string}') do |nome|
  expect(page).to have_content("Advogado - #{nome}")
end

When ('Eu clico no link Destroy com o advogado de nome {string}') do |nome|
  click_link "d-#{nome}"
end

Then ('Eu vejo uma mensagem que indica que o advogado foi removido com sucesso') do
  expect(page).to have_content('Advogado was successfully destroyed.')
end