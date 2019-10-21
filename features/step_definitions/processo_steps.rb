Given ('eu estou logado no sistema') do
  u = User.new(:name => 'nome do usuario', :email => 'usuario@email.com', :password => '123456', :password_confirmation => '123456')
  u.save!
  visit '/users/sign_in'
  expect(page).to have_content('Log in')
  fill_in 'Email' , :with => 'usuario@email.com'
  fill_in 'Password', :with => '123456'
  click_button 'Log in'
  expect(page).to have_content('Signed in successfully')
end

And ('eu estou na pagina de processos') do
  visit '/processos'
  expect(page).to have_content('Processos')
end

When ('eu eu escolho a opcao de adicionar processo') do
  click_link 'New Processo'
  expect(page).to have_content('New Processo')
end

And ('eu preencho o campo de cliente com {string}') do |nome|
  fill_in 'Cliente', :with => nome
end

And ('eu preencho o campo de Ex adversa com {string}') do |texto|
  fill_in 'Ex adversa', :with => texto
end

And ('eu preencho o campo de Natureza com {string}') do |texto|
  fill_in 'Natureza', :with => texto
end

And ('eu preencho o campo de Assunto com {string}') do |texto|
  fill_in 'Assunto', :with => texto
end

And ('eu preencho o campo de Tipo acao com {string}') do |texto|
  fill_in 'Tipo acao', :with => texto
end

And ('eu preencho o campo de Juizo com {string}') do |texto|
  fill_in 'Juizo', :with => texto
end

And ('eu preencho o campo de numero com {string}') do |num|
  fill_in 'Num processo', :with => num
end

And ('eu preencho o campo de Ultima movimentacao com {string}') do |texto|
  fill_in 'Ultima movimentacao', :with => texto
end

And ('eu preencho o campo de Ultimo contato cliente com a data {string}') do |data|

end

And ('eu preencho o campo de Contato agendado com a data {string}') do |data|

end

And ('eu preencho o campo de Adv principal com {string}') do |nome|
  fill_in 'Adv principal', :with => nome
end

And ('eu preencho o campo de Adv assistente com {string}') do |nome|
  fill_in 'Adv assistente', :with => nome
end

And ('eu clico em adicionar processo') do

end

Then ('eu vejo que o processo com o numero {string} foi criado corretamente') do |num|
  expect(page).to have_content(num)
end