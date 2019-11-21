require 'test_helper'

class HistoricoTest < ActiveSupport::TestCase
  test 'must create history with description' do
    processo = Processo.new cliente: 'nome do cliente', num_processo: '123123123'
    processo.save
    historico = Historico.new descricao: 'Descricao da movimentacao', processo_id: processo.id
    assert historico.save
  end

  test 'should not create history without description' do
    historico = Historico.new processo_id: '1'
    assert_not historico.save
  end

  test 'should not create history with description less than 5' do
    historico = Historico.new descricao: 'Des', processo_id: '1'
    assert_not historico.save
  end
end
