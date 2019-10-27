class Processo < ApplicationRecord
  has_many :advogado_processos
  has_many :advogados, through: :advogado_processos

  def self.search (query)
    where("num_processo like ?", "%#{query}%")
  end
end
