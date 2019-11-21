require 'test_helper'

class AdvogadoTest < ActiveSupport::TestCase
  test 'should create advogado with nome, email and n_OAB' do
    advogado = Advogado.new nome: 'Marcos', n_OAB: '123456'
    assert advogado.save
  end

  test 'should update advogado with nome, and n_OAB' do
    advogado = Advogado.new nome: 'Marcos Vinicius', n_OAB: '122345'
    assert advogado.save
  end

  test 'should not create advogado without nome and n_OAB' do
    advogado = Advogado.new
    assert_not advogado.save
  end
end