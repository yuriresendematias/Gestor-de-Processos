require 'test_helper'

class ProcessoTest < ActiveSupport::TestCase
  test 'must create processo with num_processo and cliente' do
    processo = Processo.new num_processo: '12345', cliente: 'cliente'
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
