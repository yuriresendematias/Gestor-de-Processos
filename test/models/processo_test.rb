require 'test_helper'

class ProcessoTest < ActiveSupport::TestCase
  test 'must create processo with num_processo, cliente and advogado' do
    u = User.new email: "yuri@gmail.com", password: "123123"
    u.save
    advogado = Advogado.new nome: 'yuri', n_OAB: '123456'
    advogado.user = u
    advogado.save
    processo = Processo.new num_processo: '12345', cliente: 'cliente'
    processo.advogado = advogado
    assert processo.save
  end

  test 'should not create processo without numm_processo' do
    processo = Processo.new cliente: 'cliente'
    assert_not processo.save
  end

  test 'should not create processo without cliente' do
    processo = Processo.new num_processo: '12345'
    assert_not processo.save
  end
end
